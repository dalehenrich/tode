metacello
classElementForClass: aClass 

	^TZClassElement new
                proxyClass: aClass;
                proxyClassName: aClass name;
                indent: 0;
                inExtensionClassList: false;
                yourself