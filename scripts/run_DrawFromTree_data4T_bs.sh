#!/bin/bash

outputdir="../output_BS/plots_data4T_Run2015D_Silverjson_2445pb-1_JEC_Summer15_25nsV6_withSF_golden_256630_258158_fromtree_BS_kFactor_1/"
#mc list
#list_mc="list_QCD_Big_05.txt"
list_mc="list_Qcd_nocut.txt"
#data List
list_data="list_Data_nocut.txt"
lumi=2445

mkdir -p $outputdir

python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.1
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.2
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.3
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.4
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.5
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.6
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.7
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.8
python DrawFromTree_data_bs_deneme.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.9

python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.1
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.2
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.3
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.4
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.5
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.6
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.7
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.8
python DrawFromTree_data_bs_deneme.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.9
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.1
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.2
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.3
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.4
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.5
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.6
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.7
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.8
python DrawFromTree_data_bs_deneme.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.9
