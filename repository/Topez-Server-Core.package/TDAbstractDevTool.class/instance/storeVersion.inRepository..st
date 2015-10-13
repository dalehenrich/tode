monticello
storeVersion: newVersion inRepository: targetRepo
  self validateConsistencyOfMonticelloVersion: newVersion.
  ^ targetRepo storeVersion: newVersion