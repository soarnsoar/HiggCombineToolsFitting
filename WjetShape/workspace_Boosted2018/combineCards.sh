#combineCards.py <alias>=<cardpath>
#../Datacards/eleCH__BoostedGGF__SB__METOver40__NoPtOverMcut______/  ../Datacards/eleCH__Boosted__SB__METOver40__NoPtOverMcut______/    ../Datacards/muCH__BoostedVBF__SB__METOver40__NoPtOverMcut___/
#../Datacards/eleCH__BoostedGGF__SB__METOver40__PtOverM04______/     ../Datacards/eleCH__Boosted__SB__METOver40__PtOverM04______/       ../Datacards/muCH__BoostedVBF__SB__METOver40__PtOverM04___/
#../Datacards/eleCH__BoostedVBF__SB__METOver40__NoPtOverMcut___/     ../Datacards/muCH__BoostedGGF__SB__METOver40__NoPtOverMcut______/  ../Datacards/muCH__Boosted__SB__METOver40__NoPtOverMcut______/
#../Datacards/eleCH__BoostedVBF__SB__METOver40__PtOverM04___/        ../Datacards/muCH__BoostedGGF__SB__METOver40__PtOverM04______/     ../Datacards/muCH__Boosted__SB__METOver40__PtOverM04______/


Year=$1
#variable=Whad_dMchi2Resolution_nom_mass
variable=WtaggerFatjet_DeepAK8WP2p5_nom_mass

eleGGF=../Datacards$Year/eleCH__BoostedGGF__SB__METOver40__PtOverM04______/$variable/datacard.txt
eleVBF=../Datacards$Year/eleCH__BoostedVBF__SB__METOver40__PtOverM04___/$variable/datacard.txt

muGGF=../Datacards$Year/muCH__BoostedGGF__SB__METOver40__PtOverM04______/$variable/datacard.txt
muVBF=../Datacards$Year/muCH__BoostedVBF__SB__METOver40__PtOverM04___/$variable/datacard.txt



#combineCards.py eleGGF=${eleGGF} eleVBF=${eleVBF} muGGF=$muGGF muVBF=$muVBF &> combined.txt
combineCards.py muGGF=${muGGF}  &> combined.txt
