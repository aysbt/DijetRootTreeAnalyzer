#!/bin/bash

outputdir="../output_nocut/plots_data4T_Run2015D_Silverjson_2445pb-1_JEC_Summer15_25nsV6_withSF_nocut/"
#mc list
list_mc="list_Qcd_nocut.txt"
#data list
list_data="list_Data_nocut.txt"
#list_data="list_bs.txt"
lumi=2445

mkdir -p $outputdir

python DrawFromTree_data_nocut.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627

#python DrawFromTree_data_nocut.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood (j1) " --bins 200 --rebin 1  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
#python DrawFromTree_data_nocut.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood (j2)" --bins 200 --rebin 1  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
