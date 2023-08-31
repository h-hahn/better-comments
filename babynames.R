# load in tidyverse
library(tidyverse)

# read in baby data for California
babynames <- read.csv("data/CA.TXT", header = FALSE)

# change column names
colnames(babynames) <- c("state", "gender", "year", "firstname", "count")

# look at the top of babynames data
head(babynames)

# make a subset of data for only the name Julien
juliens <- babynames%>%
  filter(firstname == "Julien")

# find the largest number of juliens and store it
famousJuliens <- max(juliens$count)

# find the year with the most juliens and store it
best_julien <- juliens %>% 
  # filter rows that the count is equal to the max number of Juliens (stored in famousJuliens)
  filter (count == famousJuliens) %>%
  # select the year only
  select(year) %>% 
  # pull out only the year (variable )
  pull()

best_julien

# all the juliens born after the year 2010
juliens[juliens$year > 2010,]
