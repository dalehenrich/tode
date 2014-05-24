menu action specs
methodMenuActionSpec
  ^ {#('set breakpoint' $k #'setBreakpointMenuAction:selectionInterval:dirty:').
  #('clear method breakpoints' nil #'clearBreakpointMenuAction:').
  #('clear all breakpoints' nil #'clearAllBreakpointMenuAction:').
  #('-').
  #('enable all breakpoints' nil #'enableAllBreakpointMenuAction:').
  #('disable all breakpoints' nil #'disableAllBreakpointMenuAction:').
  #('-').
  #('versions' nil #'methodVersionsMenuAction:')}