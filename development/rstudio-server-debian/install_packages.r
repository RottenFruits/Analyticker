options(repos='https://cran.ism.ac.jp/')
install.packages('devtools', dependencies = TRUE) #https://github.com/tidyverse/lubridate/issues/601
devtools::install_version('lubridate', '1.6.0')
devtools::install_github('tidyverse/lubridate@before-CCTZ')
devtools::install_version('tidyverse', '1.2.0')

dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native -fPIC",
    "CXX14=g++", # or clang++ but you may need a version postfix
    file = M, sep = "\n", append = TRUE)


install.packages('StanHeaders', dependencies = TRUE) #https://discourse.mc-stan.org/t/installation-issue-stan-lang-ast-def-cpp-no-such-file-or-directory/4533
install.packages('rstan', dependencies = TRUE)

remove.packages("StanHeaders")