df <- read.csv("/home/mamitoun/Documents/Langage/data/dataset_part_2.csv")
head(df)
ggplot(df, aes(x=FlightNumber, y=PayloadMass, color=Class)) + geom_point(size=1) + scale_color_continuous(low="blue",high="orange")
