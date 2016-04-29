#!/bin/bash

outputdir="../output_nocut/plots_data4T_Run2015D_Silverjson_2445pb-1_JEC_Summer15_25nsV6_withSF_nocut/"
#mc list
list_mc="list_Qcd_nocut.txt"
#data list
list_data="list_Data_nocut.txt"
lumi=2445

mkdir -p $outputdir
python DrawFromTree_data_nocut.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627
python DrawFromTree_data_nocut.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood (j1) " --bins 50 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood (j2)" --bins 50 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var qgaxis2_wide_j1 --xmin 0 --xmax 0.2 --xtitle "Q/G wide axis2 (j1)" --bins -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var qgaxis2_wide_j2 --xmin 0 --xmax 0.2 --xtitle "Q/G wide axis2 (j2)" --bins -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var qgptD_wide_j1 --xmin 0 --xmax 1 --xtitle "Q/G wide ptD (j1)" --bins -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var qgptD_wide_j2 --xmin 0 --xmax 1 --xtitle "Q/G wide ptD (j2)" --bins -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var qgmult_wide_j1 --xmin 0 --xmax 150 --xtitle "Q/G wide mult (j1)" --bins -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var qgmult_wide_j2 --xmin 0 --xmax 150 --xtitle "Q/G wide mult (j2)" --bins -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var pTWJ_j1 --xmin 30 --xmax 5000 --xtitle "pT(j1) [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
python DrawFromTree_data_nocut.py --var pTWJ_j2 --xmin 30 --xmax 5000 --xtitle "pT(j2) [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
python DrawFromTree_data_nocut.py --var etaWJ_j1 --xmin -3 --xmax 3 --xtitle "#eta(j1)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
python DrawFromTree_data_nocut.py --var etaWJ_j2 --xmin -3 --xmax 3 --xtitle "#eta(j2)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
python DrawFromTree_data_nocut.py --var deltaETAjj --xmin 0 --xmax 1.3 --xtitle "#Delta#eta(jj)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy #--plotSig
#python DrawFromTree_data_nocut.py --var deltaETAjj --xmin 0 --xmax 2.6 --xtitle "#Delta#eta(jj)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi #--plotSig
python DrawFromTree_data_nocut.py --var deltaPHIjj --xmin 0 --xmax 3.14 --xtitle "|#Delta#phi(jj)|" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
#python DrawFromTree_data_nocut.py --var deltaPHIjj --xmin 0 --xmax 3.14 --xtitle "|#Delta#phi(jj)|" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var  phiWJ_j1  --xmin -3.1415 --xmax 3.1415  --xtitle "#phi (j1)" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
python DrawFromTree_data_nocut.py --var  phiWJ_j2  --xmin -3.1415 --xmax 3.1415  --xtitle "#phi (j2)" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
#python DrawFromTree_data_nocut.py --var  massWJ_j1  --xmin 0 --xmax 1000  --xtitle "#m (j1) [GeV]" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy  --units GeV
#python DrawFromTree_data_nocut.py --var  massWJ_j2  --xmin 0 --xmax 1000  --xtitle "#m (j2) [GeV]" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy  --units GeV
#python DrawFromTree_data_nocut.py --var CosThetaStarWJ --xmin -1 --xmax 1  --xtitle "cos #theta *" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi --logy  --units GeV
#python DrawFromTree_data_nocut.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi  --units GeV
python DrawFromTree_data_nocut.py --var  Nak4 --xmin 0 --xmax 15  --xtitle "N jets" --bins 15  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
python DrawFromTree_data_nocut.py --var pTAK4_j1 --xmin 30 --xmax 6000 --xtitle "p_{T}(j1) AK4 [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
python DrawFromTree_data_nocut.py --var pTAK4_j2 --xmin 30 --xmax 6000 --xtitle "p_{T}(j2) AK4 [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
python DrawFromTree_data_nocut.py --var etaAK4_j1 --xmin -3 --xmax 3 --xtitle "#eta(j1) AK4" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
python DrawFromTree_data_nocut.py --var etaAK4_j2 --xmin -3 --xmax 3 --xtitle "#eta(j2) AK4" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi
#python DrawFromTree_data_nocut.py --var jetPtAK4matchCaloJet_j1  --xmin 30 --xmax 5000 --xtitle "pT(j1) calo match [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
#python DrawFromTree_data_nocut.py --var jetPtAK4matchCaloJet_j2  --xmin 30 --xmax 5000 --xtitle "pT(j2)calo match [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
python DrawFromTree_data_nocut.py --var MET  --xmin 0 --xmax 1000 --xtitle "MET [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
python DrawFromTree_data_nocut.py --var metSig  --xmin 0 --xmax 1 --xtitle "MET / #Sigma E_{T}" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy 
python DrawFromTree_data_nocut.py --var nVtx --xmin 0 --xmax 50 --xtitle "nvtx" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
#---- jet id ------
python DrawFromTree_data_nocut.py --var chargedHadEnFrac_j1 --xmin 0 --xmax 1 --xtitle "Charged hadron En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var neutrHadEnFrac_j1 --xmin 0 --xmax 1 --xtitle "Neutral hadron En.fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var photonEnFrac_j1  --xmin 0 --xmax 1 --xtitle "Photon En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var eleEnFract_j1 --xmin 0 --xmax 1 --xtitle "Electron En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
python DrawFromTree_data_nocut.py --var muEnFract_j1 --xmin 0 --xmax 1 --xtitle "Muon En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var neutrElectromFrac_j1  --xmin 0 --xmax 1 --xtitle "neutr. EM En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var  chargedElectromFrac_j1  --xmin 0 --xmax 1 --xtitle "ch. EM En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var chargedMult_j1 --xmin 0 --xmax 50 --xtitle "charged mult. j1" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy       
python DrawFromTree_data_nocut.py --var neutrMult_j1  --xmin 0 --xmax 50 --xtitle "neutral mult. j1" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
python DrawFromTree_data_nocut.py --var photonMult_j1 --xmin 0 --xmax 50 --xtitle "photon mult. j1" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
python DrawFromTree_data_nocut.py --var chargedHadEnFrac_j2 --xmin 0 --xmax 1 --xtitle "Charged hadron En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var neutrHadEnFrac_j2 --xmin 0 --xmax 1 --xtitle "Neutral hadron En.fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var photonEnFrac_j2  --xmin 0 --xmax 1 --xtitle "Photon En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var eleEnFract_j2 --xmin 0 --xmax 1 --xtitle "Electron En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
python DrawFromTree_data_nocut.py --var muEnFract_j2 --xmin 0 --xmax 1 --xtitle "Muon En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var neutrElectromFrac_j2  --xmin 0 --xmax 1 --xtitle "neutr. EM En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var  chargedElectromFrac_j2  --xmin 0 --xmax 1 --xtitle "ch. EM En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
python DrawFromTree_data_nocut.py --var chargedMult_j2 --xmin 0 --xmax 50 --xtitle "charged mult. j2" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy       
python DrawFromTree_data_nocut.py --var neutrMult_j2  --xmin 0 --xmax 50 --xtitle "neutral mult. j2" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
python DrawFromTree_data_nocut.py --var photonMult_j2 --xmin 0 --xmax 50 --xtitle "photon mult. j2" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
