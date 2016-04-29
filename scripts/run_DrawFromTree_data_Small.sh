#!/bin/bash

outputdir="../Small/"
#mc list
#list_mc="list_QCD_Big_05.txt"
list_mc="list_Qcd_nocut.txt"
#data List
list_data="list_Data_nocut.txt"
lumi=2445

mkdir -p $outputdir

#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.1
#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.2
#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.3
#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.4
python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin -1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.5
#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.6
#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.7
#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.8
#python DrawFromTree_data_Small.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 260627 --qgcut 0.9
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.1
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.2
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.3
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.4
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.5
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.6
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.7
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.8
#python DrawFromTree_data_Small.py --var QG1stJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood first Jet " --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.9
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.1
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.2
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.3
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.4
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.5
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.6
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.7
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.8
#python DrawFromTree_data_Small.py --var QG2ndJet --xmin 0 --xmax 1 --xtitle "Q/G Likelihoood Secons Jet" --bins 200 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --qgcut 0.9




##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --runMin 258159

##python DrawFromTree_data.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi --logy --runMin 258159

##mass -- different periods
#Period 1 cert
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 257399 
##python DrawFromTree_data.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi --logy --golden  --runMin 256630 --runMax 257399 
#Period 2 cert
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 257400 --runMax 257682 
##python DrawFromTree_data.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi --logy --golden --runMin 257400 --runMax 257682 
#Period 3 cert
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 257722 --runMax 258158 
##python DrawFromTree_data.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi --logy --golden --runMin 257722 --runMax 258158 
#Period A cert
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 256630 --runMax 257613 
#Period B cert
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 257614 --runMax 257816  
#Period C cert
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --golden --runMin 257819 --runMax 258158  

#Period 1 DCS
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy  --runMin  256630 --runMax 257399  
#Period 2 DCS
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --runMin 257400 --runMax 257682 
#Period 3 DCS
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --runMin 257722 --runMax  258158 

#----- kinematics ----
##python DrawFromTree_data.py --var mjj --xmin 1200 --xmax 2500 --xtitle "mjj [GeV]" --bins 1300  --rebin 20 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var mjj --xmin 1200 --xmax 2500 --xtitle "mjj [GeV]" --bins 1300 --rebin 20 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --units GeV 
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var mjj --xmin 1 --xmax 14000 --xtitle "Dijet Mass [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi  --units GeV
##python DrawFromTree_data.py --var pTWJ_j1 --xmin 30 --xmax 5000 --xtitle "pT(j1) [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var pTWJ_j2 --xmin 30 --xmax 5000 --xtitle "pT(j2) [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var etaWJ_j1 --xmin -3 --xmax 3 --xtitle "#eta(j1)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
##python DrawFromTree_data.py --var etaWJ_j2 --xmin -3 --xmax 3 --xtitle "#eta(j2)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
##python DrawFromTree_data.py --var deltaETAjj --xmin 0 --xmax 1.3 --xtitle "#Delta#eta(jj)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy #--plotSig
##python DrawFromTree_data.py --var deltaETAjj --xmin 0 --xmax 2.6 --xtitle "#Delta#eta(jj)" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi #--plotSig
##python DrawFromTree_data.py --var deltaPHIjj --xmin 0 --xmax 3.14 --xtitle "|#Delta#phi(jj)|" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
##python DrawFromTree_data.py --var deltaPHIjj --xmin 0 --xmax 3.14 --xtitle "|#Delta#phi(jj)|" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var  phiWJ_j1  --xmin -3.1415 --xmax 3.1415  --xtitle "#phi (j1)" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
##python DrawFromTree_data.py --var  phiWJ_j2  --xmin -3.1415 --xmax 3.1415  --xtitle "#phi (j2)" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
##python DrawFromTree_data.py --var  massWJ_j1  --xmin 0 --xmax 1000  --xtitle "#m (j1) [GeV]" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy  --units GeV
##python DrawFromTree_data.py --var  massWJ_j2  --xmin 0 --xmax 1000  --xtitle "#m (j2) [GeV]" --bins 200 --rebin 5  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy  --units GeV
##python DrawFromTree_data.py --var CosThetaStarWJ --xmin -1 --xmax 1  --xtitle "cos #theta *" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi --logy  --units GeV
##python DrawFromTree_data.py --var Dijet_MassAK4 --xmin 1 --xmax 14000 --xtitle "Dijet Mass AK4 [GeV]" --bins 13999 --rebin 1 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi  --units GeV
##python DrawFromTree_data.py --var  Nak4 --xmin 0 --xmax 15  --xtitle "N jets" --bins 15  --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi 
##python DrawFromTree_data.py --var pTAK4_j1 --xmin 30 --xmax 6000 --xtitle "p_{T}(j1) AK4 [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var pTAK4_j2 --xmin 30 --xmax 6000 --xtitle "p_{T}(j2) AK4 [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var etaAK4_j1 --xmin -3 --xmax 3 --xtitle "#eta(j1) AK4" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi
##python DrawFromTree_data.py --var etaAK4_j2 --xmin -3 --xmax 3 --xtitle "#eta(j2) AK4" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc  --lumi $lumi
##python DrawFromTree_data.py --var jetPtAK4matchCaloJet_j1  --xmin 30 --xmax 5000 --xtitle "pT(j1) calo match [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var jetPtAK4matchCaloJet_j2  --xmin 30 --xmax 5000 --xtitle "pT(j2)calo match [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var MET  --xmin 0 --xmax 1000 --xtitle "MET [GeV]" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy --units GeV
##python DrawFromTree_data.py --var metSig  --xmin 0 --xmax 1 --xtitle "MET / #Sigma E_{T}" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy 
##python DrawFromTree_data.py --var nVtx --xmin 0 --xmax 50 --xtitle "nvtx" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
#---- jet id ------
##python DrawFromTree_data.py --var chargedHadEnFrac_j1 --xmin 0 --xmax 1 --xtitle "Charged hadron En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var neutrHadEnFrac_j1 --xmin 0 --xmax 1 --xtitle "Neutral hadron En.fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var photonEnFrac_j1  --xmin 0 --xmax 1 --xtitle "Photon En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var eleEnFract_j1 --xmin 0 --xmax 1 --xtitle "Electron En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
##python DrawFromTree_data.py --var muEnFract_j1 --xmin 0 --xmax 1 --xtitle "Muon En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var neutrElectromFrac_j1  --xmin 0 --xmax 1 --xtitle "neutr. EM En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var  chargedElectromFrac_j1  --xmin 0 --xmax 1 --xtitle "ch. EM En. fraction j1" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var chargedMult_j1 --xmin 0 --xmax 50 --xtitle "charged mult. j1" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy       
##python DrawFromTree_data.py --var neutrMult_j1  --xmin 0 --xmax 50 --xtitle "neutral mult. j1" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
##python DrawFromTree_data.py --var photonMult_j1 --xmin 0 --xmax 50 --xtitle "photon mult. j1" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
##python DrawFromTree_data.py --var chargedHadEnFrac_j2 --xmin 0 --xmax 1 --xtitle "Charged hadron En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var neutrHadEnFrac_j2 --xmin 0 --xmax 1 --xtitle "Neutral hadron En.fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var photonEnFrac_j2  --xmin 0 --xmax 1 --xtitle "Photon En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var eleEnFract_j2 --xmin 0 --xmax 1 --xtitle "Electron En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
##python DrawFromTree_data.py --var muEnFract_j2 --xmin 0 --xmax 1 --xtitle "Muon En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var neutrElectromFrac_j2  --xmin 0 --xmax 1 --xtitle "neutr. EM En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var  chargedElectromFrac_j2  --xmin 0 --xmax 1 --xtitle "ch. EM En. fraction j2" --bins 200 --rebin 5 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy
##python DrawFromTree_data.py --var chargedMult_j2 --xmin 0 --xmax 50 --xtitle "charged mult. j2" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy       
##python DrawFromTree_data.py --var neutrMult_j2  --xmin 0 --xmax 50 --xtitle "neutral mult. j2" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
##python DrawFromTree_data.py --var photonMult_j2 --xmin 0 --xmax 50 --xtitle "photon mult. j2" --bins 50 --outputDir $outputdir --inputList_data $list_data --inputList_mc $list_mc --lumi $lumi --logy        
