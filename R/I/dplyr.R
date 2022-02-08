library(dplyr)

names(starwars)
dim(starwars)

lapply(starwars, class)

View(starwars)

## Filter data by variable
a <- starwars %>%
  filter(species == "Droid")
dim(a)
View(a)

## Select variable
b <- starwars %>% 
  select(name, ends_with("color"))
View(b)

d <- starwars %>% 
  select(name, height, mass)

## Create a variable
f <- starwars %>% 
  mutate(nueva = mass + height) %>%
  select(name, nueva, height, mass)
View(f)

## Order variable
c <- starwars %>% 
  arrange(desc(height))

## Group variable and filter
e <- starwars %>%
  group_by(species) %>%
  summarise(n = n(),
            mass = mean(mass, na.rm = TRUE)) %>%
  filter(n > 1, mass > 50)

View(e)