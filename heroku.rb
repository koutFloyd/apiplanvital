system("git add .")
system("git commit -m \"commit message link dissable\"")

#system("db:migrate")
system("heroku login")
#system("horoku create")
system("git push heroku master")
#system("heroku run rake db:migrate")