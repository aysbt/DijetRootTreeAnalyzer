#!/usr/bin/env python

from ROOT import TFile, TCanvas, TColor, gStyle, TLegend, TLatex, TH1F, TTree, TH2F
from math import sqrt
from array import array

gStyle.SetOptStat(0)
gStyle.SetLabelSize(0.06,"xy")
gStyle.SetTitleSize(0.06,"xy")
gStyle.SetTitleOffset(1.2,"xy")
gStyle.SetTitleOffset(1.2,"xy")
gStyle.SetPadTopMargin(0.1)
gStyle.SetPadRightMargin(0.1)
gStyle.SetPadBottomMargin(0.16)
gStyle.SetPadLeftMargin(0.12)

file1 = TFile("QQ_M2000.root")
file2 = TFile("QG_M2000.root")
file3 = TFile("GG_M2000.root")
canvas = TCanvas("c1","c1", 800, 800)
canvas.SetTickx()
canvas.SetTicky()

h1 = file1.Get("Method_BDT/BDT2/MVA_BDT2_rejBvsS")
h2 = file2.Get("Method_BDT/BDT2/MVA_BDT2_rejBvsS")
h3 = file3.Get("Method_BDT/BDT2/MVA_BDT2_rejBvsS")

h1.SetTitle('')
h1.GetYaxis().SetTitle('Background rejection')
h1.GetXaxis().SetTitle('Signal efficiency')
    
h1.SetLineColor(97)
h1.SetLineWidth(2)
h1.SetFillStyle(0)
h1.SetFillColor(2)
h1.SetLineStyle(9)

h2.SetLineColor(65)
h2.SetLineWidth(2)
h2.SetFillStyle(0)
h2.SetLineStyle(4)

h3.SetLineColor(71)
h3.SetLineWidth(2)
h3.SetFillStyle(0)
#h2.SetFillColor(TColor.kAzure-2)

l = TLegend(0.2, 0.25, 0.4, 0.45)
l.SetTextSize(0.04)
l.SetTextFont(42)
l.SetFillColor(10)
l.SetLineColor(10)
l.SetBorderSize(0)
l.AddEntry(h1,"Quark-Quark","l")
l.AddEntry(h2,"Quark-Gluon","l")
l.AddEntry(h3,"Gluon-Gluon","l")

h1.Draw("L")
h3.Draw("L Same")
h2.Draw("L Same")
l.Draw("same")

canvas.RedrawAxis()
canvas.Print("BvsS_M2000.png")

file1.Close()
file2.Close()
file3.Close()


