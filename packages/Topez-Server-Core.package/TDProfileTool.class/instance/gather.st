as yet unclassified
gather
  "pf gather"

  | profMon |
  self stop.
  profMon := self profMonitor.
  profMon results ifNil: [ profMon gatherResults ]