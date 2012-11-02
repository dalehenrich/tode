as yet unclassified
writeModification: aModification
    stream
        nextPutAll: 'Item was changed:';
        cr.
    self writePatchFrom: aModification obsoletion to: aModification definition