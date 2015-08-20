switch actions
switchActionBlock
  ^ [ :clientButtonBarElement :selector | self object perform: selector with: clientButtonBarElement ]