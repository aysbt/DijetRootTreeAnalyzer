#!/bin/bash
outputdir="../output_analysis/plots_data4T_Run2015D_DCSonly_2445pb-1_JEC_Summer15_25nsV6_withSF_SMALL/"
#mc list
list_mc="list_for_plots_mc_Spring15_25ns_plusSig.txt"


#data list
list_data="list_for_plots_data4T_Run2015D_DCSonly_1769pb-1_flag_Cert_246908-258750_13TeV_PromptReco_Collisions15_25ns_JSON_JEC_Summer15_26nsV6.txt"

lumi=2445

mkdir -p $outputdir
python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 
python DrawFromTree_data.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 50 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
python DrawFromTree_data.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 50 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
