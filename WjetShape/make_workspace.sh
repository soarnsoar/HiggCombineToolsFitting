#text2workspace.py datacard.txt -P HiggsAnalysis.CombinedLimit.HiggsCombinePhysicsModel.HighMassScalar.HighMassScalarSemilepNoI:GGFONLY --mass 1000
input=$1
#text2workspace.py $input
#text2workspace.py $input -P HiggsAnalysis.CombinedLimit.HiggsCombinePhysicsModel.HighMassScalar.WjetsShape:WjetsShapeFit --PO Skip0j -o combined_skip0j.root
#text2workspace.py $input -P HiggsAnalysis.CombinedLimit.HiggsCombinePhysicsModel.HighMassScalar.WjetsShape:WjetsShapeFit --PO simple -o combined.root
text2workspace.py $input -P HiggsAnalysis.CombinedLimit.HiggsCombinePhysicsModel.HighMassScalar.WjetsShape:WjetsShapeFit --PO Skip0j -o combined.root
#text2workspace.py $input -P HiggsAnalysis.CombinedLimit.HiggsCombinePhysicsModel.HighMassScalar.WjetsShape:WjetsShapeFit -o combined.root
