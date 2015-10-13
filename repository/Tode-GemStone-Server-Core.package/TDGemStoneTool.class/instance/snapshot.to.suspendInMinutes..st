bu
snapshot: snapshotExtension to: snapshotPath suspendInMinutes: suspendInMinutes
  ^ self
    snapshot: snapshotExtension
    to: snapshotPath
    suspendInMinutes: suspendInMinutes
    safely: false