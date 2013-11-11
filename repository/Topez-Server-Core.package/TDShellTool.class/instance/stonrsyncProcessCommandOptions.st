as yet unclassified
stonrsyncProcessCommandOptions
  "
  rsync
    What to copy:
      -r, --recursive            Recurse into directories
      -R, --relative             Use relative path names
          --exclude=PATTERN      Exclude files matching PATTERN
          --exclude-from=FILE    Read exclude patterns from FILE
      -I, --ignore-times         Don''t exclude files that match length and time
          --size-only            only use file size when determining if a file should be transferred
          --modify-window=NUM    Timestamp window (seconds) for file match (default=0)
          --include=PATTERN      Don''t exclude files matching PATTERN
          --include-from=FILE    Read include patterns from FILE

    How to copy it:
      -n, --dry-run              Perform a trial run with no changes made
      -t, --times                Preserve times
      -x, --one-file-system       Don''t cross filesystem boundaries

    Destination options:
      -b, --backup                Make backups (see --suffix & --backup-dir)
          --backup-dir=DIR        Make backups into this directory
          --suffix=SUFFIX         Override backup suffix
          --existing              Only update files that already exist
          --delete                Delete files that don''t exist on the sending side
          --delete-excluded       also delete excluded files on the receiving side
          --delete-after          Receiver deletes after transfer, not during
          --force                 Force deletion of directories even if not empty
          --ignore-errors         Delete even if there are IO errors
      -u, --update                update only (don''t overwrite newer files)

    Misc Others:
      -h, --help                  show this help screen
  "

  self
    processCommandOptions:
      {#('backup' $b #'none').
      #('recursive' $r #'none').
      #('relative' $R #'none').
      #('exclude' nil #'required').
      #('exclude-from' nil #'required').
      #('ignore-times' $I #'none').
      #('size-only' nil #'none').
      #('modify-window' nil #'required').
      #('include' nil #'required').
      #('include-from' nil #'none').
      #('dry-run' $N #'none').
      #('times' $T #'none').
      #('one-file-system' $x #'none').
      #('backup-dir' nil #'required').
      #('suffix' nil #'required').
      #('existing' nil #'none').
      #('delete' nil #'none').
      #('delete-excluded' nil #'none').
      #('delete-after' nil #'none').
      #('force' nil #'none').
      #('ignore-errors' nil #'none').
      #('update' $u #'none').
      #('help' $h #'none')}