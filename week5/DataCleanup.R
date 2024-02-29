library(tidyverse)


income <- read.csv("/Users/kyleknox/Documents/M.S. Applied Statistics/SPRING 2024/STA533/week5/income_per_person.csv", check.names = FALSE)

incomepp <- income %>%
  gather(key = "year", value = "income", -geo) %>%
  rename(country = geo)

print(incomepp)

life <- read.csv("/Users/kyleknox/Documents/M.S. Applied Statistics/SPRING 2024/STA533/week5/life_expectancy_years.csv", check.names = FALSE)

lifeyr <- life %>%
  gather(key = "year", value = "income", -geo) %>%
  rename(country = geo)

print(lifeyr)

LifeExpIncom <- inner_join(incomepp, lifeyr, by = c("country", "year"))

LifeExpIncom <- LifeExpIncom %>%
  rename(income = income.x, lifeExp = income.y)

print(LifeExpIncom)

countryR <- read.csv("/Users/kyleknox/Documents/M.S. Applied Statistics/SPRING 2024/STA533/week5/countries_total.csv", check.names = FALSE)
PopT <- read.csv("/Users/kyleknox/Documents/M.S. Applied Statistics/SPRING 2024/STA533/week5/population_total.csv", check.names = FALSE)

country_year <- countryR %>%
  rename(country = name)
country_region <- country_year %>%
  select(country, region)

LifeIncomeRegion <- inner_join(LifeExpIncom, country_region, by = "country")

population_fixed <- PopT %>%
  gather(key = "year", value = "population", -geo) %>%
  rename(country = geo) %>%
  mutate(year = as.numeric(year))

LifeIncomeRegion$year <- as.numeric(LifeIncomeRegion$year)

LifeIncomePopulation <- inner_join(LifeIncomeRegion, population_fixed, by = c("country", "year"))

write.csv(LifeIncomePopulation, "/Users/kyleknox/Documents/M.S. Applied Statistics/SPRING 2024/STA533/week5/LifeIncomePopulation.csv", row.names = FALSE)

data2000 <- LifeIncomePopulation %>%
  filter(year == 2000)

write.csv(LifeIncomePopulation, "/Users/kyleknox/Documents/M.S. Applied Statistics/SPRING 2024/STA533/week5/data2000.csv", row.names = FALSE)

