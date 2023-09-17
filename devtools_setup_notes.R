library(devtools)
#create_package("~/libminer")
use_git_config(user.name="kbirson",user.email="kbirson@gmail.com")
git_sitrep()
usethis::use_devtools()


usethis::use_r("lib-summary") #creating a function to summarize library contents
