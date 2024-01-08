git init
HEROKU_APP_NAME=STROBE.jl
heroku create $HEROKU_APP_NAME --buildpack https://github.com/Optomatica/heroku-buildpack-julia.git
git heroku git:remote -a $HEROKU_APP_NAME
git add .
git commit -am "make it better"
git push heroku master

heroku open -a $HEROKU_APP_NAME
