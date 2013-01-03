styling
shoutAboutToStyle: aPluggableShoutMorphOrView
  self clientElement ifNil: [ ^ false ].
  Transcript
    cr;
    show: 'TodeCodeEditor>>shoutAboutToStyle: ' , self clientElement editorWindowLabel.
  ^ self clientElement shoutAboutToStyle: aPluggableShoutMorphOrView