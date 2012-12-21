accessing
windowRegistration
  | windowId |
  windowId := windowStatus windowIdNamed: #'shell' , self shellId asString.
  windowStatus windowAt: windowId put: self shellWindow