commands
man
  "
  man --help
  man --all 
  man (<command-name> | @<command-path>) [<subcommand-name>]
  man --find [--exact] <pattern>...
  "

  | command commandNode page |
  self
    getOptsMixedLongShort:
      {#('all' nil #'none').
      #('exact' nil #'none').
      #('find' nil #'none').
      #('help' $h #'none')}.
  options at: 'help' ifPresent: [ :ignored | ^ self man: 'man' ].
  options
    at: 'all'
    ifPresent: [ :ignored | 
      | manPages browser |
      browser := TDManPageBrowser new
        topez: topez;
        windowLabel: 'All man pages';
        manPagesBlock: [ self topez commands values collect: [ :cmd | cmd manPage ] ];
        yourself.
      browser open.
      ^ browser manPages ].
  options
    at: 'find'
    ifPresent: [ :ignored | 
      | block browser pattern |
      pattern := ''.
      arguments do: [ :arg | pattern := pattern , ' ' , arg ].
      block := [ 
      | manPages results |
      results := Set new.
      manPages := self topez commands values collect: [ :cmd | cmd manPage ].
      arguments
        do: [ :arg | 
          options
            at: 'exact'
            ifPresent: [ :ignored | results addAll: (manPages select: [ :manPage | manPage exactSearch: arg ]) ]
            ifAbsent: [ 
              | regex |
              regex := self findRegex: arg.
              results
                addAll:
                  (manPages select: [ :manPage | manPage regexSearch: regex ]) ] ].
      results asArray ].
      browser := TDManPageBrowser new
        topez: topez;
        windowLabel: 'Man pages matching' , pattern;
        manPagesBlock: block;
        yourself.
      browser open.
      ^ browser manPages ].
  command := arguments at: 1.
  commandNode := (command beginsWith: '@')
    ifTrue: [ self resolveAtPathNodeReference: command ]
    ifFalse: [ topez commands at: (tokens at: 2) ].
  page := commandNode manPage.
  arguments size > 1
    ifTrue: [ page := page subCommands at: (arguments at: 2) ].
  page view: self topez.
  ^ page