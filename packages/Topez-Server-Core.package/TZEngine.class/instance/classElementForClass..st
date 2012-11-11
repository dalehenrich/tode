metacello
classElementForClass: aClass
    ^ self newClassElement
        elementClass: aClass;
        elementClassName: aClass name;
elementSuperClassName: aClass superClass name;
        indent: 0;
        inExtensionClassList: false;
        yourself