#Open a comma-separated value (csv) file with the name of the specimens
specimen_list <- read.csv(file.choose(),sep=";", header = T)

#Create a function to randomly order your list
shuffle <- function(list){
  random <- sample(nrow(specimen_list), size =  nrow(specimen_list))
  specimen_list[random,]
}
randomized <- shuffle(specimen_list)
View(randomized)

#Create a function to add random codes to each specimen
coding <-function(){
  code1a <- sample(LETTERS, size = 1)
  code1b <- sample(LETTERS, size = 1)
  code1 <- paste0(code1a,code1b, collapse = NULL)
  code2a <- sample(0:9, size = 1)
  code2b <- sample(0:9, size = 1)
  code2 <- paste0(code2a,code2b, collpase = NULL)
  code3 <- paste0(code1,code2,collapse = NULL)
}

#Generate a random label for each specimen and add to the table
labels <- replicate(nrow(specimen_list),coding())

if(anyDuplicated(labels)){
  final <- cbind(labels, randomized)
} else {
  labels <- replicate(nrow(specimen_list),coding())
  final <- cbind(labels, randomized)
}

View(final)

#Export as excel file
write.csv2(final, "Randomized_list.csv")
