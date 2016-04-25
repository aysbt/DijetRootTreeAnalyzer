#!/usr/bin/env python 

#**********************************************************************************
#* Project   : TMVA - a Root-integrated toolkit for multivariate data analysis    *
#* Package   : TMVA                                                               *
#* Exectuable: PlotDecisionBoundary                                               *
#*                                                                                *
#* Plots decision boundary for simple cases in 2 (3?) dimensions                  *
#**********************************************************************************

from ROOT import TFile, TCanvas, TColor, gStyle, TLegend, TLatex, TH1F, TTree, TH2F, TH2D, TMVA, TMath
from math import sqrt
from array import array
import re, array

# plot style
gStyle.SetOptStat(0)
gStyle.SetLabelSize(0.06,"xy")
gStyle.SetTitleSize(0.06,"xy")
gStyle.SetTitleOffset(1.2,"x")
gStyle.SetTitleOffset(1.0,"y")
gStyle.SetPadTopMargin(0.1)
gStyle.SetPadRightMargin(0.1)
gStyle.SetPadBottomMargin(0.16)
gStyle.SetPadLeftMargin(0.12)

# plotting
def plot(sig, bkg, MVA, v0, v1, mvaCut, leglabel, plotFileName):
   c = TCanvas("DecisionBoundary", "DecisionBoundary",800,800)
   c.SetTickx()
   c.SetTicky()
   c.cd()
   print  "MVACut = ", mvaCut 
   gStyle.SetPalette(1)
   MVA.SetXTitle(v0)
   MVA.SetYTitle(v1)
   MVA.SetStats(0)
   contours = array.array('d', [mvaCut, ])
   MVA.SetLineWidth(7)
   MVA.SetLineStyle(1)
   MVA.SetMarkerColor(1)
   MVA.SetLineColor(1)
   sig.SetMarkerStyle(7)
   sig.SetMarkerColor(TColor.kAzure)
   sig.SetMarkerSize(1)
   bkg.SetMarkerStyle(7)
   bkg.SetMarkerColor(TColor.kRed)
   bkg.SetMarkerSize(1)
   bkg.Draw()
   sig.Draw("same")
   MVA.SetContour(1, contours)
   MVA.SetLineStyle(2)
   MVA.SetLineWidth(5)
   MVA.SetLineColor(TColor.kGray+3)
   MVA.Draw("CONT2 same")
   l2 = TLegend(0.2, 0.2, 0.45, 0.3)
   l2.SetTextSize(0.04)
   l2.SetTextFont(42)
   l2.SetFillColor(10)
   l2.SetLineColor(10)
   l2.SetBorderSize(0)
   l2.AddEntry(MVA,leglabel,"l")
   l2.Draw("same")
   c.Update()
   l2.Draw("same")
   c.Print(plotFileName)
   return c
   
def PlotDecisionBoundary( mvaCut, weightFile, v0, v1, dataFileName, plotFileName, leglabel):
   # default MVA methods to be trained + tested

   # this loads the library
   TMVA.Tools.Instance()
   print "\n\n ==> Start TMVAClassificationApplication\n"
   #
   # create the Reader object
   #
   reader = TMVA.Reader( "!Color:!Silent" )
   var0 = array.array('f',[0]) ; reader.AddVariable(v0,var0)
   var1 = array.array('f',[0]) ; reader.AddVariable(v1,var1)

   #
   # book the MVA method
   #
   reader.BookMVA( "MyMVAMethod", weightFile ); 
   f1 = TFile("/uscms_data/d3/abat/Analyzer/CMSSW_7_4_4/src/CMSDIJET/DijetRootTreeAnalyzer/Signal/QQ/M2000/histo_signal_bkg_QG1stJet_fromTree.root")
   f2 = TFile("/uscms_data/d3/abat/Analyzer/CMSSW_7_4_4/src/CMSDIJET/DijetRootTreeAnalyzer/Signal/GG/M2000/histo_signal_bkg_QG1stJet_fromTree.root")   
   signal     = f.Get("hist_allCutsQCD");
   background = f.Get("hist_allCutsQCD");
   
  # f = TFile(dataFileName);
  # signal     = f.Get("TreeS");
  # background = f.Get("TreeB");

   #Declaration of leaves types
   svar0 = float();  svar1 = float();  bvar0 = float();  bvar1 = float();  sWeight=1.0;  bWeight=1.0*signal.GetEntries()/background.GetEntries() # just in case you have weight defined, also set these branchaddresses

   # Set branch addresses.
   svar0 = array.array('f',[0]);  signal.SetBranchAddress(v0, svar0);
   svar1 = array.array('f',[0]);  signal.SetBranchAddress(v1, svar1);
   bvar0 = array.array('f',[0]);  background.SetBranchAddress(v0, bvar0);
   bvar1 = array.array('f',[0]);  background.SetBranchAddress(v1, bvar1);

   # define histograms
   nbin = 50;
   xmin=-1.45;   xmax=1.45;   ymin=-1.45;  ymax=1.45
   hs= TH2D("hs","",nbin,xmin,xmax,nbin,ymin,ymax);   
   hb= TH2D("hb","",nbin,xmin,xmax,nbin,ymin,ymax);   
   hs.SetXTitle(v0);
   hs.SetYTitle(v1);
   hb.SetXTitle(v0);
   hb.SetYTitle(v1);
   hs.SetMarkerColor(4);
   hb.SetMarkerColor(2);
   hist = TH2F( "MVA",    "MVA",    nbin,xmin,xmax,nbin,ymin,ymax);

   # Prepare input tree (this must be replaced by your data source)
   # in this example, there is a toy tree with signal and one with background events
   # we'll later on use only the "signal" events for the test in this example.
   MinMVA=10000.; MaxMVA=-100000
   for ibin in range(1,nbin+1):
      for jbin in range(1,nbin+1):
         var0[0] = hs.GetXaxis().GetBinCenter(ibin)
         var1[0] = hs.GetYaxis().GetBinCenter(jbin)
         mvaVal=reader.EvaluateMVA( "MyMVAMethod" ) 
         if MinMVA>mvaVal:
            MinMVA=mvaVal
         if MaxMVA<mvaVal:
            MaxMVA=mvaVal
         hist.SetBinContent(ibin,jbin, mvaVal)
      
         
   # now you need to try to find the MVA-value at which you cut for the plotting of the decision boundary
   # (Use the smallest number of misclassifications as criterion)
   nValBins=100
   sum = 0.
   mvaS= TH1F("mvaS","",nValBins,MinMVA,MaxMVA); mvaS.SetXTitle("MVA-ouput"); mvaS.SetYTitle("#entries")
   mvaB= TH1F("mvaB","",nValBins,MinMVA,MaxMVA); mvaB.SetXTitle("MVA-ouput"); mvaB.SetYTitle("#entries")
   mvaSC= TH1F("mvaSC","",nValBins,MinMVA,MaxMVA); mvaSC.SetXTitle("MVA-ouput"); mvaSC.SetYTitle("cummulation")
   mvaBC= TH1F("mvaBC","",nValBins,MinMVA,MaxMVA); mvaBC.SetXTitle("MVA-ouput"); mvaBC.SetYTitle("cummulation")

   nentries = signal.GetEntries()
   for numis in range(nentries):
      signal.GetEntry(numis)
      sum +=sWeight
      var0[0] = svar0[0]
      var1[0] = svar1[0]
      mvaVal=reader.EvaluateMVA( "MyMVAMethod" ) 
      hs.Fill(svar0[0],svar1[0])
      mvaS.Fill(mvaVal,sWeight)
   
   nentries = background.GetEntries()
   for ib in range(nentries):
      background.GetEntry(ib)
      sum +=bWeight
      var0[0] = bvar0[0]
      var1[0] = bvar1[0]
      mvaVal=reader.EvaluateMVA( "MyMVAMethod" ) 
      hb.Fill(bvar0[0],bvar1[0])
      mvaB.Fill(mvaVal,bWeight)

   sepGain = TMVA.MisClassificationError()
   #sepGain = TMVA.GiniIndex()
   #sepGain = TMVA.CrossEntropy()

   sTot = mvaS.GetSum()
   bTot = mvaB.GetSum()
   
   mvaSC.SetBinContent(1,mvaS.GetBinContent(1))
   mvaBC.SetBinContent(1,mvaB.GetBinContent(1))
   sSel=mvaSC.GetBinContent(1)
   bSel=mvaBC.GetBinContent(1)
   sSelBest=0
   bSelBest=0
   separationGain=sepGain.GetSeparationGain(sSel,bSel,sTot,bTot)

   mvaCutTmp=mvaSC.GetBinCenter(1)
   mvaCutOrientation=1 # 1 if mva > mvaCut -. Signal and -1 if mva < mvaCut (i.e. mva*-1 > mvaCut*-1) -. Signal
   for ibin in range(2,nValBins):
      mvaSC.SetBinContent(ibin,mvaS.GetBinContent(ibin)+mvaSC.GetBinContent(ibin-1))
      mvaBC.SetBinContent(ibin,mvaB.GetBinContent(ibin)+mvaBC.GetBinContent(ibin-1))
      
      sSel=mvaSC.GetBinContent(ibin)
      bSel=mvaBC.GetBinContent(ibin)
      
      if mvaCut<=-9999 :
         if separationGain < sepGain.GetSeparationGain(sSel,bSel,sTot,bTot): 
            separationGain = sepGain.GetSeparationGain(sSel,bSel,sTot,bTot)
            mvaCutTmp=mvaSC.GetBinCenter(ibin)
            if sSel/bSel > (sTot-sSel)/(bTot-bSel) :
               mvaCutOrientation=1
            else :
               mvaCutOrientation=-1;
            sSelBest=sSel;
            bSelBest=bSel;
      else :
         if abs(mvaSC.GetBinCenter(ibin) - mvaCut) <= 0.5*(mvaSC.GetBinWidth(ibin)):
            if sSel/bSel > (sTot-sSel)/(bTot-bSel):
               mvaCutOrientation=1
            else :
               mvaCutOrientation=-1
            sSelBest=sSel
            bSelBest=bSel            
         
      
   if (mvaCut<=-9999) :
      mvaCut = mvaCutTmp

   if (mvaCutOrientation==-1) :
      sSelBest=sTot-sSelBest
      bSelBest=bTot-bSelBest
   
   print  "Min=",MinMVA , " Max=" , MaxMVA 
   print  " sTot=" , sTot
   print  " bTot=" , bTot
   print  " sSel=" , sSelBest
   print  " bSel=" , bSelBest
   print  " sepGain=",separationGain
   print  " cut=" , mvaCut
   print  " cutOrientation=",mvaCutOrientation

   print "*******************************************************************************************************************"
   print " eff_sig=",sSelBest/sTot
   print " eff_bkg=",bSelBest/bTot
   print " s/sqrt(s+b) (Stot=Btot=1000) = " , sSelBest/sTot *1000 / sqrt( sSelBest/sTot *1000 + bSelBest/bTot *1000)
   print "*******************************************************************************************************************" 

   gStyle.SetPalette(TColor.kRed);
   c = plot(hs,hb,hist,v0,v1,mvaCut,leglabel, plotFileName)

if __name__ == "__main__":
   PlotDecisionBoundary(-10000, "weights/TMVAClassification_BDT.weights.xml", "var0", "var1", "data.root", "testboundaries.png", "NTrees=850")
   PlotDecisionBoundary(-10000, "weights/TMVAClassification_BDT2.weights.xml", "var0", "var1", "data.root", "testboundaries2.png", "NTrees=5")
   PlotDecisionBoundary(-10000, "weights/TMVAClassification_BDT3.weights.xml", "var0", "var1", "data.root", "testboundaries3.png", "NTrees=2500")
