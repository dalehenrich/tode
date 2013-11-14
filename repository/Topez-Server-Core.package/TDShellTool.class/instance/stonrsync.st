as yet unclassified
stonrsync
  "
  ston rsync [option]... source [source]... destination
  "

  | sources destination |
  self stonrsyncProcessCommandOptions.
  sources := self arguments copyFrom: 1 to: arguments size - 1.
  destination := self arguments last.
  ^ self stonrsync: sources to: destination options: self options