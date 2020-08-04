nuisances="CMS_mW_intercept_Wjets0j,CMS_mW_intercept_Wjets1j,CMS_mW_intercept_Wjets2j,CMS_mW_slope_Wjets0j,CMS_mW_slope_Wjets1j,CMS_mW_slope_Wjets2j"


#workspace_Boosted/fitDiagnosticsworkspace.root
echo "----Boosted"
python GetFitResult.py workspace_Boosted/fitDiagnosticsworkspace.root $nuisances
echo "----Resolved"
python GetFitResult.py workspace_Resolved/fitDiagnosticsworkspace.root $nuisances
