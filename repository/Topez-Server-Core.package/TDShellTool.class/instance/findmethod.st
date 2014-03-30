as yet unclassified
findmethod
  "find method [--spec|[--regex|-r]] <method-spec> 
     <method-spec>
       [#]selector
       className>>selector
       className class>>selector"

  | arg |
  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('spec' nil #'none')}.
  subOptions
    at: 'spec'
    ifPresent: [ :ignored | 
      | methodSpec |
      methodSpec := self parseMethodSpecTokens: subArguments.
      ^ self findMethodSpec: methodSpec ]
    ifAbsent: [ 
      arg := subArguments at: 1.
      subOptions
        at: 'regex'
        ifPresent: [ :ignored | ^ self findRegexMethod: arg ]
        ifAbsent: [ ^ self findMethod: arg ] ]