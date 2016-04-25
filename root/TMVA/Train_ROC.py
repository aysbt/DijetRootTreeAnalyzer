#!/usr/bin/env python

# 
# This example is basically the same as $ROOTSYS/tmva/test/TMVAClassification.C
# 

import ROOT 
# in order to start TMVA
ROOT.TMVA.Tools.Instance()

# note that it seems to be mandatory to have an
# output file, just passing None to TMVA::Factory(..)
# does not work. Make sure you don't overwrite an
# existing file.

# open input file, get trees, create output file
#f1 =ROOT.TFile("/uscms_data/d3/abat/Analyzer/CMSSW_7_4_4/src/CMSDIJET/DijetRootTreeAnalyzer/Signal/QQ/M2000/histo_signal_bkg_QG1stJet_fromTree.root")
#f2 =ROOT.TFile("/uscms_data/d3/abat/Analyzer/CMSSW_7_4_4/src/CMSDIJET/DijetRootTreeAnalyzer/Signal/GG/M2000/histo_signal_bkg_QG1stJet_fromTree.root")

f1 =ROOT.TFile("/eos/uscms/store/user/abat/root_file/signal/GG/nocut/RSG_GG_50ns_M3000_reduced_skim.root")
f2 =ROOT.TFile("/eos/uscms/store/user/abat/root_file/signal/QQ/nocut/RSG_QQ_50ns_M3000_reduced_skim.root")
f3 =ROOT.TFile("/eos/uscms/store/user/abat/root_file/signal/QG/nocut/RSG_QG_50ns_M3000_reduced_skim.root")

tree_s     = f2.Get("rootTupleTree/tree")
tree_b     = f1.Get("rootTupleTree/tree")
tree_b1    = f3.Get("rootTupleTree/tree")

#file1 = ROOT.TFile("data.root")
#tree_s = file1.Get("TreeS")
#tree_b = file1.Get("TreeB")
fout = ROOT.TFile("QQ_M3000.root","RECREATE")

# define factory with options
factory = ROOT.TMVA.Factory("TMVAClassification", fout,
                            ":".join([    "!V",
                                          "!Silent",
                                          "Color",
                                          "DrawProgressBar",
                                          "Transformations=I;D;P;G,D",
                                          "AnalysisType=Classification"]
                                     ))

# add discriminating variables for training
factory.AddVariable("QG1stJet ","F")
factory.AddVariable("QG2ndJet ","F")
#factory.AddVariable("QG1stJet ","F")
# define signal and background trees
factory.AddSignalTree(tree_s)
factory.AddBackgroundTree(tree_b)
factory.AddBackgroundTree(tree_b1)
# define additional cuts 
sigCut = ROOT.TCut("1")
bgCut = ROOT.TCut("1")
# set options for trainings
factory.PrepareTrainingAndTestTree(sigCut, 
                                   bgCut, 
                                   ":".join(["nTrain_Signal=0",
                                             "nTrain_Background=0",
                                             "SplitMode=Random",
                                             "NormMode=NumEvents",
                                             "!V"
                                             ]))

# book and define methods that should be trained
method = factory.BookMethod(ROOT.TMVA.Types.kBDT, "BDT",
                            ":".join([ "!H",
                                       "!V",
                                       "NTrees=850",
                                       "nEventsMin=150",
                                       "MaxDepth=3",
                                       "BoostType=AdaBoost",
                                       "AdaBoostBeta=0.5",
                                       "SeparationType=GiniIndex",
                                       "nCuts=20",
                                       "PruneMethod=NoPruning",
                                       ]))

method = factory.BookMethod(ROOT.TMVA.Types.kBDT, "BDT2",
                            ":".join([ "!H",
                                       "!V",
                                       "NTrees=5000",
                                       # "nEventsMin=0",
                                       "MaxDepth=3",
                                       "BoostType=AdaBoost",
                                      "AdaBoostBeta=0.5",
                                      "SeparationType=GiniIndex",
                                       "nCuts=20",
                                       "PruneMethod=NoPruning",
                                       ]))

method = factory.BookMethod(ROOT.TMVA.Types.kBDT, "BDT3",
                            ":".join([ "!H",
                                       "!V",
                                       "NTrees=2500",
                                       # "nEventsMin=2",
                                       "MaxDepth=3",
                                       "BoostType=AdaBoost",
                                       "AdaBoostBeta=0.5",
                                       "SeparationType=GiniIndex",
                                       "nCuts=20",
                                       "PruneMethod=NoPruning",
                                       ]))

# self-explaining
factory.TrainAllMethods()
factory.TestAllMethods()
factory.EvaluateAllMethods()

