refreshing
forceRefreshViewOn: aListElement
  "force an immediate refresh."

  self resetRefreshTimer.
  self refreshViewOn: aListElement