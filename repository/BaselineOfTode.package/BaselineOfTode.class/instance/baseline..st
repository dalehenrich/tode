baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec baseline: 'Ston'.
      spec
        package: 'Topez-Common-Core' with: [ spec requires: #('Ston') ];
        package: 'Topez-Server-Core'
          with: [ spec requires: #('Topez-Common-Core') ];
        package: 'Topez-Common-Tests'
          with: [ spec requires: #('Topez-Common-Core') ];
        yourself.
      spec
        group: 'Common Tests' with: #('Topez-Common-Tests');
        group: 'Visualize' with: #();
        yourself ].
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        configuration: 'FFI'
          with: [ 
              spec
                versionString: #'stable';
                repository: 'http://www.squeaksource.com/MetacelloRepository' ];
        yourself.
      spec
        package: 'GemTools-ClientGCI'
          with: [ 
              spec
                includes: #('GemTools-ClientSession');
                requires: #('FFI') ];
        package: 'GemTools-ClientSession'
          with: [ 
              spec
                includes: #('GemTools-ClientPlatform');
                requires: #('GemTools-ClientGCI') ];
        package: 'GemTools-ClientPlatform'
          with: [ spec requires: #('GemTools-ClientSession') ];
        yourself ].
  spec
    for: #'pharo'
    do: [ 
      spec
        baseline: 'Ston'
        with: [ spec repository: 'github://dalehenrich/ston:pharo/repository' ].
      spec
        package: 'Topez-Pharo-Common';
        package: 'Tode-Pharo-Server-Core'
          with: [ 
              spec
                postLoadDoIt: #'initializeTools';
                requires: #('Topez-Server-Core') ];
        package: 'Tode-Client-Common'
          with: [ spec requires: #('Topez-Common-Core' 'Topez-Pharo-Common') ];
        package: 'Topez-Client-GemStone'
          with: [ spec requires: #('GemTools-ClientGCI' 'Tode-Client-Common') ];
        package: 'Tode-Client-Pharo'
          with: [ spec requires: #('Tode-Client-Common') ];
        package: 'Tode-Client-ServerBlocks'
          with: [ spec requires: #('Tode-Client-Common') ];
        package: 'Topez-ClientTravis-Tests'
          with: [ spec requires: #('Topez-Client-GemStone') ];
        yourself.
      spec
        group: 'default' with: #('GemStone');
        group: 'GemStone'
          with: #('Topez-Client-GemStone' 'Tode-Client-ServerBlocks');
        group: 'Pharo' with: #('Tode-Pharo-Server-Core' 'Tode-Client-Pharo');
        group: 'GemStone Tests' with: #('Topez-ClientTravis-Tests');
        group: 'GemStone Dev'
          with: #('GemStone' 'Common Tests' 'GemStone Tests');
        group: 'Pharo Dev' with: #('Pharo' 'Common Tests');
        yourself ].
  spec
    for: #'pharo1.4.x'
    do: [ 
      spec
        package: 'Topez-Pharo-Common' with: [ spec includes: 'Tode-Pharo14' ];
        package: 'Tode-Pharo14' with: [ spec requires: 'Topez-Pharo-Common' ];
        yourself ].
  spec
    for: #(#'pharo3.x' #'pharo4.x')
    do: [ 
      spec
        configuration: 'Roassal2'
          with: [ 
              spec
                versionString: '1.52';
                repository:
                    'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main';
                loads: #('Trachel' 'Roassal2') ];
        yourself.
      spec
        package: 'Tode-Client-Roassal2'
          with: [ spec requires: #('Tode-Client-ServerBlocks') ];
        package: 'TPZ-Talk'
          with: [ 
              spec
                requires: #('Ston' 'Roassal2');
                repository:
                    'http://smalltalkhub.com/mc/PierreChanson/TPZ-Talk/main' ];
        group: 'Visualize' with: #('TPZ-Talk' 'Tode-Client-Roassal2');
        yourself ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'GLASS1'
          with: [ 
              spec
                loads: #('Base');
                repository: 'github://glassdb/glass:master/repository' ];
        baseline: 'Metacello'
          with: [ spec repository: 'github://dalehenrich/metacello-work:master/repository' ];
        baseline: 'RB'
          with: [ 
              spec
                loads: #('AST-Core');
                repository: 'github://dalehenrich/rb:dev/repository' ];
        baseline: 'Ston'
          with: [ spec repository: 'github://GsDevKit/ston:v0.5.?/repository' ];
        baseline: 'FileTree'
          with: [ spec repository: 'github://dalehenrich/filetree:gemstone2.4_dev/repository' ];
        yourself.
      spec
        package: 'Tode-AST-Extensions' with: [ spec requires: #('RB') ];
        package: 'Topez-Server-Core'
          with: [ 
              spec
                postLoadDoIt: #'initializeTools';
                requires:
                    #('Tode-AST-Extensions' 'FileTree' 'GLASS1' 'Metacello') ];
        package: 'Tode-BatchEdit-Tool'
          with: [ spec requires: #('Topez-Server-Core') ];
        package: 'Tode-GemStone-Server-Core'
          with: [ 
              spec
                postLoadDoIt: #'initializeTools';
                requires: #('Topez-Server-Core') ];
        package: 'Topez-Server-Tests'
          with: [ 
              spec
                includes: #('Tode-GemStone-Server-Tests');
                requires: #('Topez-Server-Core') ];
        package: 'Tode-GemStone-Server-Tests'
          with: [ spec requires: #('Topez-Server-Tests') ];
        package: 'Topez-Server-CypressTools'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-TestTools'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-TestDebugTools'
          with: [ spec requires: #('Topez-Server-DebugTools' 'Topez-Server-Tests') ];
        package: 'Topez-Server-ProcessTools'
          with: [ spec requires: #('Topez-Server-Core' 'Topez-Server-DebugTools') ];
        package: 'Topez-Server-TestProcessTools'
          with: [ spec requires: #('Topez-Server-ProcessTools' 'Topez-Server-TestTools') ];
        package: 'Tode-Server-TestTestTools'
          with: [ spec requires: 'Topez-Server-TestTools' ];
        package: 'Topez-Server-Obsolete'
          with: [ spec requires: #('Topez-Server-Core') ];
        package: 'Tode-ToDo' with: [ spec requires: #('Topez-Server-Core') ];
        yourself.
      spec
        group: 'default' with: #('GemStone');
        group: 'GemStone'
          with:
            #('Tode-GemStone-Server-Core' 'Topez-Server-DebugTools' 'Topez-Server-ProcessTools' 'Topez-Server-TestTools' 'Rewrite');
        group: 'GemStone Tests'
          with:
            #('Common Tests' 'Topez-Server-Tests' 'Topez-Server-TestDebugTools' 'Tode-Server-TestTestTools');
        group: 'GemStone Dev' with: #('GemStone' 'GemStone Tests');
        group: 'Rewrite' with: #('Tode-BatchEdit-Tool');
        yourself ].
  spec
    for: #'gs2.4.x'
    do: [ 
      spec
        package: 'Topez-Server-Core'
          with: [ spec includes: 'Topez-Server-24x-Core' ];
        package: 'Topez-Server-24x-Core'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Topez-Server-24x-DebugTools' ];
        package: 'Topez-Server-24x-DebugTools'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        package: 'Topez-Server-Tests'
          with: [ spec includes: 'Topez-Server-24x-Tests' ];
        package: 'Topez-Server-24x-Tests'
          with: [ spec requires: 'Topez-Server-Tests' ];
        package: 'Tode-GemStone-Server-Core'
          with: [ spec includes: #('Tode-GemStone-Core2x') ];
        package: 'Tode-GemStone-Core2x'
          with: [ spec requires: #('Tode-GemStone-Server-Core') ];
        yourself ].
  spec
    for: #'gs3.x'
    do: [ 
      spec
        package: 'Topez-Server-Core'
          with: [ spec includes: 'Topez-Server-3x-Core' ];
        package: 'Topez-Server-3x-Core'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Topez-Server-3x-DebugTools' ];
        package: 'Topez-Server-3x-DebugTools'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        package: 'Topez-Server-Tests'
          with: [ spec includes: 'Topez-Server-31x-Tests' ];
        package: 'Topez-Server-31x-Tests'
          with: [ spec requires: 'Topez-Server-Tests' ];
        package: 'Tode-GemStone-Server-Core'
          with: [ spec includes: #('Tode-GemStone-Core3x') ];
        package: 'Tode-GemStone-Core3x'
          with: [ spec requires: #('Tode-GemStone-Server-Core') ];
        yourself ].
  spec
    for: #'gs3.0.x'
    do: [ 
      spec
        package: 'Topez-Server-Core'
          with: [ spec includes: 'Topez-Server-30x-Core' ];
        package: 'Topez-Server-30x-Core'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Topez-Server-30x-DebugTools' ];
        package: 'Topez-Server-30x-DebugTools'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        yourself ].
  spec
    for: #'gs3.1.x'
    do: [ 
      spec
        package: 'Topez-Server-Core'
          with: [ spec includes: 'Topez-Server-31x-Core' ];
        package: 'Topez-Server-31x-Core'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Tode-Server-31x-GsProcess-Patch' ];
        package: 'Tode-Server-31x-GsProcess-Patch'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        yourself ].
  spec
    for: #'gs3.2.x'
    do: [ 
      spec
        package: 'Topez-Server-Core'
          with: [ spec includes: 'Topez-Server-32x-Core' ];
        package: 'Topez-Server-32x-Core'
          with: [ spec requires: 'Topez-Server-Core' ];
        yourself ].
  spec
    for: #'gs3.3.x'
    do: [ 
      spec
        package: 'Tode-GemStone-Server-Core'
          with: [ spec includes: 'Topez-GemStone-Server-33x-Core' ];
        package: 'Topez-GemStone-Server-33x-Core'
          with: [ spec requires: 'Tode-GemStone-Server-Core' ];
        package: 'Topez-Server-Core'
          with: [ spec includes: 'Topez-Server-33x-Core' ];
        package: 'Topez-Server-33x-Core'
          with: [ spec requires: 'Topez-Server-Core' ];
        yourself ].
  spec
    for: #(#'gs3.1.x' #'gs3.2.x' #'gs3.3.x')
    do: [ 
      spec
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Topez-Server-31x-DebugTools' ];
        package: 'Topez-Server-31x-DebugTools'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        yourself ].
  spec
    for: #'maglev'
    do: [ 
      spec
        package: 'Topez-MagLev-Core'
          with: [ spec requires: 'Topez-Common-Core' ];
        yourself.
      spec
        package: 'Topez-Common-Core'
        with: [ spec includes: 'Topez-MagLev-Core' ] ]