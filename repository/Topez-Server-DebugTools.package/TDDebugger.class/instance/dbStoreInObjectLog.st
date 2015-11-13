debug ops
dbStoreInObjectLog
  | logEntry |
  logEntry := DebuggerLogEntry
    error: self exception description
    continuation: self process.	"the continuation is not resumable"
  logEntry addToLog