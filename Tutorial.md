# TUTORIAL
Sometimes i need to do blind analysis of my own specimen samples (such as insulitis scoring or beta cell count) so i have
to reorder manually my values and label them in an unrecognizable manner. I create this short and simple script that does the
same but more quickly and automated. I specially use this script for large datasets. 

# 1. Introduction 
I always begin with a csv (comma-separated value) file in which i have listed my specimens (in this case animals) and other data i.e. treatment. (You can find an example csv file in this folder). I execute the *randomizeR* R script which first re-arranges the labeled specimens in a random manner and then add a new label to each one of the specimens.

*NOTE: * As the re-arrangement made by the script is random, each time the script uses the same datasets as input it will return a different randomly re-arranged output. 
