menu actions
profileItMenuAction: listElement selectedText: selectedString
  "100 timesRepeat: [| ar | 
     ar := {}.
     1 to: 10000 do: [:i | 
       ar add: i printString -> i ] ]"

  | tpz pfTool |
  tpz := listElement topez.
  pfTool := tpz toolInstanceFor: 'pf'.
  pfTool
    pfmonitor: [ self evaluateString: selectedString topez: listElement topez ];
    pfview.
  ^ true