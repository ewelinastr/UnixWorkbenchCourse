README.md: guessinggame.sh

	echo '# Unix Workbench project assignment by ewelinastr' > README.md
	echo '- The makefile was run at: **$(shell date)**' >> README.md
	echo '- There were **$(shell cat guessinggame.sh | wc -l)** lines of code in guessinggame.sh' >> README.md
