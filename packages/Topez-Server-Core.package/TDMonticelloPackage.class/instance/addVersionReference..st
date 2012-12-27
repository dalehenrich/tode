as yet unclassified
addVersionReference: aGoferReference
  | referenceName versions |
  referenceName := aGoferReference packageName.
  aGoferReference branch isEmpty not
    ifTrue: [ referenceName := referenceName , '.' , aGoferReference branch ].
  versions := self versionMap
    at: referenceName
    ifAbsent: [ 
      self versionMap
        at: referenceName
        put:
          (TDMonticelloVersion new
            packageName: self packageName;
            yourself) ].
  versions addVersionReference: aGoferReference