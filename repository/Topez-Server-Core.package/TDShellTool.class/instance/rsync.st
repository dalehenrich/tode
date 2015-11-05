as yet unclassified
rsync
  "
  rsync [option]... source [source]... destination
  "

  | sources destination |
  self rsyncProcessCommandOptions.
  arguments size < 2
    ifTrue: [ 
      self
        error:
          'Missing required arguments source [source]... destination.  See `man rsync` for details.' ].
  sources := self arguments copyFrom: 1 to: arguments size - 1.
  destination := self arguments last.
  ^ self rsync: sources to: destination options: self options