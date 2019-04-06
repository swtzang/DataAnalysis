# Split-apply-combine example on line
# http://applied-r.com/split-apply-combine-techniques/

# Data format/shape
library(tibble)                              # simple data.frames
library(tidyr)                               # data cleaning/reshaping

# Data transforms
library(dplyr)                               # data transforming
library(forcats)                             # data factor mgmt
library(lubridate)                           # data/time objects
library(hms)                                 # time-of-day values
library(stringr)                             # string mgmt

# Programming
library(purrr)                               # functional programming tools
library(purrrlyr)                            # intersection of purrr and dplyr
library(magrittr)                            # pipe operators
# Data format/shape
library(tibble)                              # simple data.frames
library(tidyr)                               # data cleaning/reshaping

# Data transforms
library(dplyr)                               # data transforming
library(forcats)                             # data factor mgmt
library(lubridate)                           # data/time objects
library(hms)                                 # time-of-day values
library(stringr)                             # string mgmt

# Programming
library(purrr)                               # functional programming tools
library(purrrlyr)                            # intersection of purrr and dplyr
library(magrittr)                            # pipe operators

install.packages("repurrrsive")
library(repurrrsive)
library(tidyverse)
#
head(iris)
str(iris)
#
iris %>%
  split(.$Species) %>%
  map(~ lm(Sepal.Length ~ Petal.Length, data = .)) %>%
  map(summary) %>%
  map_dbl("r.squared")
#
iris %>% 
        map_if(is.factor, as.character) %>% 
        str()
str(iris)

map2_dfc(1:3, 2:4, ~ .x * (.y - 1))
