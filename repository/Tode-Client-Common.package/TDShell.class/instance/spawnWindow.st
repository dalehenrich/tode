accessing
spawnWindow
  | spawn |
  spawn := self copy.
  spawn spawn: 'spawned' adornmentColor: self adornmentColor.
  spawn windowRegistration.
  ^ spawn