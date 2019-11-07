#-- scratch1.R --------------------------------------------------------------#

# Download example file per "https://datacarpentry.org/R-genomics/02-starting-with-data.html"
download.file("https://raw.githubusercontent.com/datacarpentry/R-genomics/gh-pages/data/Ecoli_metadata.csv",
              "data/Ecoli_metadata.csv")

#Download data as a data frame
metadata<- read.csv("data/Ecoli_metadata.csv") 

#add in dply packages
library(dplyr)

#Practice functions of dplyr

select(metadata,sample,clade,cit,genome_size)

filter(metadata, cit=="plus")

metadata %>%
  filter(cit=="plus") %>% 
  select(sample,generation,clade)  


select(metadata, sample,clade, cit,genome_size)

filter(metadata, clade=="plus")

metadata %>%
  filter(clade == "Cit+") %>%
  select(sample,generation,cit)

#Practice Mutate

metadata %>%
  mutate(genome_bp = genome_size * 1e6) %>%
  head
 
       