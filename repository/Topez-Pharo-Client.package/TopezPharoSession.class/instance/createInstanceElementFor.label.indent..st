api
createInstanceElementFor: instanceProxy label: label indent: indent
    | instance cl |
    instance := instanceProxy asTopezProxy native.
    cl := instance class.
    ^ TZInstanceElement new
        elementClass: cl asTopezProxy;
        elementClassName: cl name asString;
        label: label;
        indent: indent;
        instance: instanceProxy;
        yourself