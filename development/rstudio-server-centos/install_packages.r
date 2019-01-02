options(repos='https://cran.ism.ac.jp/')
install.packages('devtools', dependencies = TRUE)
install.packages('tidyverse', dependencies = TRUE)

remove.packages('BH')
devtools::install_url("https://cran.r-project.org/src/contrib/Archive/BH/BH_1.62.0-1.tar.gz")
install.packages('rstan', dependencies = TRUE)

devtools::install_version('lubridate', '1.6.0')
devtools::install_github('tidyverse/lubridate@before-CCTZ')
devtools::install_version('tidyverse', '1.2.0')