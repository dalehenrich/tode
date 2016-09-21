baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'Ston'
          with: [ 
              spec
                loads: #('UTF8');
                repository: 'github://GsDevKit/ston:v0.9.4/repository' ];
        yourself.
      spec
        package: 'Topez-Common-Core' with: [ spec requires: #('Ston') ];
        package: 'Topez-Server-Core'
          with: [ spec requires: #('Topez-Common-Core') ];
        package: 'Topez-Common-Tests'
          with: [ spec requires: #('Topez-Common-Core') ];
        yourself.
      spec
        group: 'CI' with: #('Common Tests');
        group: 'Common Tests' with: #('Topez-Common-Tests');
        group: 'Visualize' with: #('');
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
        package: 'Topez-Common-Core'
          with: [ spec includes: #('Topez-Common-Pharo-Core') ];
        package: 'Topez-Common-Pharo-Core'
          with: [ spec requires: #('Topez-Common-Core') ];
        package: 'Topez-Pharo-Common';
        package: 'Tode-Pharo-Server-Core'
          with: [ 
              spec
                postLoadDoIt: #'initializeTools';
                requires: #('Topez-Server-Core') ];
        package: 'Tode-Client-Common'
          with: [ 
              spec
                postLoadDoIt: #'pharo30InstallTodeClient';
                requires: #('Topez-Common-Core' 'Topez-Pharo-Common') ];
        package: 'Topez-Client-GemStone'
          with: [ 
              spec
                postLoadDoIt: #'pharo30InstallFullTodeClient';
                requires: #('GemTools-ClientGCI' 'Tode-Client-Common') ];
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
        group: 'Common-Core' with: #('Topez-Common-Core');
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
    for: #'pharo5.x'
    do: [ 
      spec
        baseline: 'GemStoneGCI'
          with: [ 
              spec
                loads: #('Core' 'Tests');
                repository: 'github://GsDevKit/GemStone-GCI:master/repository' ];
        yourself.
      spec
        package: 'Tode-Minimal-Client-Core'
          with: [ spec requires: #('Topez-Common-Core' 'GemStoneGCI') ];
        package: 'Tode-Minimal-Client-Debugger'
          with: [ spec requires: 'Tode-Minimal-Client-Core' ];
        package: 'Tode-Minimal-Client-Tests'
          with: [ spec requires: 'Tode-Minimal-Client-Core' ];
        yourself.
      spec
        group: 'Minimal Client'
          with: #('Tode-Minimal-Client-Core' 'Tode-Minimal-Client-Debugger');
        group: 'Minimal Tests'
          with: #('Topez-Common-Tests' 'Tode-Minimal-Client-Tests');
        yourself ].
  spec
    for: #'gemstone'
    do: [ 
      spec postLoadDoIt: #'initializeTools'.
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
        baseline: 'FileTree'
          with: [ spec repository: 'github://dalehenrich/filetree:gemstone2.4_dev/repository' ];
        baseline: 'ZincHTTPComponents'
          with: [ 
              spec
                repository: 'github://GsDevKit/zinc:2.4.3.?/repository';
                loads: #('Zinc-HTTP' 'SSL') ];
        yourself.
      spec
        package: 'Tode-AST-Extensions' with: [ spec requires: #('RB') ];
        package: 'Tode-GemStone-Server-Base'
          with: [ spec requires: #('Topez-Server-Core') ];
        package: 'Topez-Server-Core'
          with: [ 
              spec
                includes: #('Tode-GemStone-Server-Base');
                requires:
                    #('Tode-AST-Extensions' 'FileTree' 'GLASS1' 'Metacello' 'ZincHTTPComponents') ];
        package: 'Tode-BatchEdit-Tool'
          with: [ spec requires: #('Topez-Server-Core') ];
        package: 'Tode-GemStone-Server-Core'
          with: [ spec requires: #('Tode-GemStone-Server-Base') ];
        package: 'Topez-Server-Tests'
          with: [ 
              spec
                includes: #('Tode-GemStone-Server-Tests');
                requires: #('Tode-GemStone-Server-Core') ];
        package: 'Tode-GemStone-Server-Tests'
          with: [ spec requires: #('Topez-Server-Tests') ];
        package: 'Topez-Server-CypressTools'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-TestTools'
          with: [ spec requires: 'Topez-Server-Core' ];
        package: 'Topez-Server-DebugTools'
          with: [ spec requires: 'Tode-GemStone-Server-Core' ];
        package: 'Topez-Server-TestDebugTools'
          with: [ spec requires: #('Topez-Server-DebugTools' 'Topez-Server-Tests') ];
        package: 'Topez-Server-ProcessTools'
          with: [ spec requires: #('Tode-GemStone-Server-Core' 'Topez-Server-DebugTools') ];
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
        group: 'CI' with: #('GemStone' 'GemStone Tests' 'Rewrite');
        group: 'Remote Server' with: #();
        yourself ].
  spec
    for: #'gs2.4.x'
    do: [ 
      spec
        package: 'Tode-GemStone-Server-Base'
          with: [ spec includes: 'Topez-Server-24x-Core' ];
        package: 'Topez-Server-24x-Core'
          with: [ 
              spec
                postLoadDoIt: #'initializeTools';
                requires: 'Tode-GemStone-Server-Base' ];
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
        package: 'Tode-GemStone-Server-Base'
          with: [ spec includes: 'Topez-Server-3x-Core' ];
        package: 'Topez-Server-3x-Core'
          with: [ 
              spec
                postLoadDoIt: #'initializeTools';
                requires: 'Tode-GemStone-Server-Base' ];
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
        package: 'Tode-GemStone-Server-Tests'
          with: [ spec includes: #('Tode-GemStone-Server3x-Tests') ];
        package: 'Tode-GemStone-Server3x-Tests'
          with: [ spec requires: #('Tode-GemStone-Server-Tests') ];
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
    for: #(#'gs3.3.x')
    do: [ 
      spec
        package: 'Tode-GemStone-Remote-Server'
          with: [ spec includes: 'Tode-GemStone-Remote330-Server' ];
        package: 'Tode-GemStone-Remote330-Server'
          with: [ spec requires: 'Tode-GemStone-Remote-Server' ];
        yourself ].
  spec
    for: #(#'gs3.4.x')
    do: [ 
      spec
        package: 'Tode-GemStone-Remote-Server'
          with: [ spec includes: 'Tode-GemStone-Remote340-Server' ];
        package: 'Tode-GemStone-Remote340-Server'
          with: [ spec requires: 'Tode-GemStone-Remote-Server' ];
        yourself ].
  spec
    for: #(#'gs3.3.x' #'gs3.4.x')
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
        package: 'Tode-Remote-Server';
        package: 'Tode-GemStone-Remote-Server'
          with: [ spec requires: 'Topez-GemStone-Server-33x-Core' ];
        yourself.
      spec
        group: 'GemStone'
          with: #('Tode-Remote-Server' 'Tode-GemStone-Remote-Server');
        group: 'Remote Server' with: #('Tode-Remote-Server');
        yourself ].
  spec
    for: #(#'gs3.1.x' #'gs3.2.x' #'gs3.3.x' #'gs3.4.x')
    do: [ 
      spec
        package: 'Topez-Server-DebugTools'
          with: [ spec includes: 'Topez-Server-31x-DebugTools' ];
        package: 'Topez-Server-31x-DebugTools'
          with: [ spec requires: 'Topez-Server-DebugTools' ];
        yourself ].
  spec
    for: #(#'gs3.3.1.x' #'gs3.3.2.x' #'gs3.3.3.x' #'gs3.4.x')
    do: [ 
      spec
        package: 'Tode-GemStone-Core331x'
          with: [ spec requires: 'Tode-GemStone-Core3x' ];
        package: 'Tode-GemStone-Core3x'
          with: [ spec includes: 'Tode-GemStone-Core331x' ];
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