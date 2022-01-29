library(dplyr)

names(starwars)
dim(starwars)

lapply(starwars, class)

View(starwars)

## Filter data by variable
starwars %>% 
  filter(species == "Droid")

## Select variable
starwars %>% 
  select(name, ends_with("color"))

## Create a variable
starwars %>% 
  mutate(name, bmi = mass / ((height / 100)  ^ 2)) %>%
  select(name:mass, bmi)

## Order variable
starwars %>% 
  arrange(desc(mass))

## Group variable and filter
starwars %>%
  group_by(species) %>%
  summarise(n = n(),
            mass = mean(mass, na.rm = TRUE)) %>%
  filter(n > 1, mass > 50)

