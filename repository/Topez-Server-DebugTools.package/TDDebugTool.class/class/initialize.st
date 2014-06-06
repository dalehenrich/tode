initialization
initialize
  "self initialize"

  self install.
  SystemLoginNotification subscribe: self name.
  self sessionStart