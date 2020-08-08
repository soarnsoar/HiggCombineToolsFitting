##http://cms-analysis.github.io/HiggsAnalysis-CombinedLimit/part3/nonstandard/
##TODO
##-t -1  : make toy using expectation
##toy frequentist : fit to data
##-
input=$1
#--setParameters name=value
option="--setParameterRanges r=1,1"
combineTool.py -M Impacts -d $input -m 1000 $option --doInitialFit --robustFit 1


combineTool.py -M Impacts -d $input -m 1000 $option --robustFit 1 --doFits


combineTool.py -M Impacts -d $input -m 1000 $option -o impacts.json


plotImpacts.py -i impacts.json -o impacts
