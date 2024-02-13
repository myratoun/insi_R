LETTERS # lettre majuscule
letters # lettre minuscule
month.name # mois complet
month.abb # mois abrégé
pi # pi

taille <- c(1.88,1.65,NA,1.62,NA)
taille[c(4,2,3)]
taille[c(-3,-2,-1)]

# faire une liste
li <- list(1:5, "abc")
li

min = letters
maj = LETTERS
mois = month.name
l1 <- list(letters, LETTERS, month.name)
l1

names(l1)
#combiné les deux listes li et l1
l <- append(li,l1)
l

# longueur de l
length(l)

# création coordonné
coordonne <- list(c("Rakotomanga"), c("Myra"), c("Female"), c(22), c("Ambanidia"))
coordonne

# dataframe
sexe <- c("f","f","h","h")
age <- c(52,31,29,35)
blond <- c(FALSE,TRUE,FALSE,TRUE)
df <- data.frame(sexe,age,blond)
head(df)
names(df)
nrow(df)
ncol(df)
dim(df)
row.names(df) <- c("Myra","Antsa","Nirina","Lia")
df