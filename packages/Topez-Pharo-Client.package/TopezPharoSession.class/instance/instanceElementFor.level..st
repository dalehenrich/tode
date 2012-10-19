api
instanceElementFor: instanceProxy level: level
    "assuming depth 0 for now"

    | instance cl |
    instance := instanceProxy asTopezProxy native.
    cl := instance class.
    ^ {(TZInstanceElement new
        elementClass: cl asTopezProxy;
        elementClassName: cl name asString;
        indent: 0;
        instance: instanceProxy;
        yourself)}