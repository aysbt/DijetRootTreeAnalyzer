#!/bin/bash

outputdir="../output_BS/plots_data4T_Run2015D_Silverjson_2445pb-1_JEC_Summer15_25nsV6_withSF_golden_256630_258158_fromtree_BS_05/"
#mc list
#list_mc="list_QCD_Big_05.txt"
list_mc="list_Qcd_nocut.txt"
#data List
list_data="list_Data_nocut.txt"
lumi=2445

mkdir -p $outputdir

python DrawFromTree_data_bs_or.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.5
