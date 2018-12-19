#function from https://kuanhoong.wordpress.com/2016/06/22/r-script-to-install-multiple-packages-at-once/

install <- function(packages){
  cranmirror <- "https://cran.cnr.berkley.edu/"
  new_packages <- packages[!(packages %in% installed.packages()[, "Package"])]
  if (length(new_packages))
    install.packages(new_packages, dependencies = TRUE, repos = cranmirror)
  sapply(packages, require, character.only = TRUE)
}
