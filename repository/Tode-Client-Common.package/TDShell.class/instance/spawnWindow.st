accessing
spawnWindow
  | spawn |
  spawn := self copy.
  spawn open: 'spawned' adornmentColor: self adornmentColor.
  spawn windowRegistration.
  ^ spawn