api
classElementForClass: classProxy
    | cl |
    cl := classProxy asTopezProxy native.
    ^ TZClassElement new
        elementClass: cl;
        elementClassName: cl name asString;
        indent: 0;
        inExtensionClassList: false;
        yourself