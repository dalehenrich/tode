menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {{('Transactions'
    ->
      {#('Commit' nil #'transactionsCommit:selectedIndex:').
      #('Abort' nil #'transactionsAbort:selectedIndex:').
      #('Auto Abort' nil #'transactionsAutoAbort:selectedIndex:' nil #'neverMind' false).
      #('Auto Commit' nil #'transactionsAutoCommit:selectedIndex:').
      #('Auto Migrate' nil #'transactionsAutoMigrate:selectedIndex:')})}.
  {('View'
    ->
      {#('New' nil #'notAvailable:selectedIndex:' nil #'neverMind' false).
      #('Open' nil #'notAvailable:selectedIndex:' nil #'neverMind' false).
      #('Remove' nil #'notAvailable:selectedIndex:' nil #'neverMind' false).
      #('Session Info' nil #'notAvailable:selectedIndex:' nil #'neverMind' false)})}.
  {('Find'
    ->
      {#('Class...' nil #'findClass:selectedIndex:').
      #('Hierarchy Browser...' nil #'findClassHierarchy:selectedIndex:').
      #('Class References...' nil #'findClassReferences:selectedIndex:').
      #('Method...' nil #'findMethodImplementors:selectedIndex:').
      #('String...' nil #'findStringNoCase:selectedIndex:').
      #('Senders...' nil #'findMethodSenders:selectedIndex:').
      #('Case Sensitive String...' nil #'findStringCaseSensitive:selectedIndex:')})}.
  {('Tools'
    ->
      {#('System Browser' nil #'attachContinuation:selectedIndex:').
      #('Open Workspaces' nil #'attachContinuation:selectedIndex:').
      #('File Browser' nil #'attachContinuation:selectedIndex:').
      #('Process Browser' nil #'attachContinuation:selectedIndex:').
      #('Inspect UndefinedSymbols' nil #'attachContinuation:selectedIndex:').
      #('Inspect Sent But Not Implemented' nil #'attachContinuation:selectedIndex:').
      #('Test Runner' nil #'attachContinuation:selectedIndex:').
      #('Monticello' nil #'attachContinuation:selectedIndex:')})}.
  {('Admin'
    ->
      {#('Repository' nil #'attachContinuation:selectedIndex:').
      #('Seaside Gems' nil #'attachContinuation:selectedIndex:').
      #('DoIt' nil #'attachContinuation:selectedIndex:').
      #('Browser Preferences' nil #'attachContinuation:selectedIndex:').
      #('Commit on Almost Out of Memory' nil #'attachContinuation:selectedIndex:').
      #('Popup on debug' nil #'attachContinuation:selectedIndex:').
      #('Send Bug Report' nil #'attachContinuation:selectedIndex:')})}.
  #('Help' nil #'attachContinuation:selectedIndex:').
  #('Debug' nil #'attachContinuation:selectedIndex:').
  {('Update'
    ->
      {#('Update GemTools Launcher' nil #'attachContinuation:selectedIndex:').
      #('Update GLASS' nil #'attachContinuation:selectedIndex:')})}.
  #('-')} , self standardMenuActionSpec