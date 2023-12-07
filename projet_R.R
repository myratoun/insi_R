library("ggplot2")
library("tidyVerse")

df <- read.csv("/home/mamitoun/Documents/Langage/data/dataset_part_2.csv")
head(df)
ggplot(df, aes(x=FlightNumber, y=PayloadMass, color=Class)) + geom_point(size=1) + scale_color_continuous(low="blue",high="orange")

# Tâche 1
ggplot(df, aes(x=FlightNumber, y=LaunchSite, color=Class)) + geom_point(size=1) + scale_color_continuous(low="blue",high="orange")

# Tâche 2
ggplot(df, aes(x=PayloadMass, y=LaunchSite, color=Class)) + geom_point(size=1) + scale_color_continuous(low="blue",high="orange")

# Tâche 3
ggplot(df, aes(x=Orbit, color=mean(Class))) + geom_bar() + scale_color_continuous(low="blue",high="orange")

# Tâche 4
ggplot(df, aes(x=FlightNumber, y=Orbit, color=Class)) + geom_point(size=1) + scale_color_continuous(low="blue",high="orange")

# Tâche 5
ggplot(df, aes(x=PayloadMass, y=Orbit, color=Class)) + geom_point(size=1) + scale_color_continuous(low="blue",high="orange")

# Tâche 6
Extract_year <- function(data) {
  years <- character(length(data$Date))
  for (i in 1:length(data$Date)) {
    years[i] <- strsplit(as.character(data$Date[i]), "-")[[1]][1]
  }
  return(years)
}
df$Year <- Extract_year(df)
head(df)

# Tâche 6 (inachevé)
ggplot(df, aes(x = Year, y = success_rate, color = Class)) + geom_line() + scale_color_continuous(low = "blue", high = "orange") + labs(x = "Year", y = "Success Rate")

# Tâche 7
install.packages("fastDummies")
library("fastDummies")
features <- df[, c('FlightNumber', 'PayloadMass', 'Orbit', 'LaunchSite', 'Flights', 'GridFins', 'Reused', 'Legs', 'LandingPad', 'Block', 'ReusedCount', 'Serial')]
head(features)
categorical_cols <- c('Orbit', 'LaunchSite', 'LandingPad', 'Serial')
features_one_hot <- dummy_cols(features, select_columns = categorical_cols)
head(features_one_hot)

# Tâche 8
library("dplyr")
features_one_hot <- mutate_all(features_one_hot, as.double)
str(features_one_hot)