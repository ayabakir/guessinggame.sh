# Le Makefile qui génère README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Projet de devinette du nombre de fichiers dans un répertoire" >> README.md
	@echo "Date et heure d'exécution : $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Le programme demande à l'utilisateur de deviner le nombre de fichiers dans le répertoire courant." >> README.md
