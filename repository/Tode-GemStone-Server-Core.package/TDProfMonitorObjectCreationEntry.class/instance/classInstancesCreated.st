accessing
classInstancesCreated
  | set entries visited |
  set := IdentitySet new.
  entries := {(self profMonEntry)}.
  visited := IdentitySet new.
  [ entries isEmpty ]
    whileFalse: [ 
      | children |
      children := IdentitySet new.
      entries
        do: [ :entry | 
          (visited includes: entry)
            ifFalse: [ 
              visited add: entry.
              entry cclass ifNotNil: [ :cls | set add: cls ].
              children addAll: entry children ] ].
      entries := children ].
  ^ set