menu actions
menuActionBlock
  "works in concert with #menuActionSpec"

  ^ [ :actionSymbol :listElement :index | self perform: actionSymbol with: listElement with: index ]