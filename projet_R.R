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
