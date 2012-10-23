metacello
classElementForClass: aClass
    ^ self newClassElement
        elementClass: aClass;
        elementClassName: aClass name;
        indent: 0;
        inExtensionClassList: false;
        yourself