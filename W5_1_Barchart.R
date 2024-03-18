install.packages("reshape2")
require(ggplot2)
require(reshape2)
library(tidyr)

#Read csv file and transform
data <- read.csv("/Users/michaelfitolimardi/Documents/Viz2/Accidents.csv")
#Convert to longer format
accidents_longer <- data %>% pivot_longer(cols=c('Death','Injured'),
                                              names_to='Type',
                                              values_to='Count')
accidents_longer
#ggplot(accidents_longer, aes(x=Year, y=value, fill=variable))+geom_bar()#+labs(title="Michael, Bar Chart")+theme(plot.title=element_text(hjust=1, size=35))


data
df <- melt(data, id = "Year")
ggplot() + geom_bar(data = df, aes(x = Year, y = value, fill = variable), position = "dodge", stat = "identity")+scale_x_continuous(breaks = unique(df$Year))+  scale_y_continuous(breaks = seq(from = 0, to = 600, by = 100)) 


