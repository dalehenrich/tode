*topez-server-core
plainTextNewlinesDuring: aBlock
  | escapes |
  escapes := {}.
  escapes
    add: 10 + 1;
    add: (STONWriter stonCharacters at: 10 + 1);
    add: 13 + 1;
    add: (STONWriter stonCharacters at: 13 + 1);
    yourself.
  [ 
  "map cr and lf to pure lf (no escapes) to make text portions of file more readable in git"
  STONWriter stonCharacters
    at: 10 + 1 put: String lf;
    at: 13 + 1 put: String lf.
  aBlock value ]
    ensure: [ 1 to: escapes size by: 2 do: [ :index | STONWriter stonCharacters at: (escapes at: index) put: (escapes at: index + 1) ] ]