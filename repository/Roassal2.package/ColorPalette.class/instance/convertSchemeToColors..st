private - processing
convertSchemeToColors: aCollectionOfRGB256triplets

	^  aCollectionOfRGB256triplets collect: [:triplet | Color fromRgb256Triplet: triplet ] 