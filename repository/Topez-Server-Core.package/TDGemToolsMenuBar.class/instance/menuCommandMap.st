accessing
menuCommandMap
  " slot 1 :: tODE command name
  slot 2 :: text to highlight in man page ... typically the command or subcommand"

  ^ Dictionary new
    at: 'Commit'
      put:
        {'commit'.
          'commit'};
    at: 'Abort'
      put:
        {'abort'.
          'abort'};
    at: 'Auto Abort'
      put:
        {''.
          ''};
    at: 'Auto Commit'
      put:
        {'limit'.
          'autoCommit'};
    at: 'Auto Migrate'
      put:
        {'limit'.
          'autoMigrate'};
    at: 'Class...'
      put:
        {'browse'.
          'browse class'.
          'class'};
    at: 'Hierarchy Browser...'
      put:
        {'browse'.
          '--hier'.
          'class'};
    at: 'Class References...'
      put:
        {'browse'.
          'browse references'.
          'references'};
    at: 'Method...'
      put:
        {''.
          ''};
    at: 'String...'
      put:
        {''.
          ''};
    at: 'Senders...'
      put:
        {''.
          ''};
    at: 'Case Sensitive String...'
      put:
        {''.
          ''};
    yourself