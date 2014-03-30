as yet unclassified
xxxx
  "self install"

  <topezCommand: 'xxxx' manPage: #'xxxManPage'>
  ^ [ :topez :objIn :tokens :command | 
  | shTool cmd sub selector |
  shTool := self topez: topez objIn: objIn todeCommand: command.
  shTool getOptsMixedLongShort: {#('a' nil #'none')}.
  shTool getSubcommandOptsMixedLongShort: {#('b' nil #'none')}.
  cmd := shTool todeCommand command.
  sub := shTool subCommand command.
  selector := (cmd , sub) asSymbol.
  shTool perform: selector ]