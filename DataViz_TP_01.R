library("ggplot2")
library("tidyverse")

df <- read.csv("/home/mamitoun/Documents/Langage/diamonds.csv")
head(df)

# Diagramme de dispersion de la colonne prix par rapport à la colonne carat
ggplot(df, aes(x = carat, y = price)) + geom_point(color = "blue") + labs(x = "Carat", y = "Price")

# Utiliser le paramètre alpha et le paramètre edgecolor pour traiter le problème de chevauchement et le problème de marqueur de bord blanc.
ggplot(df, aes(x = carat, y = price)) + geom_point(alpha = 0.1, color = "blue", stroke = 0.8) + labs(x = "carat", y = "price")

# Agrandir le graphe
ggplot(df, aes(x = carat, y = price)) + geom_point(alpha = 0.1, color = "blue", stroke = 0.8) + labs(x = "carat", y = "price") + theme(plot.margin = margin(1, 1, 1, 1, "cm"))

# Un histogramme de la colonne des prix
ggplot(df, aes(x = price)) + geom_histogram(binwidth = 500, fill = "blue") + labs(x = "price")

# Un graphique de comptage des instances par type de coupe
ggplot(df, aes(x = cut, fill = cut)) + geom_bar() + labs(x = "cut") + scale_fill_brewer(palette = "Set3")

# Un grand diagramme en boîtes montrant la répartition des prix par type de coupe
ggplot(df, aes(x = cut, y = price, fill = cut)) + geom_boxplot() + labs(x = "cut", y = "price") + scale_fill_brewer(palette = "Set3")

# Défi ! Voyez si vous pouvez modifier l'ordre des boîtes à moustaches comme indiqué ci-dessous. N'hésitez pas à changer également la coloration, pour refléter cette relation entre les types de coupe.
df$cut <- factor(df$cut, levels = c('Fair', 'Ideal', 'Good', 'Very Good', 'Premium'))

ggplot(df, aes(x = cut, y = price, fill = cut)) + geom_boxplot() + labs(x = "cut", y = "price") + scale_fill_brewer(palette = "pastel")
