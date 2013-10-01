as yet unclassified
gsfileoutGsFileNameFor: clsName
  | map |
  map := Dictionary new
    at: #'CharacterCollection' put: 'charcoll.gs';
    at: #'AbstractIndexSpecification' put: 'abstractindexspec.gs';
    at: #'IdentityIndexSpecification' put: 'identityindexspec.gs';
    at: #'EqualityIndexSpecification' put: 'equalityindexspec.gs';
    at: #'RcEqualityIndexSpecification' put: 'rcequalityindexspec.gs';
    yourself.
  ^ map at: clsName ifAbsent: [ clsName asLowercase , '.gs' ]