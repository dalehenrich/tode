export
fileOutMethodBody: aMethodReference
	| ref methodString |
	methodString := self prettyPrint: aMethodReference sourceCode asString.

	"See if an extension method includes a reference to some of our classes"
	ref := self getClassNamesUsedIn: aMethodReference.
	"Prefix the class names with the target namespace"
	ref do: 
		[:className |
		methodString := methodString
				copyReplaceTokens: className 
				with: self environment , '.' , className].
	stream
		nextPutAll: '<body package="';
		nextPutAll: (self packageNameForMethod: aMethodReference);
		nextPutAll: '">';
		nextPutAll: (((methodString copyReplaceAll: '&' with: '&amp;') copyReplaceAll: '<' with:  '&lt;' ) copyReplaceAll:  '>' with:  '&gt;');
		nextPutAll: '</body>';
		cr