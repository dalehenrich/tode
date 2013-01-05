as yet unclassified
critical: aBlock
  [ ^ self class critical: aBlock ]
    ifCurtailed: [ 
      Transcript
        cr;
        show: 'TZGemStoneProxyBehavior>>critical: curtailed' ]