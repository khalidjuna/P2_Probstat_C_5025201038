# No 1
# 1a
# Data Sebelum melakukan aktivitas
before <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
# Data Setelah melakukan aktivitas
after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# SD Before
sd_before <- sd(before)
sd_before

# SD After
sd_after <- sd(after)
sd_after

# 1b
t.test(before, after, alternative = "greater", var.equal = FALSE)

# 1c
var.test(before, after)
t.test(before, after, mu = 0, alternative = "two.sided", var.equal = TRUE)


# No 2
install.packages("BSDA")
library(BSDA)

# 2a
# Jawaban di README

# No 2b 
tsum.test(mean.x=23500, sd(3900), n.x=100)

# 2c
# Jawaban di README

# No 3
# 3a

# 3b 
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# 3c
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")

# 3d
# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# 3e
# 3f

# No 4
# 4a
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# 4b
bartlett.test(Length~V1, data=dataoneway)

# 4c
qqnorm(group1$Length)
qqline(group1$Length)

# 4d

# 4e
model1 <- lm(Length~Group, data=myFile)

anova(model1)

TukeyHSD(aov(model1))

# 4f
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")


# No 5
# 5a
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# 5b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# 5c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# 5d
tukey <- TukeyHSD(anova)
print(tukey)

# 5e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
