private
doInSession: aBlock
    ^ (aBlock value: self session) asTopezProxy