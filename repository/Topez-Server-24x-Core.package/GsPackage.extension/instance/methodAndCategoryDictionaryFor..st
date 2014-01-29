*topez-server-24x-core
methodAndCategoryDictionaryFor: aBehavior
  "Returns a 2 element array { methodDict . categoryDict }"

  | arr |
  arr := self sessionInfoFor: aBehavior.
  ^ {(arr at: 1).
  (arr at: 2)}
