.PHONY: all README.md

all: README.md

README.md:
	@printf "# Guessing Game\n\n" > README.md
	@printf "Generated on: " >> README.md
	@date >> README.md
	@printf "\nNumber of lines in guessinggame.sh: " >> README.md
	@wc -l < guessinggame.sh >> README.md
