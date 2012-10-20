as yet unclassified
createInstanceElementFor: instance label: label indent: indent
    | cl |
    cl := instance class.
    ^ TZInstanceElement new
        elementClass: cl;
        elementClassName: cl name asString;
        label: label;
        indent: indent;
        instance: instance;
        yourself