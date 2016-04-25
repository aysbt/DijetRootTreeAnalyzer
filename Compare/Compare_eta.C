#include "tdrstyle.C"
#include "CMS_lumi.C"
#include "TH1.h"
#include "TH1F.h"


void Compare_eta(){
setTDRStyle();

TString dir = ""; 
TFile *f1   = TFile::Open(dir+
                        TString("../output_nocut/plots_data4T_Run2015D_Silverjson_2445pb-1_JEC_Summer15_25nsV6_withSF_nocut/leading_QGLikelihood.root "),"READ");

TH1F *D_eta  = (TH1F*)  f1->Get("h_dat");
TH1F *M_eta  = (TH1F*)  f1->Get("hist_allCutsQCD");
D_eta ->Rebin(3);
M_eta ->Rebin(3);
//eta#################eta#################eta#################eta#################eta#################eta##############eta#################eta######eta#################eta######eta#################eta######eta#################eta######eta#################eta######eta#################eta######eta#################eta######eta#################eta###
TCanvas *c1  = new TCanvas ("c1","Data QCD Comparation" ,800,800);
M_eta->GetYaxis()->SetTitleOffset(1.35);
M_eta->GetYaxis()->SetLabelSize(0.04);
M_eta->GetXaxis()->SetTitle("q/g LD 1 st jet");
M_eta->GetYaxis()->SetTitle("Entries");
M_eta->SetLineColor(kRed);
M_eta->SetFillColor(kWhite);
M_eta  -> Draw("hist");
D_eta -> Draw("same");

TLegend *l1 = new TLegend(0.781407,0.84,0.959799,0.89);
 l1->SetTextSize(0.027); 
 l1->SetTextFont(42);
 l1->SetLineColor(1);
 l1->SetLineStyle(1);
 l1->SetLineWidth(1);
 l1->SetFillColor(0);
 l1->SetBorderSize(0);
 l1->AddEntry(D_eta, "Data","P");
 l1->AddEntry(M_eta,  "MC" ,"L");
 l1->Draw("sames");


TLatex eta1;eta1.SetNDC();
TLatex eta2;eta2.SetNDC();
TLatex eta3;eta3.SetNDC();
TLatex eta4;eta4.SetNDC();
TLatex eta5;eta5.SetNDC();
TLatex eta6;eta6.SetNDC();
eta1.SetTextSize(0.04);
eta1.DrawLatex(0.16,0.96,"#font[61]{CMS}");
eta2.SetTextSize(0.035);
eta2.DrawLatex(0.25,0.96,"#font[52]{Prelimanary}");
eta3.SetTextSize(0.03);
eta3.DrawLatex(0.79,0.96,"#font[42]{2.4 fb^{-1}(13TeV)}");
eta4.SetTextSize(0.03);
eta4.DrawLatex(0.21,0.86,"#font[42]{|#eta|<2.5}");
eta5.SetTextSize(0.03);
eta5.DrawLatex(0.21,0.82,"#font[42]{|#Delta#eta_{jj}|<1.3}");
eta6.SetTextSize(0.03);
eta6.DrawLatex(0.21,0.78,"#font[42]{M_{jj}>1.2 TeV}");
}
