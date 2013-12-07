rsync
rsyncCopyNodeChildrenUsing: aSTONRsync
  self childrenDo: [ :child | child rsyncCopyNodeUsing: aSTONRsync ]