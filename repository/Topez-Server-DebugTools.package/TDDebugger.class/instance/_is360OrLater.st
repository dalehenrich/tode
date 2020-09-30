private
_is360OrLater
  ^ (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
    >= '3.6.0' asMetacelloVersionNumber