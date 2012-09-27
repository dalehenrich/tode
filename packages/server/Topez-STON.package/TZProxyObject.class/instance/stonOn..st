storing
stonOn: stonWriter
    stonWriter
        writeObject: self
        streamMap: [ :dictionary | 
            stonWriter noProxy: true.
            dictionary at: #'header' put: self header.
            stonWriter
                nextPut: #'body';
                prettyPrintSpace;
                pairSeparator;
                prettyPrintSpace;
                noProxy: false.
            self body stonOn: stonWriter ]