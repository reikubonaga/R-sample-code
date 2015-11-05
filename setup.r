# RCurl = webサイトからデータをダウンロード
install.packages('RCurl')
# Gplot = グラフを書くツール
install.packages("gplots")

library(RCurl)
x <- getURL("https://raw.githubusercontent.com/reikubonaga/R-sample-code/master/table.csv")
y <- read.csv(text = x)



