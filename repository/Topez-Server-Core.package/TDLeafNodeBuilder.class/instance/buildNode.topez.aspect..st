as yet unclassified
buildNode: parentNode topez: aTopez aspect: anAspect
  ^ self leafNode
    builderAspect: anAspect;
    parent: parentNode;
    contents: self contents;
    yourself