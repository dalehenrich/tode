api
instanceElementFor: instanceProxy
    | instance cl |
    instance := instanceProxy asTopezProxy native.
    cl := instance class.
    ^ {(TZInstanceElement new
        elementClass: cl asTopezProxy;
        elementClassName: cl name asString;
        indent: 0;
        instance: instanceProxy;
        displayString: instance printString;
        yourself)}