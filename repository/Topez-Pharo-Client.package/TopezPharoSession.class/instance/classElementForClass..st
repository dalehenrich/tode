api
classElementForClass: classProxy
    | cl |
    cl := classProxy asTopezProxy native.
    ^ TZClassElement new
        elementClass: cl asTopezProxy;
        elementClassName: cl name asString;
        yourself