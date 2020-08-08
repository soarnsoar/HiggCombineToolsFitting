#workspace -->run_fitdiagnosis.sh->run_diffNuisances.sh (input = fitdiagnosis)
#input=combined.txt

Year=2016
source combineCards.sh $Year
cardname=combined.txt
workspace=combined.root


##--make workspace
#option="--PO Skip0j"
option="--PO simple"
text2workspace.py $cardname -P HiggsAnalysis.CombinedLimit.HiggsCombinePhysicsModel.HighMassScalar.WjetsShape:WjetsShapeFit -o $workspace $option
##--fit diagnostic
option=""
combine $workspace --name workspace -M FitDiagnostics --saveShapes --plots --saveWithUncertainties $option

#source ../make_workspace.sh combined.txt
#source ../run_fitdiagnosis.sh combined_skip0j.root
#source ../run_fitdiagnosis.sh combined.root
#source ../run_diffNuisances.sh fitDiagnosticsworkspace.root


source doFit.sh
