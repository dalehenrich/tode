signal handling
select: aString
  | index |
  index := self interaction labels indexOf: aString.
  self response: (self interaction values at: index ifAbsent: [ nil ])