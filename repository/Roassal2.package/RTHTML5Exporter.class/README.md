I am a class to export instances of RTView with all its shapes and interactions, just check the examples to see how to use me.

Instance Variables
	directory:		a string
	fileName:		a string
	stream:		a WriteStream
	title:		a string

directory
	- the directory where the file is going to be saved, default the working directory

fileName
	- the name of the html file. Default name: thePage.html

stream
	- the write stream is created when export method is called.

title
	- the title for the HTML page. Default title is Roassal Page