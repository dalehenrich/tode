as yet unclassified
writeVersion: aVersion
    self writeVersionInfo: aVersion info.
    self writePatchHeader: aVersion baseInfo.
    self writePatch: aVersion patch