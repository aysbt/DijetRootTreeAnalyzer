#!/bin/bash

outputdir="../output_Big/plots_data4T_Run2015D_Silverjson_2445pb-1_JEC_Summer15_25nsV6_withSF_golden_256630_258158_fromtree_BIG/"
#mc list
#list_mc="list_QCD_Big_05.txt"
list_mc="list_Qcd_nocut.txt"
#data List
list_data="list_Data_nocut.txt"
lumi=2445

mkdir -p $outputdir
python DrawFromTree_data_Big.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.1
