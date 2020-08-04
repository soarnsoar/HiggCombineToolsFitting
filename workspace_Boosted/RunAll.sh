#workspace -->run_fitdiagnosis.sh->run_diffNuisances.sh (input = fitdiagnosis)
input=combined.txt
source combineCards.sh
source ../make_workspace.sh $input 
source ../run_fitdiagnosis.sh $input
source ../run_diffNuisances.sh fitDiagnosticsworkspace.root
