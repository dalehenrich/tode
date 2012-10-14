metacello
classElementForClass: aClass level: level

	| element |
	element := TZClassElement new
                proxyClass: aClass;
                proxyClassName: aClass name;
                indent: 0;
                inExtensionClassList: false;
                yourself.
	^self toString: element level: level