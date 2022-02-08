library(dplyr)

names(starwars)
dim(starwars)

lapply(starwars, class)

View(starwars)

## Filter data by variable
a <- starwars %>%
  filter(species == "Droid")

dim(a)

## Select variable
b <- starwars %>% 
  select(name, ends_with("color"))

b <- starwars %>% 
  select(name, height, mass)

## Create a variable
a <-starwars %>% 
  mutate(nueva = mass + height) %>%
  select(name, nueva, height, mass)

## Order variable
starwars %>% 
  arrange(desc(height))

## Group variable and filter
starwars %>%
  group_by(species) %>%
  summarise(n = n(),
            mass = mean(mass, na.rm = TRUE)) %>%
  filter(n > 1, mass > 50)