as yet unclassified
identityDictionary
  | ug |
  ^ (ug := System myUserProfile symbolList objectNamed: #'UserGlobals')
    at: #'USERGLOBALS_SYMBOLASSOCIATION_DICTONARY'
    ifAbsent: [ 
      ug
        at: #'USERGLOBALS_SYMBOLASSOCIATION_DICTONARY'
        put: IdentityKeyValueDictionary new ]