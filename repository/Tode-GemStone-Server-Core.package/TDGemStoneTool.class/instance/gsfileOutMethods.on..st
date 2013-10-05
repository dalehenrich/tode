as yet unclassified
gsfileOutMethods: cls on: aStream
  | nm sels cat |
  nm := cls name asString.
  aStream lf.
  aStream
    nextPutAll: '! Remove existing behavior from ';
    nextPutAll: nm;
    lf;
    nextPutAll: 'removeallmethods ' , nm;
    lf;
    nextPutAll: 'removeallclassmethods ' , nm;
    lf;
    nextPutAll: '! ------------------- Class methods for ';
    nextPutAll: nm;
    lf.
  sels := SortedCollection withAll: cls class selectors.
  1 to: sels size do: [ :i | 
    | sel |
    sel := sels at: i.
    aStream
      nextPutAll: 'category: ''';
      nextPutAll: (cls class _categoryOfSelector: sel);
      nextPut: $';
      lf.
    cls class fileOutMethod: sel on: aStream ].
  aStream
    nextPutAll: '! ------------------- Instance methods for ';
    nextPutAll: nm;
    lf.
  sels := SortedCollection withAll: cls selectors.
  1 to: sels size do: [ :i | 
    | sel |
    sel := sels at: i.
    aStream
      nextPutAll: 'category: ''';
      nextPutAll: (cls _categoryOfSelector: sel);
      nextPut: $';
      lf.
    cls fileOutMethod: sel on: aStream ].
  cat := cls _classCategory.	"File out the category name"
  cat ~~ nil
    ifTrue: [ 
      aStream
        nextPutAll: 'expectValue %Boolean';
        lf;
        nextPutAll:
            'doit
';
        nextPutAll: nm;
        nextPutAll: ' category: ';
        nextPutAll: cat quoted , '.';
        lf;
        nextPutAll: 'true';
        lf;
        nextPut: $%;
        lf ]