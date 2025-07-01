# load libraries
library(tidyverse)

# import data
flighty <- read_csv("FlightyExport-2025-06-30.csv")

# data clean up - date
flighty %>% 
  mutate(Date = toString(Date)) %>% 
  mutate(Year = str_extract(Date, "....")) %>%
  mutate(Month = str_extract(Date, "-.."),
         Month = str_replace(Month, "-", "")) %>% 
  select(Date, Year, Month) 