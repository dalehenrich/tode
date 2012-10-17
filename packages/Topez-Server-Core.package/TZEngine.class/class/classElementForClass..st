metacello
classElementForClass: aClass 

	^TZClassElement new
                elementClass: aClass;
                elementClassName: aClass name;
                indent: 0;
                inExtensionClassList: false;
                yourself