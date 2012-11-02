as yet unclassified
writeAddition: anAddition
    stream
        nextPutAll: 'Item was added:';
        cr.
    self writePatchFrom: nil to: anAddition definition