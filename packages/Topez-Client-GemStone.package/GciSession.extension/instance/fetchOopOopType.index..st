*topez-client-gemstone
fetchOopOopType: anOopType index: index
  self class gsCursor
    showWhile: [ 
      | result |
      result := self library
        critical: [ :lib | 
          lib apiGciSetSessionId: self getSessionNumber.
          lib apiGciFetchOop: (self asOopType: anOopType) a: index ].
      ^ self library oopTypeFromInteger: result ]