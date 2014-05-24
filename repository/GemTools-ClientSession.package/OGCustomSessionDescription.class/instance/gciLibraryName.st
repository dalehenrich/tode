accessing
gciLibraryName
	gciLibraryName ifNil: [ gciLibraryName := 'libgcirpc-' , self gemstoneVersion , '-32' ].
	^ gciLibraryName