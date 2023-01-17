# simply run the code;

# x2 provides a list of introductions, and the for loop uses them to complete the statement with the same end line "Dr. Dowling!"
x2 <- c("Hello", "Bonjour", "Goodmorning", "Have a great day")
for(i in x2) {print(paste(i, "Dr. Dowling!"))}

# the statement here is x is 0, and the if statement dictates that because x is 0 that we will only see the output, "How's it going Dr. Dowling?"
x <- 0 
if (x < 0) {print ("How are you today Dr. Dowling?")} else {print ("How's it going Dr. Dowling?")}