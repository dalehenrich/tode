accessing
getName
	|result|
	result := name copy.
	^result replaceAll: $_ with: $ .