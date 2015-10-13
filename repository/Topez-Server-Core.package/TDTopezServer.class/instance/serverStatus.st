accessing
serverStatus
  "do not persist serverStatus ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  serverStatus
    ifNil: [ 
      serverStatus := TransientValue
        value:
          (TDServerStatus persistentElementCache: self persistentElementCache) ].
  serverStatus value
    ifNil: [ 
      serverStatus
        value:
          (TDServerStatus persistentElementCache: self persistentElementCache) ].
  ^ serverStatus value