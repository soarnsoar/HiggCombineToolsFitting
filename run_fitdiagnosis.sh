#combine workspace.root --mass 1000 --name workspace -M FitDiagnostics --cminDefaultMinimizerStrategy 0

#option="--setParameterRanges r=0,0"
#option="--setParameterRanges r_slope=0,0 "
#option="--redefineSignalPOIs r_slope"
option=""
input=$1
#combine $input --name workspace -M FitDiagnostics --saveShapes --plots --saveWithUncertainties $option
combine $input --name workspace -M FitDiagnostics --saveShapes --plots --saveWithUncertainties $option
#combine datacard.root --mass 1000 --name workspace -M FitDiagnostics --saveShapes --plots --saveWithUncertainties
#####-->gives postfit shape
##TODO
#--saveOverallShapes
