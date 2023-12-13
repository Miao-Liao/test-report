# 1 working hours per workers
library(ggplot2)
working_hours
colnames(working_hours)<-c("Region","Code","Year","working_hours")

working_hours
p=ggplot(data=working_hours)+geom_bar(aes(x=Region, y=working_hours, fill=Year), stat='identity')+
  coord_flip() + scale_fill_gradient(low="blue", high = "red")+ 
  xlab("Region") + ylab("working_hours") + 
  theme(axis.text.x=element_text(color="black", size=10),axis.text.y=element_text(color="black", size=10)) + 
  scale_y_continuous(expand=c(0, 0)) + scale_x_discrete(expand=c(0,0))+
  theme_bw()
