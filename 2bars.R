install.packages("reshape2")
require(ggplot2)
require(reshape2)

data <- read.csv("/Users/michaelfitolimardi/Documents/Viz2/Accidents.csv")
data
df <- melt(data, id = "Year")
ggplot() + geom_bar(data = df, aes(x = Year, y = value, fill = variable), position = "dodge", stat = "identity")

