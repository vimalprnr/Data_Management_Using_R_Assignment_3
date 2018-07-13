vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[11:25,]))

#####Problem 1 Solution
vec1 == vec2
identical(vec1,vec2)
all.equal(vec1,vec2)
vec1 %in% vec2

#####Problem 2 Solution
#Ascending
sort(vec1, decreasing = FALSE)
sort(vec2, decreasing = FALSE)
#Descending
sort(vec1, decreasing = TRUE)
sort(vec2, decreasing = TRUE)

#Problem 3
#What is the major difference between str() and paste() show an example.
#str()
# Used for comapct display of internal structure of R Object similar to summary() function.
# str() does not return any value so eventhough we do an assignment operation on str() output it will store NULL
# str() will display output directly in terminal.
a<- c(1,2,3,"hi")
str(a)
#chr [1:4] "1" "2" "3" "hi"

#paste()
#Paste concatenates vectors after converting into characters.
#Argument collapse can be used if we need to concatenate string values with special symbols.

a<- c(1,2,3,"hi")
paste(a,collapse = "_")
#[1] "1_2_3_hi"

#paste can be used in place of as.character as well.
b<- c(1:5)
class(b)
#[1] "integer"
d<- paste(b)
class(d)
#[1] "character"


#Problem 4
#Introduce a separator when concatenating the strings.

strTemp<- c("Dhoni","is","the", "first", "keeper", "to", "take", "five", "catches", "in","twenty","twenty")
concatStr<- paste(strTemp,collapse = "_")
print(conCatStr)