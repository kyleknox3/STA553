if (!requireNamespace("dplyr", quietly = TRUE)) install.packages("dplyr")
if (!requireNamespace("readr", quietly = TRUE)) install.packages("readr")

library(dplyr)
library(readr)

election_data <- read.csv("C:/Users/knoxk/Downloads/countypresidential_election_2000-2020.csv")

winning_parties <- election_data %>%
  group_by(year, county_name, state) %>%
  # Calculate total votes for each county per year
  mutate(total_votes = sum(candidatevotes)) %>%
  # Arrange to ensure the row with the max votes comes first
  arrange(desc(candidatevotes)) %>%
  # Slice to get the first row per group (the winner)
  slice(1) %>%
  ungroup()

write.csv(winning_parties_st, "C:/Users/knoxk/Downloads/NewData_Calc.csv", row.names=FALSE)


# Step 1: Remove any party that is not Democratic or Republican from every county
filtered_data <- election_data %>%
  filter(party %in% c("DEMOCRAT", "REPUBLICAN"))

# Step 2: Sum all the Democratic and Republican votes from each county to get the total votes for each party in the state for the election year
state_party_votes <- filtered_data %>%
  group_by(year, state, party, candidate) %>%
  summarize(party_votes = sum(candidatevotes), .groups = 'drop')

# Step 3: See which party won each state each election year
winning_party_by_state_year <- state_party_votes %>%
  arrange(desc(party_votes)) %>%
  group_by(year, state) %>%
  slice(1) %>%
  ungroup() %>%
  rename(winning_party = party, votes_received_for_candidate = party_votes, candidate1 = candidate)

winning_party_by_state_year = na.omit(winning_party_by_state_year)

# Step 4: Sum all votes (Democratic and Republican) for that state per year
total_votes_by_state_year <- filtered_data %>%
  group_by(year, state) %>%
  summarize(total_votes = sum(candidatevotes), .groups = 'drop')

total_votes_by_state_year= na.omit(total_votes_by_state_year)

# Join to add the total votes to the winning party data
final_dataset <- left_join(winning_party_by_state_year, total_votes_by_state_year, by = c("year", "state"))

write.csv(final_dataset, "C:/Users/knoxk/Downloads/Pt_2.csv", row.names=FALSE)
