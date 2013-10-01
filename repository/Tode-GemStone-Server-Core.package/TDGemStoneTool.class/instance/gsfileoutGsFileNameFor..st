as yet unclassified
gsfileoutGsFileNameFor: clsName
  | map |
  map := Dictionary new
    at: #'CharacterCollection' put: #('charcoll.gs');
    at: #'Collection' put: #('collect.gs');
    at: #'AbstractIndexSpecification' put: #('abstractindexspec.gs');
    at: #'IdentityIndexSpecification' put: #('identityindexspec.gs');
    at: #'EqualityIndexSpecification' put: #('equalityindexspec.gs');
    at: #'RcEqualityIndexSpecification' put: #('rcequalityindexspec.gs');
    at: #'RangeIndexReadStream' put: #('rangeindexreadstr.gs');
    at: #'SetValuedPathEvaluator' put: #('setpatheval.gs');
    at: #'SetValuedPathTerm' put: #('setpathterm.gs');
    at: #'EqualityIndexQueryEvaluator' put: #('equalityquery.gs');
    at: #'IndexedQueryEvaluator' put: #('indexquery.gs');
    at: #'IdentityIndexQueryEvaluator' put: #('identityquery.gs');
    at: #'UnorderedCollection'
      put: #('unorderedcoll.gs' 'unorderedcoll2.gs' 'unorderedcoll3.gs');
    at: #'Object' put: #('object.gs' 'object2.gs' 'object3.gs');
    at: #'IndexManager' put: #('IndexManager.gs');
    at: #'RangeEqualityIndex' put: #('rangeindex.gs');
    at: #'RcRangeEqualityIndex' put: #('rcrangeindex.gs');
    yourself.
  ^ map at: clsName ifAbsent: [ {(clsName asLowercase , '.gs')} ]