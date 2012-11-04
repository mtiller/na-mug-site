all:
	find content -name "*~" -exec rm -rf {} \;
	wok
	cp -r output/* heroku
