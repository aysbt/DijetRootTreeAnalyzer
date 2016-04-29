#!/bin/bash

outputdir="../deneme/Big_Small/"
#mc list
list_mc="list_Qcd_nocut.txt"
#data list
list_data="list_Data_nocut.txt"
lumi=2445

mkdir -p $outputdir
#python DrawFromTree_data_Big.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.5



python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.5
