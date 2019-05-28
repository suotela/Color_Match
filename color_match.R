'''
Date: 01/21/18
Language: R

Takes an image file and returns a table of RGB hex codes for each color in the image file.

Used to match color gradients in figures to each other and to charts.

'''


color.match<-function(red,green,blue,file){
	red.diff<-abs(red-file$RED)
	green.diff<-abs(green-file$GRN)
	blue.diff<-abs(blue-file$BLU)
	avg<-(red.diff+green.diff+blue.diff)/3
	file$avg<-avg
	file2<-file[order(avg),]	
	return(file2[1,])
}