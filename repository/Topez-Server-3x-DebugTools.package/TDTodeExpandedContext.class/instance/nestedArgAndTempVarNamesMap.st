client list element
nestedArgAndTempVarNamesMap
  | map |
  map := Dictionary new.
  self nestedArgsAndTempsInto: map excluding: self argAndTempNames , #('self').
  ^ map