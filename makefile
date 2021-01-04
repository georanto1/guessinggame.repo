all: README.md

README.md:
        touch README.md
	
README.md:	guessinggame.sh
        echo "#The Guessing Game" >> README.md
	echo -n "Make's Date and Time " >> README.md
	date -R >> README.md
	echo -n "The number of lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md 
