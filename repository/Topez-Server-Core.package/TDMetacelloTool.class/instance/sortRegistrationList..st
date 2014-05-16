private
sortRegistrationList: list
  "dirty    (active and inactive alphabetical)
   active   (alphabetical)
   inactive (alphabetical)
   unloaded (alphabetical)"

  ^ list
    sort: [ :a :b | 
      (a isDirty and: [ b isDirty not ])
        |
          ((a isDirty and: [ b isDirty ]) and: [ a projectName <= b projectName ])
        |
          ((a isDirty not and: [ b isDirty not ])
            and: [ a isActive and: [ b isActive not ] ])
        |
          ((a isDirty not and: [ b isDirty not ])
            and: [ (a isActive and: [ b isActive ]) and: [ a projectName <= b projectName ] ])
        |
          ((a isDirty not and: [ b isDirty not ])
            and: [ 
              (a isActive not and: [ b isActive not ])
                and: [ a isLoadedInImage and: [ b isLoadedInImage not ] ] ])
        |
          ((a isDirty not and: [ b isDirty not ])
            and: [ 
              (a isActive not and: [ b isActive not ])
                and: [ 
                  (a isLoadedInImage and: [ b isLoadedInImage ])
                    and: [ a projectName <= b projectName ] ] ])
        |
          ((a isDirty not and: [ b isDirty not ])
            and: [ 
              (a isActive not and: [ b isActive not ])
                and: [ 
                  (a isLoadedInImage not and: [ b isLoadedInImage not ])
                    and: [ a projectName <= b projectName ] ] ]) ]