all:
	find content -name "*~" -exec rm -rf {} \;
	wok
	rm -rf heroku/*
	cp -r output/* heroku
