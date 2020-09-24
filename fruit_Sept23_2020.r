
#
# fruit_Sept23_2020.r
#
# September 23, 2020
#


#
# the four lines below are for counting errors
#

.error.count <- 0
old.error.fun <- getOption("error")
new.error.fun <- quote(.error.count <- .error.count + 1)
options(error = new.error.fun, width=2400)

##########################################################################################################
##########################################################################################################


setwd('C:/Users/mark_/Documents/simple_GitHub_files/')

my.fruit <- read.table('fruit_input_Sep23_2020.txt', header = TRUE, stringsAsFactors = FALSE)
my.fruit

my.fruit$Total <- rowSums(my.fruit[,2:4])
my.fruit

write.table(my.fruit, 'fruit_output_Sept23_2020.txt', row.names = FALSE, quote = FALSE)

write.csv(my.fruit, 'fruit_output_Sept23_2020.csv', row.names = FALSE, quote = FALSE)


##########################################################################################################
##########################################################################################################

#
# the three lines below count the number of errors in the code above
#

cat("ERROR COUNT:", .error.count, "\n")
options(error = old.error.fun)
rm(.error.count, old.error.fun, new.error.fun)

##########

