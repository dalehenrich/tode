as yet unclassified
writeRemoval: aRemoval
    stream
        nextPutAll: 'Item was removed:';
        cr.
    self writePatchFrom: aRemoval definition to: nil