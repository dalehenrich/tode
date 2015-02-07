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
      {#('System Browser' nil #'toolSystemBrowser:selectedIndex:').
      #('Open Workspaces' nil #'toolOpenWorkspaces:selectedIndex:').
      #('File Browser' nil #'notAvailable:selectedIndex:' nil #'neverMind' false).
      #('Process Browser' nil #'toolProcessBrowser:selectedIndex:').
      #('Inspect UndefinedSymbols' nil #'toolUndefinedSymbols:selectedIndex:').
      #('Inspect Sent But Not Implemented' nil #'toolSentButNotImplemented:selectedIndex:').
      #('Test Runner' nil #'toolTestClass:selectedIndex:').
      #('Monticello' nil #'toolMonticelloBrowser:selectedIndex:')})}.
  {('Admin'
    ->
      {{('Repository'
        ->
          {#('List backup files' nil #'repositoryListBackup:selectedIndex:').
          #('Backup' nil #'repositoryMakeBackup:selectedIndex:').
          #('Restore from Backup' nil #'repositoryRestoreFromBackup:selectedIndex:').
          #('-').
          #('Mark for Collection' nil #'repositoryMFC:selectedIndex:')})}.
      #('-').
      {('DoIt'
        ->
          {#('Changed packages & methods' nil #'doitChangedPackagesAndMethods:selectedIndex:').
          {('Configuration Reports'
            ->
              {#('Gem Configuration Report' nil #'doitGemConfigReport:selectedIndex:').
              #('Stone Configuration Report' nil #'doitStoneConfigReport:selectedIndex:')})}.
          #('Empty Object Log' nil #'doitClearObjectLog:selectedIndex:').
          #('File Size Report' nil #'doitFileSizeReport:selectedIndex:').
          #('Object Log' nil #'doitViewObjectLog:selectedIndex:').
          #('User Session Report' nil #'doitSessionReport:selectedIndex:').
          {('Version Reports'
            ->
              {#('Client Version Report' nil #'doitClientVersionReport:selectedIndex:').
              #('Gem Version Report' nil #'doitGemVersionReport:selectedIndex:').
              #('Stone Version Report' nil #'doitStoneVersionReport:selectedIndex:')})}})}.
      #('-').
      #('Browser Preferences' nil #'notAvailable:selectedIndex:' nil #'neverMind' false).
      #('-').
      #('Commit on Almost Out of Memory' nil #'notAvailable:selectedIndex:' nil #'neverMind' false).
      #('Popup on debug' nil #'notAvailable:selectedIndex:' nil #'neverMind' false).
      #('-').
      #('Send Bug Report' nil #'notAvailable:selectedIndex:' nil #'neverMind' false)})}.
  #('Help' nil #'help:selectedIndex:').
  {('Debug...'
    ->
      {#('Remove Continuations from Object Log' nil #'debugRemoveObjectLogContinuations:selectedIndex:').
      #('Clear Object Log' nil #'doitClearObjectLog:selectedIndex:').
      #('Debug Continuations' nil #'debugViewObjectLogContinuations:selectedIndex:')})}.
  {('Update'
    ->
      {#('Update GemTools Launcher' nil #'attachContinuation:selectedIndex:').
      #('Update GLASS' nil #'attachContinuation:selectedIndex:')})}.
  #('-')} , self standardMenuActionSpec