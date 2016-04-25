#!/usr/bin/env python

from ROOT import TFile, TCanvas, TColor, gStyle, TLegend, TLatex, TH1F, TTree, TH2F
from math import sqrt
from array import array
import CMS_lumi
lumi =2.4
CMS_lumi.lumi_13TeV = "13 TeV"
CMS_lumi.writeExtraText = 1
CMS_lumi.extraText = ""
CMS_lumi.lumi_sqrtS = "13 TeV"

iPos = 11
if( iPos==0 ): CMS_lumi.relPosX = 0.12
iPeriod = 4



gStyle.SetOptStat(0)
gStyle.SetLabelSize(0.06,"xy")
gStyle.SetTitleSize(0.06,"xy")
gStyle.SetTitleOffset(1.2,"xy")
gStyle.SetTitleOffset(1.2,"xy")
gStyle.SetPadTopMargin(0.1)
gStyle.SetPadRightMargin(0.1)
gStyle.SetPadBottomMargin(0.16)
gStyle.SetPadLeftMargin(0.12)

file1 = TFile("/uscms_data/d3/abat/Analyzer/CMSSW_7_4_4/src/CMSDIJET/DijetRootTreeAnalyzer/Signal/QQ/M2000/histo_signal_bkg_QG1stJet_fromTree.root")
file2 = TFile("/uscms_data/d3/abat/Analyzer/CMSSW_7_4_4/src/CMSDIJET/DijetRootTreeAnalyzer/Signal/GG/M2000/histo_signal_bkg_QG1stJet_fromTree.root")

canvas = TCanvas("c1","c1", 800, 800)
canvas.SetTickx()
canvas.SetTicky()

h2 = file1.Get("hist_allCutsQCD")
h1 = file2.Get("hist_allCutsQCD")
#h3 = file1.Get("Method_BDT/BDT3/MVA_BDT3_rejBvsS")

#h1.SetTitle('')
#h1.GetYaxis().SetTitle('Background rejection')
#h1.GetXaxis().SetTitle('Signal efficiency')
    
#h1.SetLineColor(2)
#h1.SetLineWidth(2)
#h1.SetFillStyle(0)
#h1.SetFillColor(3)

#h2.SetLineColor(4)
#h2.SetLineWidth(2)
#h2.SetFillStyle(0)
#h3.SetLineColor(TColor.kGreen)
#h3.SetLineWidth(2)
#h3.SetFillStyle(0)
#h2.SetFillColor(TColor.kAzure-2)

l = TLegend(0.2, 0.25, 0.4, 0.45)
l.SetTextSize(0.04)
l.SetTextFont(42)
l.SetFillColor(10)
l.SetLineColor(10)
l.SetBorderSize(0)
l.AddEntry(h1,"gluon-gluon","l")
l.AddEntry(h2,"quark-quark","l")
#l.AddEntry(h3,"2500 trees","l")

h1.Draw("HIST")
h2.Draw("HISTsame")
#h3.Draw("HISTsame")
l.Draw("same")
CMS_lumi.CMS_lumi(canvas,iPeriod, iPos)
canvas.RedrawAxis()
canvas.Print("ROC.png")

file1.Close()
