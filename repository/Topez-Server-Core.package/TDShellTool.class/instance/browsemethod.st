browse
browsemethod
  "
  browse method <selector>...
  browse method ( --regex | -r ) <method-pattern>...
  browse method --spec <method-spec>...
"

  | block label |
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' $r #'none').
      #('spec' nil #'none')}.
  label := 'Implementors of'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ 
  | list |
  list := self findMethod.
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: label