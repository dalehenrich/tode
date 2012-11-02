api
diffModifiedPackagesForProjectNamed: projectName
    | modifiedPackages stream diffy |
    modifiedPackages := self modifiedPackagesForProjectNamed: projectName.
    modifiedPackages isEmpty
        ifTrue: [ ^ 'Empty modified packages list...no packages committed' ].
    stream := WriteStream on: String new.
    diffy := MCDiffyTextWriter on: stream.
    modifiedPackages keys
        do: [ :packageName | 
            | wc package snapshot info ancestorSnapshot |
            wc := MCWorkingCopy registry detect: [ :each | each packageName = packageName ].
            package := wc package.
            snapshot := package snapshot.
            info := wc ancestors first.
            ancestorSnapshot := wc findSnapshotWithVersionInfo: info.
            diffy writePatch: (snapshot patchRelativeToBase: ancestorSnapshot) ].
    ^ stream contents	"| stream diffy diffyVersion wc mcVersion1 mcVersion2 package snapshot ancestorSnapshot info |
stream := WriteStream on: String new.
diffy := MCDiffyTextWriter on: stream.
wc := MCWorkingCopy registry detect: [:each | each packageName = 'Topez-Common-Core'].
package := wc package.
snapshot := package snapshot.
info := wc ancestors first.
ancestorSnapshot := wc findSnapshotWithVersionInfo: info .
wc.
diffy writePatch: (snapshot  patchRelativeToBase: ancestorSnapshot).
stream contents withUnixLineEndings"