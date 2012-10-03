convenience
toStringFromOop: anOop level: level
    ^ self
        toString: (Object _objectForOop: anOop)
        withOptions:
            (TZTopezOptions new
                level: level;
                yourself)