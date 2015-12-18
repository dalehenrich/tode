public - frames
getTitleNumber: aFrameNumber table: table
	^ (table attributes at: #title ifAbsent: '') , ' ' , aFrameNumber printString , '/' , self numberOfTables printString