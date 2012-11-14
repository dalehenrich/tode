conversion
asOopTypeWith: anOopTypeClass
    "GemStone support ... certain native objects can be passed through gci interface"

    self halt.	"don't believe that this is used"
    ^ native asOopTypeWith: anOopTypeClass