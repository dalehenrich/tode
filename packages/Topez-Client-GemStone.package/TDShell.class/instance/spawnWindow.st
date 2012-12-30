accessing
spawnWindow
  | spawn |
  spawn := self copy.
  spawn open.
  spawn windowRegistration.
  ^ spawn topezClient topezServerOop