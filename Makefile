projectName = " Using Git and Github"
filename = "README.md"
readme:
	@echo " # $(projectName)"> $(filename)
	@echo " make genenrated at `date +%G/%m/%d`" >> $(filename)
	@echo " Script contains  `wc -l guessinggame.sh|cut -d' ' -f1` lignes" >>$(filename)

