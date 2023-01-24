Bitcoin <- read.csv("/Users/harsharaman/Desktop/archive/Bitcoin.csv")
Ethereum <- read.csv("/Users/harsharaman/Desktop/archive/Ethereum.csv")
Dogecoin <- read.csv("/Users/harsharaman/Desktop/archive/Meme Coin/Dogecoin.csv")
Monacoins <- read.csv("/Users/harsharaman/Desktop/archive/Meme Coin/Monacoins.csv")

test1 <- Bitcoin
write.csv(test1,"/Users/harsharaman/Desktop/archive/test1.csv")
test2 <- Ethereum
write.csv(test2,"/Users/harsharaman/Desktop/archive/test2.csv")
test3 <- Dogecoin
write.csv(test3,"/Users/harsharaman/Desktop/archive/test3.csv")
test4 <- Monacoins
write.csv(test4,"/Users/harsharaman/Desktop/archive/test4.csv")
