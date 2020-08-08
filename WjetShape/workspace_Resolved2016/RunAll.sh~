#workspace -->run_fitdiagnosis.sh->run_diffNuisances.sh (input = fitdiagnosis)
#input=combined.txt

Year=2017
source combineCards.sh $Year
cardname=combined.txt
workspace=combined.root


##--make workspace

option="--PO simple"
#option="--PO slope12j"
#option="--PO slope2j"
#option="--PO slope012j"
text2workspace.py $cardname -P HiggsAnalysis.CombinedLimit.HiggsCombinePhysicsModel.HighMassScalar.WjetsShape:WjetsShapeFit -o $workspace $option
##--fit diagnostic

#option="--setParameters w_0j=1 --freezeParameters w_0j" ##fixed w0j
#option="--setParameters w_0j=1 --freezeParameters w_0j" ##fixed w0j
#option="--setParameters w_0j=1 --freezeParameters w_0j" ##fixed w0j
option=""
#option="--setParameters w_min0j=1 --freezeParameters w_min0j" ##fixed w0j
#option="--setParameters w_max0j=1 --freezeParameters w_max0j" ##fixed w0j
combine $workspace --name workspace -M FitDiagnostics --saveShapes --plots --saveWithUncertainties $option

##0fit result
combine -M MultiDimFit --algo singles -d combined.root --X-rtd MINIMIZER_analytic $option &> combined.out
cat combined.out

#source ../make_workspace.sh combined.txt
#source ../run_fitdiagnosis.sh combined_skip0j.root
#source ../run_fitdiagnosis.sh combined.root
#source ../run_diffNuisances.sh fitDiagnosticsworkspace.root


#source doFit.sh
