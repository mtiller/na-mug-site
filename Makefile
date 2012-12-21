all:
	find content -name "*~" -exec rm -rf {} \;
	wok
	rm -rf heroku/*
	cp -r output/* heroku

push: all
	(cd heroku; git add .; git commit -a -m "Latest changes"; git push heroku master)
