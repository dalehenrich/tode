accessing
initialize
  super initialize.
  MCPlatformSupport autoCommit: true.
  MCPlatformSupport autoMigrate: true.
  objIn := TransientValue new