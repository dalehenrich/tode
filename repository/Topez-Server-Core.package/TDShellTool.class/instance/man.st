commands
man
  "
  man --help
  man --all 
  man (<command-name> | @<command-path>) [<subcommand-name>]
  man --find [--exact] <pattern>...
  man --class <class-name>...
"

  | command commandNode page |
  options at: 'all' ifPresent: [ :ignored | ^ self manAll ].
  options
    at: 'class'
    ifPresent: [ :ignored | 
      | comments |
      comments := {}.
      arguments
        do: [ :className | 
          | cls |
          (Smalltalk at: className)
            ifNotNil: [ :cls | 
              comments add: (self clscomment: cls).
              cls
                editUsing:
                  ((TDEditorSpec topez: topez editorAspect: #'classComment')
                    windowLabel: 'Class Comment for ' , cls name asString;
                    yourself) ] ].
      ^ comments ].
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
  command := arguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument (<command-name> | @<command-path>). See `man man` for details.' ].
  commandNode := (command beginsWith: '@')
    ifTrue: [ self resolveAtPathNodeReference: command ]
    ifFalse: [ topez commands at: (tokens at: 2) ].
  page := commandNode manPage.
  arguments size > 1
    ifTrue: [ page := page subCommands at: (arguments at: 2) ].
  page view: self topez.
  ^ page