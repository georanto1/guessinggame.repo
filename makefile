all: README.md

README.md:
        touch README.md
        echo "#The Guessing Game" > README.md
	echo -n "Make's Date and Time " >> README.md
	date -R >> README.md
	echo -n "The number of lines" >> README.md
	cat ./guessinggame.sh | wc -l >> README.md

clean:
	rm README.md 
