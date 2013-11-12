commit 1bca882b4bf32ca42824a0dd06dec330527b5951
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Nov 11 17:52:11 2013 -0800

    Rename some of the methods. getOpts* is a better pattern ... monkey with TDManPage to make it easier to create a man page for a script (in the script), also add EXAMPLES section to man page

commit 7f2109d2614dd2829eaa29216793cf7ac78e4436
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Nov 11 14:50:00 2013 -0800

    Issue #16: fix a parsing error (plus tests) ... move helper method for doing mixed long and short getOpts from gs tool to TDCommandLine and TDCommandGetOpts ... beef up `gs fileout` command for class/package/category fileouts with options!... write methods as UTF8 ... consolidate fileout methods ..

commit 0328a9f78794663b877954c52cf3c154dd3f2f4f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Nov 11 08:43:45 2013 -0800

    Issue #16: add in escape character ($`) for arguments ... consolidate argument parsing

commit 069f7253ee6c735bebc27039da7475ed1633f8d2
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Nov 11 07:33:08 2013 -0800

    Issue #37: attack `ston rsync` implementation ... TDSTONRsync is my visitor ...

commit ac63e0292aab412ba4435dd5abeb177b33c2f95b
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 17:21:53 2013 -0800

    checkpoint scripts"
    `

commit ca4621f7b19e2e762b55314f3cec55d65408d105
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 16:57:12 2013 -0800

    Issue #16: splice the short/long/mixed option handling into TDAbstractDevTool ... TDAbstractDevTool>>processCommandOptions: helper method for creating mixed option specs and getting command options ... implement option/arg handling for `ston rsync` command

commit 46cb1ad8f7e1a1f9d82ed8949b91c23fcbec3bf7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 15:31:33 2013 -0800

    Issue #16: now handling short/long/mixed getopts ...

commit 6af0fccbd7ca327779d24afc70049dca0ae4a941
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 14:00:04 2013 -0800

    Issue #16: okay, okay, add long getOpts support ... next up is mixed long/short support...might as well just bite the bullet

commit 3a6f7a3cecd35b4be60467d3d6efe84a05beb30e
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 12:17:09 2013 -0800

    Issue #16: change TDAbstractDevTool args IV to arguments...

commit 134c091ace3ac4fda02ef70ee8e8ed0466d45713
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 12:15:57 2013 -0800

    Issue #16: TDCommandLine integration complete including getOpt support... current scheme for command blocks is: [:topez :objIn :tokens :todeCommand | ... ] but tokens arg tends to be ignored in favor of todeCommand arg ... tokens IV in TDAbstractDevTool is set automatically ... for handling options http://www.gnu.org/software/libc/manual/html_node/Getopt.html#Getopt was used as spec and the options/args IVs set by calling TDAbstractDevTool>>getOpts: with an optionsSpec (i.e., 'abc:') ... long options not supported yet

commit 86142b025faf27fdfaa3dcf25f00d67168376b81
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 11:27:24 2013 -0800

    Issue #16: convert all command blocks to the form: [ :topez :objIn :tokens :command | ]...convert subCommands to use: TDAbstractDevTool class>>performSubCommand:objIn:todeCommand: ...add better subCommand support to TDCommandLine (teach it to respect subCommands) ... still need to remove windowId and tokens instance variables from TDAbstractDevTool ...  TDTopezServer>>evaluateCommand:objIn: and TDTopezServer>>evaluateSTONCommand: are now the primary entry points for command processing ...

commit 89d5e47e26cfc08671091202691570ddb895dfed
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 08:06:25 2013 -0800

    TDCommandLine object passed over wire instead of parsed tokens ... ball is in servers court

commit 164f2e632b3bf2942f01475dbaa5052978f8a14e
Merge: 8677fd2 ebef4b1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 07:49:48 2013 -0800

    Merge branch 'dev' of github.com:dalehenrich/tode into dev

commit 8677fd2222c3fa1d0bfbdc3341d0c98a004e6893
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 07:49:14 2013 -0800

    checkpoint scripts

commit 768970b5a01c61f5b11202221ade7a79a0c909ba
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 07:47:22 2013 -0800

    Issue #16: merge TDCommandGetOpts into TDCommandLine ... ready for trial by fire

commit b572dac4a255c8c80a741fd8c22d81d45be50ef7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Nov 10 06:33:11 2013 -0800

    checkpoint: Issue #16: writing getOpts for tODE in preparation for Issue #37: `ston rsync`

commit 0b5a3c08b4f6a0c8a939980e57e60057af70c9f4
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 16:02:33 2013 -0800

    update scripts

commit ebef4b12608d15307b7a3f58c1b0b4ea5ff7d3e6
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 15:40:51 2013 -0800

    work on getting Pharo2.0 to run tests

commit 5b58e3b9ad7a53d7814612c408ee4fa19db4872a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 15:34:25 2013 -0800

    add support for GsInspectInteraction (Object>>inspect)

commit 0cc734ba296126337264a55258905ea90b4a13ea
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 14:32:12 2013 -0800

    Issue #41: `mr creds` command command for setting user and password for a repository (plus api). `set user/password` menu item defined as well.

commit 92f429f8fa30426c5f95efa0fa8d904fd5abda72
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 11:46:47 2013 -0800

    use latest update gemstone to 3.1.0.4 and add Pharo-2.0 to lineup

commit 336bee5b4ce92061b35fd88afe9fdf04cd85c6f6
Merge: 6dae718 f8efc16
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 11:38:41 2013 -0800

    Merge branch 'master' into dev

commit 6dae718aabbe4b0482f854531abf990958837bdc
Merge: fa48d2e 9fed076
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 11:37:39 2013 -0800

    Merge branch 'dev' of github.com:dalehenrich/tode into dev

commit fa48d2ebf15bff274f5bce7961100fa45e5204d8
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 11:37:01 2013 -0800

    Issue #41: hook up password dialog support

commit f8efc169d41931a3fae8b45eae8ee83dce033a36
Merge: 57d270c 9fed076
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 11:21:42 2013 -0800

    Merge branch 'dev'

commit 9fed076a314934d582af6d4680956f906b3912ac
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 11:15:14 2013 -0800

    go for the gusto and load GLASS1 straight up

commit 4de01063969e427025ab6f774c7c20bac5fdc578
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 10:55:44 2013 -0800

    spell ConfigurationOfGLASS correctly

commit 835b053b06b9c3af069a59bc5848782ac1694afa
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 10:37:28 2013 -0800

    isolate platform specific builderCI code

commit afd1cc50bb02f86888d9ba8e5e017fc60d4b1bf1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 09:30:44 2013 -0800

    Issue #41: add support for request password dialog

commit 8f5d4578166494bc6df998d2b74ebf0e877a5115
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 09:05:12 2013 -0800

    Issue #51: remove remnants fo TDInteractionRequext and friends, using GSInteractions instead...

commit 3ab6c780fbff51829172fc78702619e79a2f483d
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 08:00:36 2013 -0800

    go with the full monty in loading up GLASS1 and update README

commit 7722e54c069e5806ebc7c132192031d44c1d04b5
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Nov 9 07:39:50 2013 -0800

    GLASS1 required

commit 6b5b6da9c42e589aa9a5e33ba0f3465dc7fc4643
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Nov 8 16:48:25 2013 -0800

    update the scripts

commit 4851202683954495122cce833231cbb06a478f30
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Nov 8 16:37:23 2013 -0800

    Final bits for fixing Issue #45 (dependes upon glassdb commit 3f347c0819a3d995efe938e5d95517f5518ff03c or later). Hook into GsInteraction mechanism for tODE ... can now get rid of TDInteractionRequest hierarchy and use GsInteractionRequest ... add TDMonticelloTool>>mccopyVersion:to: in support of TDRepositoryVersionsBrowser>>copyToRepository:selectedIndex: menu item (copy to repository)

commit 501666fd7053fdf9b4f9e8be1ad7e25b929b8c12
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Nov 7 20:35:15 2013 -0800

    bug fix scripts

commit 2661153b659c93d0563d7e39cbe38d2f25a5d330
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Nov 7 17:29:06 2013 -0800

    bugfix for Issue #46: use Author>>fullName when sending initials across wire as it prompts for the initials if not defined

commit 0bdba0f7c3a2734eb5715c6d10b7f5b3b3ef8821
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Nov 7 09:36:41 2013 -0800

    final writeChunks tweak

commit e98c2920eadfa496104a64d3fe25711a85a712c8
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Nov 7 08:40:21 2013 -0800

    writeChunks needs to create package

commit 197e9c840b5d5d2ce4e9141731049a09260ee188
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Nov 7 08:18:47 2013 -0800

    tweak /home/cypress/writeChunks

commit 6bfd103a8786d73affe17d90fb6510f7ee0271be
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Nov 7 07:55:26 2013 -0800

    checkpoint: index scripts and cypress scripts for bootstrapping purposes

commit bb30cd6f86e03802e8c06992c0f23a923e7b8e5f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Nov 6 06:41:37 2013 -0800

    index script checkpoint

commit fc0318d2dd212568985edff7f268fb90a41fac44
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Nov 6 06:37:59 2013 -0800

    tweak TDGemStoneTool>>gsfileout:filename:range:in: to compensate for some 3.2 fileout bugfixes ...

commit 57d270cc05fc8039e9637fab7b8a74717c6718fe
Author: Paul DeBruicker <pdebruic@gmail.com>
Date:   Tue Nov 5 12:01:29 2013 -0800

    window definition should come first
    
    TDTopezClient>>initialize reinitalizes the SessionMap wiping out the session you define in the "Define a session description:" step

commit d347187b398b8232c1723c0e59d1287f2f5a6b9c
Author: Paul DeBruicker <pdebruic@gmail.com>
Date:   Tue Nov 5 11:29:20 2013 -0800

    fix the gci install instructions on the mac to point to the right GS directory

commit 6a7a0dcbc4dadd55e920a87cbd63ef7a599e632e
Author: Paul DeBruicker <pdebruic@gmail.com>
Date:   Tue Nov 5 11:28:15 2013 -0800

    changed the version on the gci libs

commit f10a9b8c3341ba708f2ac8b8fda2549f601f8ff1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Nov 5 07:27:17 2013 -0800

    define TDMethodDefinition>><= to support sorting ... add TDMiniToolSpec class>>topez:clientListBlock:menuActionSpecBlock:menuActionBlock:itemSelectedBlock: as convenence method ... tweak package display in TDRepositoryPackageBrowser>>packageTextList

commit ec8fd1382d82ba5109f2c79b2403c26b50ab6a68
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 26 21:16:44 2013 -0700

    fast scripts

commit b9d463643311e07f5c952a813d015af72ca21817
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 26 20:55:52 2013 -0700

    STON work scripts

commit 6e8daac114840821f908b85a2a65d8fb2f53c226
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 26 20:54:47 2013 -0700

    add `mc compare rimage` for doing reverse compare ... refactor MCTodeDeployTool>>createMethodSectionMapFor:version:

commit b4165f499eb2d646a327051175356453f41f564e
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 25 15:46:09 2013 -0700

    workspaces for Christophe

commit 2a3c1df318b0292107b1478bc1a256db7775d6e3
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 24 20:34:11 2013 -0700

    checkpoint scripts

commit 3a1d1c908907f6cf53273a5232754ade47741920
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 24 20:30:51 2013 -0700

    add support for inspecting objects with dynamic instance variables

commit d3a8738509174b562f1f2b874e34bb9684f88c32
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 23 12:31:26 2013 -0700

    tweak scripts

commit c941e713cc88191e27b49ca6e7bb1bd907715c89
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 23 11:48:21 2013 -0700

    checkpoint: update scripts

commit 49d4d7f38000921783182fb80c380e2c6b309d42
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 21 16:28:13 2013 -0700

    checkpoint ... indexing scripts

commit 080627b31658c2679c2aa2ca365d731ef9891e93
Merge: 9d70b8b 0faa4e2
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 21 10:19:37 2013 -0700

    Merge branch 'dev'

commit 0faa4e28f5727f76d2558f7b46e082e92c280091
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 21 10:17:34 2013 -0700

    `mr versions` command hooked up to Repository Versions Browser...

commit 8851e33a6889ea9cd814110d125ebcfe4888fa13
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 21 10:17:11 2013 -0700

    checkpoint scripts

commit 9d70b8b3c7f07150ec6b7baa92c831b41726972e
Merge: 91bbc8f 3e8d331
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 21 09:38:51 2013 -0700

    Merge branch 'dev'

commit 3e8d3314999f025b7f16975942ddfb2da40b15bd
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 20:57:22 2013 -0700

    clean up TDClientElementTestCase>>testClientElementSerialization

commit ed71c65b07723acc6c2977c20a004e1882a7721f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 20:45:39 2013 -0700

    clean up failing tests on server-side

commit 206594737fa6d2d905762ede774d433f5a4b5dd6
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 20:38:22 2013 -0700

    Transcript show during prompted commit

commit 08963a283dfb7b08d56e7f1a501e55d3bc979640
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 20:35:28 2013 -0700

    server-side interaction requests get some meat on their bones ... finish up Monticello Browser functionality with  menu items and support for prompting for version name and commit message ...

commit 0285bd8693980fa00615b9b76a280c23fddfe007
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 20:12:04 2013 -0700

    tweak pharo code for multi-line and single line text interaction

commit e1e0f5b4d5319c87f794de4407498fbcdb8f04c0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 18:08:35 2013 -0700

    add accessors

commit ce6d70081efa1158b385b9977bd1e886fd2cf525
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 17:58:03 2013 -0700

    adding support for various interactions: choice, confirm, inform, text, multiline-text

commit c4610f3156665a834a2a65294e050bb8e9bc3e94
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 14:41:01 2013 -0700

    start work on interactions (choices, prompts, etc.) ... down to `save` menu item before completing the Monticello Browser family of tools, which explains need to implement prompt ....

commit 8254030448257bcf3887582466887811fa25c2fb
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 11:18:48 2013 -0700

    move windowIsClosing trigger to TodeCommonEditor and ensuer that the code editor is included

commit 9454195d421eabfd435065ff76c3e8460f6d0f2a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 11:14:50 2013 -0700

    add windowIsClosing ligic to the TodeCodeEditors (client and server-side logic) ... `create accessors` menu item for class hierarchy window ... add `inspect client element` menu item to standard window menu (replace .window/model stuff) ... TdToolBuilders leverage windowIsClosing logic to close all child windows when parent is closed ... TDToolBuilders use a clientListBlock for generating client list which makes for automatic `refresh` when window contents is refreshed (CML-l) ...

commit ea7a3e5b0afe5cc850c1a683e2d089be5b6be6df
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 20 09:43:58 2013 -0700

    push windowIsClosing logic up from TodeClientList to TodeClientElement

commit fd6de0c5b03ad9c69ddb0a26437d00d668d03058
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 19 22:02:31 2013 -0700

    support for closing windows from server...unicode to widestring and back support

commit 1be920c9d6ea95bb958515cc97009daf705f5840
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 18 22:00:14 2013 -0700

    fix `gs fileout` ...

commit 9f29d732e67d4f5875c2e0cbc5a9d853cb2156fd
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 18 06:11:02 2013 -0700

    really fix funky hierarchy list bug ... tweak TDProfileTool>>pfview: return value

commit 68150f7fffc8433283d9c0815dfdfc1cdd9b9799
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 17 09:56:28 2013 -0700

    fix funky hierarchy list bug, where original "selectedClass" refused to be re-selected

commit 8717b6352d6516137c48ea72494be3528c28633f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 17 09:44:16 2013 -0700

    script tweaks

commit 31d83a4e24bda9ff15f8d368351841b1b7a71ec3
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 16 14:47:39 2013 -0700

    getting deeper into the unicode indexing support

commit f58b53033042aa6e081a55b26625c55ec0886b18
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 16 14:40:38 2013 -0700

    straighten out handling of conversion between GemStone quad/double byte characters and Pharo WideStream (for Pharo1.4 ... in case it matters)

commit 1b01f33f1140901f69daff6f17b7f25efd38a675
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 15 16:38:11 2013 -0700

    checkpoint: implement TDRepositoryBrowser>>workingCopyDiff:selectedIndex: (moved form TDWorkingCopyBrowser>>workingCopyDiff:selectedIndex:) and TDRepositoryVersionsBrowser>>loadVersion:selectedIndex: plus supporting TDMonticello tool support

commit 7f107ca6bdc3cc27f89e835fa104861a4d5790f2
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 15 10:34:15 2013 -0700

    checkpoint for scripts

commit 5549e1de90fcffa355dd6c97bbf3fb11d8ce2eff
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 14 16:13:25 2013 -0700

    checkpoint: support for geting backup directory path from client ... need repository for TDRepositoryVersionsBrowser ... make it easier to get text attributes set correctly for loaded versions .... add in stubs for (still) missing menu items for the family of Monticello Browser tools ...

commit ac1d8b2e8118a6d9b28087cdef97f0c27c1945ef
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 14 16:08:38 2013 -0700

    pass backup directory path to server ...

commit 7c49a3b78fcda1cfcc8b0f1c7896011a88d0faec
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 13 17:36:47 2013 -0700

    checkpoint: keyboard shortcut handling for minitool ... rename TDPackageDefinition to TDMcPackageDefinition ...  rename TDMonticelloBrowser to TDWorkingCopyBrowser ... add TDRepositoryPackageBrowser and TDRepositoryVersionsBrowser plus TDMonticelloTool support ... use app1 and app2 window locations for the familoy of Monticello browsers ..

commit 7a4c95999192d18354c78fb805fe4e3be1176a4d
Merge: e2858eb 1cda220
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 13 15:05:12 2013 -0700

    Merge branch 'dev' of github.com:dalehenrich/tode into dev

commit 1cda22055176ba238387d5dfed6faf3882f1cd9f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 13 15:04:47 2013 -0700

    add #app1 and #app2 window locations ....

commit e2858ebb8499754769bdd0b35a68f233236c00a8
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 22:36:53 2013 -0700

    checkpoint: add repository browser with partial implementation ... open repository browser from monticello browser and mr tools (`mr group` and `mr list`)...protocol tool allows for adding/removing multiple protocols

commit bcf04af616091a189d02ebe40bc2a15b9c68bda7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 21:34:13 2013 -0700

    checkpoint: implement `delete` and `unload` menu items in monticello browser

commit 4cf0313d45468627d025e10f77f84b40d9fe93d4
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 20:27:59 2013 -0700

    checkpoint: implement `revert` menu item in monticello browser

commit a1901421cdc51be11df5da2d055b8533f3130111
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 20:04:36 2013 -0700

    checkpoint: working copy browser (monticello browser) and version info browser (history) plus assorted menu items plus a bit of refactoring of the monticello tool .... keep all of the business logic in the tool ...

commit 242003cf6104f386e4cdd018b3e5b312d393bd60
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 12:53:42 2013 -0700

    use #classCategories window location for Class Category List ... reuse window for mc/mm diff ...

commit 04624d22d554b1713242ab2de97da6aab2a3728b
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 12:48:37 2013 -0700

    add `classCategories` window location

commit 8d82b3e24497bb0ec9bb45bfe2464d8e96975d54
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 11:32:09 2013 -0700

    add 'spawn shell' to window menu (ESC keystroke)...

commit 83a59b19e5274c5734ba4efb5c9ab5e60c24c36e
Merge: 6d3f307 0536faf
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 11:31:46 2013 -0700

    Merge branch 'dev' of github.com:dalehenrich/tode into dev

commit 0536faf9f59db138d1c967467489f39e00c8627f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 11:31:28 2013 -0700

    spawn shell menu item support

commit 6d3f3072e9bbbe422c2f8c3ce88d93414364a0e4
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 12 10:59:47 2013 -0700

    checkpoint ... script updates

commit 2679a657b591eea5b927e81085e6e4542d62a94b
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 11 19:35:57 2013 -0700

    scripts for selector path terms, plush diff view for loose changes

commit 9de8fa99b5a21333d1f9dd2afc6bc211e6183e82
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 11 19:34:40 2013 -0700

    Attempt to get around security violations in TDSymbolDictionaryDefinition>>classDefinitions ... TDSimpleDiff created to support generic in-image text diff views...

commit fd2ae45c9de38af1f8c52175721ad21473b4e227
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 11 13:20:50 2013 -0700

    looseChanges and friends now calculated against SystemUser and installLooseChanges compiles loose methods as SystemUser to reset accounting and make changes available for things like Ernie tests

commit a83f29b631059f0005531ae01817c51d1ca71bd7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 10 19:58:26 2013 -0700

    checkpoint of scripts for enumerated path term

commit c6aa4614ab7a0a2e9a69e5293ce155c3eb180349
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 10 19:56:42 2013 -0700

    replace config/pkgs panes with class category pane after working with Paul DeBruicker

commit 595f2b885cd88059a97c23957cfd89d070954973
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 10 05:16:53 2013 -0700

    checkpoint scripts

commit df6866466c040d13c22fe8b185a2c21598a9344a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 10 05:14:39 2013 -0700

    ensure that lf is used when compiling methods from tode ... sneaky cr showing up in comments

commit a37a05b54cb1221d75e01c01ef21d19c91732d47
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 9 20:56:06 2013 -0700

    mystery of #_findFirstUnsharedPathTerm resolved

commit 7aebc1ddd51ef28ebaede052d46f4723823df329
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 9 15:58:37 2013 -0700

    ensure that lf is used in exported source files in TDGemStoneTool>>gsfileout:filename:range:in:

commit 2de2e29f921c7276b49f6d3262cf85703a0e995a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 9 15:57:04 2013 -0700

    getting serious about index work ... more scripts

commit 0700fb2a9ee4eaeea34394b3fd8e5458b5f533dd
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 9 15:56:14 2013 -0700

    remove some scripts from /home/indexing ... they're headed elsewhere

commit c379e627b577859efce0e6c0daa2f6c0fe1c8bd3
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 8 20:59:44 2013 -0700

    checkpoint of scripts

commit 33f94a8e695200a56b6ea037c708454a207b4f0b
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 8 19:33:58 2013 -0700

    add some index scripts

commit f6ef0fcafe40d3a97096f14f7fc38581f0851f19
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 8 13:52:32 2013 -0700

    add index test fileout script

commit 474628106e546d823f775aa52b158b58aed926f9
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 8 12:27:10 2013 -0700

    looseChanges script ...

commit 0d0c0c5d213084b9765b37cde38f6025383e46b3
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 8 12:15:07 2013 -0700

    missed a bogux top-level script

commit b7141acb2eebb47dcb2d8c519be7cd7007edfb14
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 8 12:14:09 2013 -0700

    remove some old top-level scripts

commit 3fa572b8e4848b9123c94bb0486ea471cd6ed2f1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 7 20:31:29 2013 -0700

    indexing related script updates

commit fb7c8e6e22b76849371d7efe3c612775b5f21677
Merge: d41839f 91bbc8f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 7 14:46:10 2013 -0700

    Merge branch 'master' into dev

commit 91bbc8f839e8915ebc60b185b45b912899fecdf7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 7 14:45:20 2013 -0700

    actionSymbol in menus really needs to be a symbol

commit d41839fa1faeb6a225324db4c410182b8953e869
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 7 14:37:24 2013 -0700

    update the script objects

commit 0444210538a992b14a667f3453c41b36eab4677f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Oct 7 14:34:54 2013 -0700

    implement TDMiniToolSpec and TDMiniToolClientListElementBuilder which allows for creation of list-based tools without having to create a TDClientListElementBuilder subclass...only need to specify blocks for:
    
      TDMiniToolSpec class>>topez:clientListBlock:menuActionSpecBlock:menuActionBlock:itemSelectedBlock:
    
    to create custom list behavior.
    
    fix `mc fileout` API so that .gs files with multiple classes can be updated correctly (i.e., the method is matched based on proper class)

commit 1a1b9403c1ac0fb4de2cea42417bc8bab30b745c
Merge: 476a9f9 af6d8f6
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 6 13:00:19 2013 -0700

    Merge branch 'issue_38'

commit af6d8f6599be4404e72bf2a7ee59e38d9a3a59f1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 6 12:46:37 2013 -0700

    all git commands that #edit the response will use the window named #gitStatus ... cut down on window proliferation

commit ba5f26ad0a7f11e444daeb35bf8b9f04ea8a0d89
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 6 12:41:41 2013 -0700

    Issue #38: fix the menu ... we're looking good!

commit 9fe30c0bf0395cbb2b005f03f4f1572c46ac32e7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Oct 6 11:47:42 2013 -0700

    Issue #38: first cut at functional tool ... works, but need to fiddle with menus

commit be7f9d298425ea5f6194206801dee9dd862ce84d
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 17:59:52 2013 -0700

    Issue #38: just getting started with `git difftool`

commit 71d803d78ee32e5d2a0f01a6c8d72c37f1ba8de1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 16:10:24 2013 -0700

    update scripts from k_

commit 21eb645cfedc68968b22a090eb1508bf2ba40dd3
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 16:09:27 2013 -0700

    update scripts from l_

commit 476a9f9db31e5447e82b30701c82353eba96ac04
Merge: 9ba5bff 3417751
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 16:01:16 2013 -0700

    Merge branch 'issue_28'

commit 3417751e6af23daeb06acdea34922b8bc3c12313
Merge: e36527b 9ba5bff
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 16:00:49 2013 -0700

    Merge branch 'master' into issue_28

commit e36527bdc003b0afbeb4bd043e1decebb7bf0034
Merge: 1e19eda f4da2b6
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 15:41:04 2013 -0700

    Merge branch 'issue_28' of github.com:dalehenrich/tode into issue_28

commit 1e19eda0b30c7cfa531737c0b30afa0b106e6f9f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 15:39:54 2013 -0700

    address test failure: TDClientElementTestCase>>testClientElementSerialization ... update MCMetacelloTodeTool implementation and ignore 'Metacello-Cypress' package for ConfigurationOfMetacello ...

commit 05fb5a7677587c2573c3667c95c3fc716fd2229e
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Oct 5 13:12:47 2013 -0700

    add support for working with classes "imported" from another GemStone user's symbolList. A TDDefinition may have a `username` specified and if so the definition will use the symbolList of the given user for resolving class/global names. Trying to propogate the username as far as possible forced me (in a good way) to use class definitions EVERYWHERE instead of direct class refs and it follows that the class definition does the lookup and so on ... touch a fair amount of code across a bunch of element builder classes, so there still might be glitches ... added `inspect builder` to window menu ....

commit f4da2b6c050c363f9ea5223430a259883d8d10a0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 4 18:32:02 2013 -0700

    add pharo2.0 compat package and methods

commit c0dc755230dcdb14ee0fc3b760eca02fdfc101cb
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 4 11:18:41 2013 -0700

    create gemstone install script

commit 740e53cf3ff745d7b88c0d4eca5d70e79913f5fb
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Oct 4 11:05:29 2013 -0700

    Fix TDFileSystemLeafNode, so you can save files to disk...

commit 5bad8ebe566c4ee08a09cdec1c16c4914b5549da
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Oct 3 10:12:08 2013 -0700

    checkpoint scripts

commit b3f3fc7dc38f6883ed2aa75e15676aa03c8b0f60
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Oct 2 17:16:23 2013 -0700

    `mc fileout` will now file out source to files (classes and methods) or a single file.. make the `gs fileout` command compatible with the gemstone filein process (entails building our own versions of the class-based fileout methods)

commit 61942c48fa3f65c3749f0189a4de0d3cfcba0b59
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 1 21:12:18 2013 -0700

    add variant of `mc fileout`/`gs fileout` API that writes class defs to one file and class methods to another file ... this is the one I will use for deploying Indexing changes for GemStone 3.2.

commit 3b3535c1e4467349426e708bce83ab44c15aed3b
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 1 17:31:03 2013 -0700

    pull filename map out as arg to `mc filout` API which filters over to changes in the `fs fileout` API.

commit 1687f0ea6ceee7a8d611fd857c82fa5b38e98bf7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 1 14:47:39 2013 -0700

    create `mm fileout` command for doing a fileout of a full configuration .... `gs fileout` command finished up for this round:
    
      - one file per class (will change this to allow for alternate groupings)
      - extension methods overrideds changed in place in existing files new
        methods added to end
      - hard-wired class to filename map (will make this an option)

commit dbbaf3f611550230396788e423aa423683c4f71f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Oct 1 08:18:21 2013 -0700

    Issue #28: finish initial foray into menus for tODE ... now that we've got menus, there are plenty of oppotunities to expand the menu items (and/or reorganize).... still need to do text window menus ..
    
    Issue #33: continue/restart menu items available in debugger

commit cb16df00dbb91f225fc33e3d737df3eb7a624516
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Sep 30 21:39:29 2013 -0700

    Issue #28: start defining `menu actions` ... starting in TDClientListElementBuilder ..

commit dee10cf4557328f2d5a8f28ee2fd2d206b76c9fa
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Sep 30 20:52:01 2013 -0700

    Issue #28: defined #menuActionSpec for all subclasses of TDClientListElementBuilder ... covers all keyboard shortcuts ... time to define the menuActionBlocks

commit 26ee93a170927632a9a0a0803c1671971af81e35
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Sep 30 17:05:12 2013 -0700

    add `mc fileout` and `gs fileout` commands ... aimed at providing fileout support that is compatible with saving source as .gs files

commit cc9185842573efb2b393758cd4285ca556f2400a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Sep 30 09:53:18 2013 -0700

    Issue #28: checkpoint ... defining menuActionSpecs for all of the windows ... will implement the menuActionSpecs next ...

commit fb6f6ef13a175a477d27a9f9f653f0fc93dd995e
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 29 12:29:36 2013 -0700

    Issue #28: continue menuActionSpec theme...define standard submenus

commit 81a5896dfdd95e70a8ab80ae51dba4b65857990a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 29 12:26:57 2013 -0700

    Issue #28: handle submenus

commit d988902aaec3e1de721cd9de17c3b730cfe9e230
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 29 09:00:55 2013 -0700

    Issue #28: rename actionSpec to menuActionSpec

commit 06e5b0b7721eea38ab93971dc21882e0bf996ae0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 29 08:53:05 2013 -0700

    Issue #28: checkpoint ...

commit c364070067196c47acd607afcad5380fe10367d8
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 28 15:39:33 2013 -0700

    Issue #28: getting started on menu implementation

commit ecb2da9752dce6b15e8b24ce21eef9c0d424a21f
Merge: df9fa3e c0beb56
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 28 15:22:31 2013 -0700

    Merge branch 'dev' of github.com:dalehenrich/tode into dev

commit df9fa3e0ba31c285e232f82a429e87ae00947127
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 28 15:21:45 2013 -0700

    oops missed mods for Topez-Server-31x-Tests after nuking test classes

commit c0beb56693c41c8666a70b40fd3021d7c53de073
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 28 15:10:56 2013 -0700

    align context with debugger stack window ... use debugger width too...ON CLIENT

commit 7488df84a572d175dd4a7a0f81c99f54dd3b7b10
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 28 14:01:59 2013 -0700

    nuke TDAbstractBuilderTests and friends ... too brittle and not really that useful ... new approach needed

commit 821024ca9d1464a525ae1b7d40b7796c4e9d319a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 28 13:49:19 2013 -0700

    flesh out profmonitor viewer tool:
    
      - `pf view` can be used to navigate the ProfMonitor results
      - TDProfileTool>>pfview: is the script API for ProfMonitor viewer tool
      - TDProfileTool>>pfmonitor: can be used from scripts to profile a
        block, then use TDProfileTool>>pfview: to look at results
      - added labels and other goodies to the ProfMonitor viewer tool

commit dc79ef97b702e83fd4b17c6a537c09e47171ac0f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 27 22:09:54 2013 -0700

    align #context location with #debugger location ... use debugger width too... use #context location for debugger context display...bump default `list limit` to 140 ... checkpoint the profmonitor analysis tool

commit 7879afe20c8d251b1034cd00bea18866347b8933
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 27 15:23:47 2013 -0700

    rework TDTestTool so that the `test` and `ts` commands are callable from scripts...

commit 369dc1fdb807f48d6e8f722345f63dd0cac313b0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 27 08:57:08 2013 -0700

    tweak `git mergetool` command

commit 9ba5bff80996f48beea8b0e9f21b8d8940017e8c
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 27 06:55:43 2013 -0700

    update docs a bit

commit bcf2914f62058c00c3f51b163ee791192ed9ede4
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Sep 25 17:35:16 2013 -0700

    it turns out that tODE was making copies of all objects in the navigator when navigating around ... probably not desirable at all, but definitely not desiarable for TDObjectNodes ... take care of TDObjectNode in TDPluggableNode ...

commit 6c5c3add56f6ec03b90ce25c1095a294ded7e955
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Sep 25 17:02:02 2013 -0700

    multiple sections allowed for `ts list` command...add `(size)` special for all Collection classes ... add `(index lists)` special to UnorderedCollection for viewing index structures if present ...

commit fca97e4703fd00332215f53a1449c9459844bfff
Merge: 7db41ad 508a5c1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 17:24:57 2013 -0700

    Merge branch 'issue_30'

commit 508a5c11eecc7f2995e2f2620a0fd9f73513af78
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 14:50:55 2013 -0700

    checkpoint:  CMD-o uses category of selected method or protocol for creating new method.... tweak `cls create` command optional superclass and category...
    
       cls create <class-name> [ <superclass-name> [ <category> ] ]
           create <class-name> [ @<superclass-path> [ <category> ] ]
    
    Issue #27 - method category browse/edit

commit 0f383ffaf7a2cf963aa7a3e821d08f439f25b30b
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 13:59:35 2013 -0700

    checkpoint: class history bugfixes ... copy/paste should be working for protocols (paste method on protocol to move method to that protocol or add method in that protocol) ... add `cls accessors` command
    
    Issue #27 - method category browse/edit

commit a6b81455ad4dced6a8e79491a9116248e388e7ae
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 09:51:38 2013 -0700

    checkpoint: CMD-t toggles protocol display .... `limit protocol` controls default setting ... man page display reuses window
    
    Issue #27 - method category browse/edit

commit 26aa7ef8ea2cf598430c5bb221e67b361ac14026
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 08:10:39 2013 -0700

    checkpoint: TDShellTool class>>protocolManPage
    
    Issue #27 - method category browse/edit

commit 80987b4bc91b42e1888a6c362159eb8c51766aba
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 07:27:06 2013 -0700

    checkpoint: add `protocol` command for method category edits ... `test class` command changed to allow listing of multiple classes
    
      protocol add <class-name> <protocol-name>
               add @<class-path> <protocol-name>
      protocol cadd <class-name> <protocol-name>
               cadd @<class-path> <protocol-name>
      protocol cremove <class-name> <protocol-name>
               cremove @<class-path> <protocol-name>
      protocol crename <class-name> <protocol-name> <new-protocol-name>
               crename @<class-path> <protocol-name> <new-protocol-name>
      protocol remove <class-name> <protocol-name>
               remove @<class-path> <protocol-name>
      protocol rename <class-name> <protocol-name> <new-protocol-name>
               rename @<class-path> <protocol-name> <new-protocol-name>
    
    Issue #30 - class comments
    Issue #27 - method category browse/edit

commit 6360085ea55588f18875f9f99936e9fce81570c4
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 06:27:25 2013 -0700

    checkpoint: convert `cls` api to use the class instead of class name ... allow for saving of class comments
    
    Issue #30 - class comments
    Issue #27 - method category browse/edit

commit fce045b251933998b270ce86d68301d64fd298e9
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 22 05:52:32 2013 -0700

    checkpoint: `cls` command implementation, remove `rename class` (subsumed in `cls` command ... get serious about testing `cls` api
    
      cls comment <class-name>
          comment @<class-path>
      cls copy <class-name> <new-name>
          copy @<class-path> <new-name>
      cls create <class-name> <superclass-name> <category>
          create <class-name> @<superclass-path> <category>
      cls definition <class-name>
          definition @<class-path>
      cls history <class-name>
          history @<class-path>
      cls protocol add <class-name> <protocol-name>
          protocol add @<class-path> <protocol-name>
      cls protocol remove <class-name> <protocol-name>
          protocol remove @<class-path> <protocol-name>
      cls rename <old-name> <new-name>
          rename @<class-path> <new-name>
      cls remove <old-name>
          remove @<class-path>
    
    Issue #30 - class comments
    Issue #27 - method category browse/edit

commit 7db41ada99c7795589e30d67c802dfede225ef35
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 20 08:24:54 2013 -0700

    even betterer is for `ts list` reuse the method window

commit ba4f45a1c0cf307dd02ed04fbb6ae5134ef52085
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 20 08:19:57 2013 -0700

    even better is for `ts list` to list test case methods, so that the methods themselves can be viewed ... running the test using CMD-c and `ts run` is then only a step or two away ...

commit b965ce684ebfe44c8a49b66937e72a44503f5ffe
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 20 07:57:41 2013 -0700

    more interest for `ts list` to optionally edit the full set of tests in a particular category (errors|failures| passed|expectedDefects|unexpectedPassed) ... navigator gives better view ... eventually run tests from the list, too...

commit d811ed711822aec8de1777d9de86a675414a0896
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 20 06:52:36 2013 -0700

    add `test class` command...

commit ef361462a630abd2d56293bd6a2d9a845feda405
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 17 12:26:45 2013 -0700

    l_: updated scripts

commit 6e83ee30cfdfd615bbbfb0393dbdeff14af42c7f
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 17 12:23:59 2013 -0700

    `git mergetool` implemented ... this is a rough cut implementation as TDMerger and TDGitMerger deserve to be ... merged ... there is a fair amount of shared state and behavior ... TDGitMerger is not based on definitions but files whereas TDMerger is based on monticello definitions...

commit 6e8f1564fc92add5e6451c70ffc7a5e9ca853ac9
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 17 05:32:37 2013 -0700

    `md diff` no longer takes a regex pattern
    
    `mm diff` no longer takes a list of configs ... optional `all` arg will compare all packages, otherwise you only get dirty packages compared

commit 760f46de942ed10b0d65c021b1ba6950c238a954
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 17 04:54:36 2013 -0700

    update seaside3.1.0 scripts

commit 8543e86b2260162b0c6dae950d69e32ef0b6bfac
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 17 13:45:54 2013 +0200

    add `mc snapshot` command ... record restorve from backup in object log...

commit 04d5c7fb6af52fb6a5088139b8efaab4e66a02b3
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 15 07:03:38 2013 +0200

    implement `limit format` command to turn on and off auto formatting ... make it easy to contribute to projects that don't use same formatter as I do

commit 241c7e5d4e25802729c93b320a8daa511216bdd5
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 17:45:40 2013 +0200

    upodate seaside31 scripts

commit 0868e009417e2d83c56e73148954ea6836620d02
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 15:09:02 2013 +0200

    seaside 3.1 loads into GemStone 3.1

commit 1b360229b91d944bf78caa9ba296e504c255bdd5
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 12:56:43 2013 +0200

    seaside3.1.0 loading

commit 9bdcc403780425bf2703bcc008d5956cb6a36223
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 12:56:35 2013 +0200

    seaside3.1.0 loading

commit cc13e02fe82188428d685d1b00ce599947b6e7fc
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 12:24:01 2013 +0200

    adjust /home/seaside contents and use GsDploy class>>deploy: in loadConfig

commit 7bda50f929ac8c6b0bb8ff8c859bad8b48f2f2cb
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 11:58:55 2013 +0200

    tweaks to scripts

commit b5f9c5603e988b57aa362d72f8a57f40ff402fdd
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 11:46:28 2013 +0200

    no longer need bug dir

commit df9d29846d3b37bae57bd8e73072744d2ce25b72
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 11:05:57 2013 +0200

    TDPluggableNode>>stonExportUsing:to:  ignores any contents ...

commit 41f423241b9c15533c40ca9cf905b10024976bc1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 10:59:58 2013 +0200

    add CMD-j and CMD-k keyboard shortcuts for debugger

commit 038ece21fb16cc5eca9425cf4419f43a21efa2db
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 08:43:56 2013 +0200

    another import script tweak

commit ad4266ef059594e6433410e0435cc9751a89a8d0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 08:41:39 2013 +0200

    support for structured ston exports ... build directory structure on disk to match internal dir structure and only export as ston the leaf nodes (or leaf node like dirs) ... easier to control what you want included in your image...

commit 6cb0215f6513bfc37689db5527661ba7f3bed17a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 08:35:43 2013 +0200

    tweak

commit 2004180bad9df47d7d7fc3b2c89498f87a742f98
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 08:33:22 2013 +0200

    more tweaks

commit d7e269748e8dddd635d57191431a37566c58d3b0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 08:23:03 2013 +0200

    fine tuning import/export scripts

commit 7651b5e9137b1b33c9280661d81fa41377b32ae8
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 08:05:09 2013 +0200

    readable ston export

commit bee89b4d49f9a28fc915e704040ddf1c6696be49
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Sep 14 07:27:56 2013 +0200

    don't restrict test projects to baselines...
    
    Signed-off-by: Dale Henrichs <dale.henrichs@gemtalksystems.com>

commit e1f9d590125ebb6c8870c27be1af7699232e190c
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 13 15:00:37 2013 +0200

    add `ps delay` command

commit 35e0f85a5e4fde0c1699e1f0ba44d07f07241608
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 13 14:56:54 2013 +0200

    mac_3.1.0.4: update home and bin

commit ab8417fbf164d2a5f30c733ba783e92350df89cb
Merge: 9492543 95a50c2
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Sep 13 14:48:00 2013 +0200

    Merge branch 'master' of github.com:dalehenrich/tode

commit 95a50c2feb8b8485b4377ffa0e7efd6ef9ddcc47
Merge: 870852e 1c91409
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Sep 12 05:23:37 2013 -0700

    Merge pull request #26 from pdebruic/master
    
    the gci install instructions link was pointing at the topez repo, which ...

commit 949254342e08b9df097cb5baa93dc25f3197ef9d
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Sep 12 10:25:12 2013 +0200

    use #initializeBounds for window sizing to avoid disrupting exsting Session Descriptions

commit 1c91409ffaf8a8d7d35ed6a97ba3f06f42904010
Author: Paul DeBruicker <pdebruic@gmail.com>
Date:   Sat Sep 7 08:23:12 2013 -0700

    the gci install instructions link was pointing at the topez repo, which gave a 404

commit 4689e7105d1667d1758f23bf7dd0a73eef8431e0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Sep 4 07:41:40 2013 -0700

    stash home and bin, customized fo ESUG

commit 870852ec61670b0b78bea46850b441f4df4e794d
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Sep 4 01:25:56 2013 -0700

    l_: tweaks for load, commit, and mapRepos commands

commit 3442661b9aae6e98bdc26bfea6d15ccfeedee293
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Sep 4 01:21:47 2013 -0700

    checkpoint: Implement `git mergetool` command
    
    Add control for loggin in TDAbstractDevTool>>performOnServer:logging:
    
    remove TDCypressTool>>cypmerge and TDCypressTool>>cymmerge ... cypress merges handled by `git mergetool`

commit 1a8636418f2ec80e563a9c37205937c9525da8a3
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 3 21:43:00 2013 -0700

    Looks like the Monticello merge tool is complete ... for method definitions ... need to handle class definitions
    
    Some logging to transcript
    
    Check for empty merge ...

commit fb84360a04c21b1915c0b0930b3b123f4b9016dc
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 3 18:48:51 2013 -0700

    checkpoint: successful merge of a single method conflict
    
    with a merge, discovered that printStrings for MCWorkingCopy did not account for multiple ancestors ...

commit b900cb1a93847524d02f9caa2acd9d2093fb9373
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Tue Sep 3 15:04:11 2013 -0700

    checkpoint: begin work on the mergeTool for merging Monticello packages and Cypress repositories.
    
    create TDSessionObjectNode class that stores object reference in a TransientValue ... avoid persistent refs to things that cannot be persisted.
    
    Use TDSessionObjectNode for the debugger...
    
    Add TDGitTool>>performGitCommand:in:worktree:with: to allow independent control of location of work-tree ...
    
    Actually use the TDEditorSpec>>windowLabel field when building windows.
    
    More keyboard shortcut stubs ...
    
    Start building merge command "gui" support
    
    Implement mc save, so I can create branched mc versions to test merge command.

commit 5e67177e062caae9c7e28cd05b764748d27c19b7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Mon Sep 2 19:12:57 2013 -0700

    l_ checkpoint of home and bin ...

commit 193ef461ec7f9e9b942c181f3806c074691c49e1
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 1 07:48:19 2013 -0700

    endeavor to get tests passing ...

commit d499ce35246e539782c28ddcfc3b48ce665099e6
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sun Sep 1 00:28:46 2013 -0700

    l_ checkpoint of home.ston ...

commit 952bb6cebe41418f080ce83997bf3d6ac0fdad7c
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 31 17:02:25 2013 -0700

    tweak mapRepos template

commit afe0105f680973509335af471e7da57a9a849cec
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 31 16:14:47 2013 -0700

    l_ ... checkpoint home.ston

commit d21e51ded620dccf29345ffd92a3be07f4b6a60c
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 31 15:55:07 2013 -0700

    l_ checkpoint home.ston after cypress and petit parser projects added

commit b22591c4f3ff854f5273959310f6ed235344d6ee
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 31 15:05:56 2013 -0700

    tweak TDCypressTool>>cypDiffPackage:to:on:

commit 5406c23ef984cfd1ae37dd8c4cd4cdec3de3c89d
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 31 07:58:18 2013 -0700

    l_ updates: today updated

commit 6d3caeaaf519b3ac0b475849f278aa1c9a41b344
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 31 07:54:14 2013 -0700

    k_ updates: cypress support fleshed out

commit 74c80258a03cc147a80402e11b983511e0443f40
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 31 07:45:04 2013 -0700

    implement support for Cypress repositories:
    
      cym and cyp commands (save and diff)
      sort mc dirty packages
    
    new Topez-Server-CypressTools package

commit f52daea5816592ca788989b11128c65b6d3baac7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Aug 30 21:54:10 2013 -0700

    clean up the commit script ... add some cypress scripts from k_

commit bbc17e869f2c8fd46f6754ed88f0ff1adc33f11a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Aug 30 16:04:04 2013 -0700

    checkpoint home.ston from k_

commit 46809ef5eb56568d62774dff748c593dc04aac99
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Aug 30 15:50:53 2013 -0700

    home script checkpoint from k_

commit 48a53162f5c2da4886de502a4790bfe4a376ba20
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Aug 30 15:43:39 2013 -0700

    implement `test package` command

commit c1381c2eda7005e1fdabb3c5f26549e7983d6e09
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Aug 30 15:36:22 2013 -0700

    petit parser project support from l_

commit 759a1598db08260fa74c68ee6c360055ec2e9845
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Fri Aug 30 12:16:43 2013 -0700

    update home script from l_

commit a96f8b187650bd75cd38234ab28e4d29cf376107
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Aug 29 21:52:25 2013 -0700

    checkpoint scripts

commit 3bf0b957bf2ded6de0f295bff36f255116e786ef
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Aug 29 20:58:24 2013 -0700

    checkpoint for home dir

commit aab9416915bea6a57674486b3800dcffe1267e28
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Aug 29 15:37:58 2013 -0700

    load command should use @gitRepo

commit 3c0dd551c51af207bcaf86bf6318bd133346f62a
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Aug 29 14:59:17 2013 -0700

    checkpoint for current state of home dir

commit df6b5f3d7584f6f579948d542b86ac73983435ec
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Aug 29 12:20:25 2013 -0700

    implement find categories, find category, and browse category

commit cfb13672e3d5098a05ae82117057abfd591cdce2
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 13:09:11 2013 -0700

    fix TDGatewayNode related to loading directory structure from STON

commit 7d51a0cd18dc12c52f695f4dd933488f89e6e0a7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 06:53:36 2013 -0700

    as part of Topez-Server-Core TDBatchEditTool  should not implement initialize

commit a51a44f06ed77a07f12a2c8a6b718cd28d49b7e7
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 06:19:13 2013 -0700

    checkpoint ... fine tuning inport/export scripts

commit a7567dd059e0cdd06cb0e9be67120eb4ff6fcbd4
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 06:18:09 2013 -0700

    checkpoint ... fine tuning inport/export scripts

commit 37b91c8fbf3cc91e7e4311a48e4e469c82f51fc0
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 06:16:11 2013 -0700

    checkpoint ... fine tuning inport/export scripts

commit c464b6b0f8a87ec914752507b2fce94eda1065c8
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 06:15:00 2013 -0700

    checkpoint ... fine tuning inport/export scripts

commit 71e0ce95547a52109153c2436288d56391deb148
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 06:00:18 2013 -0700

    dumped tode directory renamed to ston and new home and bin exports

commit 3021684e0f5db84b934de9eb8db7dd9597987015
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Wed Aug 28 05:05:15 2013 -0700

    add filter-block option to browse commands ... add `find psender` and `browse psender` commands ... pure sender, no literal refs

commit d32e94850627bff9e7a7fc7c9bac829be33010bc
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Aug 22 09:49:54 2013 -0700

    in tode/bin.ston, add configuration-based variants of load and commit

commit 37b02355641c69ad9180805f65ca3889be3bc9e8
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Thu Aug 22 07:48:50 2013 -0700

    update tode/bin.ston with latest version of scripts

commit fd341c8cd91740872e8c706f5e8e44315a9e0ec6
Author: Dale Henrichs <dale.henrichs@gemtalksystems.com>
Date:   Sat Aug 17 09:44:13 2013 -0700

    fix bug in `test project` ... running test cases more than once

commit ba4349c5bc2ef822fadad0c92532ef8a4f2d3321
Author: Dale Henrichs <dales.henrichs@gemtalksystems.com>
Date:   Thu Aug 15 17:00:19 2013 -0700

    fix bug in debug tool...reuse the stack window after debugger opens ... keep window id around in the tool instance

commit 572d5f0f0229c99009eafa7d21a5f4499e4707cd
Author: Dale Henrichs <dales.henrichs@gemtalksystems.com>
Date:   Thu Aug 15 15:32:50 2013 -0700

    fix `rename class` bug

commit 77da39003e3c2c1ea8edf99450b29e85bad9e416
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 15 11:43:24 2013 -0700

    improve Smalltalk api for `bedit` family of commands....clean up `find` command Smalltalk api: eliminate use of tokens as args ... pass in the token for those commands that have single args ... `rename class` command now uses `bedit references` command so make it easier to edit source after rename ... RB would work here better, but RB is not ported yet...

commit dc1a1b19daa810dfe1c546179380e572f8197a9c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 15 08:06:27 2013 -0700

    expand the list bedit commands to include:
    
      bedit class <className> <source-regex> <replacement-string>
      bedit instance <className> <source-regex> <replacement-string>
      bedit list <definitionList-path> <source-regex> <replacement-string>
      bedit references <globalNameOrPathRef>  <source-regex> <replacement-string>
      bedit method <selector> <source-regex> <replacement-string>
      bedit rmethod <regex-pattern> <source-regex> <replacement-string>
      bedit rsender <regex-pattern> <source-regex> <replacement-string>
      bedit sender <selector> <source-regex> <replacement-string>
      bedit source <regex-pattern> <source-regex> <replacement-string>
    
    with keyboard mapping:
    
      CMD-g - go to next match
      CMD-j - perform replace, go to next match

commit 183dab783d8a376e27c7c8a4c1754df405129f06
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 15 01:04:12 2013 -0700

    client-side support for bedit command

commit 07783b91c332d5ffc68f7916b068aa2b2a34569b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 15 01:00:46 2013 -0700

    tweak `bedit` man page

commit 35c9e3e904043168755fc48249fa6402063d6acd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 15 00:57:31 2013 -0700

    add TDBatchEditTool and `bedit` command...CMD-o skips edit, CMD-p performs edit. both move to next regex match in method or next method

commit b0e3ae3e256d414ccf928ee5c91ee91eb9248f3e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Aug 14 14:45:48 2013 -0700

    add `rename class` command ... move all examples to `/examples`

commit bd5e14e343136cacf65ab1d973f7fa1b9c2afdfa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Aug 14 11:00:32 2013 -0700

    create MCNewFileTreeTodeTool to use command arguments and eliminate structural dependencies. Extend functionality to include doing the `git push` (relying on passwordless ssh access to github).
    
    shell examples moved to /examples...
    
    better scripting api for git tool for example: TDGitTool>>gitcommitIn:with:. All git commands use a similar form....workaround for `git pull` bug.

commit 92e91a2d58aba48a57b2c9d3d944220627446b35
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 8 16:28:00 2013 -0700

    Use #withGemstoneLineEndings in TDGitTool>>createTmpFileWith: since lf is expected on disk
    
      Let's see if this works:)

commit 22373e14c355edb60bc7da423d8df9bef5f96a65
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 8 06:41:23 2013 -0700

    create TDGitTool>>resolveDefaultGitRepoDirectory. If a `gitRepo` is not present assume that you are in a git repo and use `.` as the git working directory...fix a problem with resolving `.` correctly

commit 8d47bdb12c16a27d65e5d80ca8a88ea5acaad439
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Aug 7 17:18:05 2013 -0700

    add TDFileSystemDirectoryNode that provides filesystem access for instances of ClientFileDirectory or ServerFileDirectory...especially useful if you create an instance in a gateway node....add TDFileSystemLeafNode that provides access to (text) files for editting and catting from within tODE

commit 62a305f30a53ec65540469e19c019f31ed1d3edc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Aug 5 14:40:48 2013 -0700

    ston dump of /home/bin scripts

commit 0e94100ddd735dcc1155dfb2758cd41fcfe16867
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Aug 5 06:25:46 2013 -0700

    add `browse hierarchy`, `browse package`, and `browse project` commands

commit d98d389f0c0ec624fe8eea8f4f1a0753c67a51a7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Aug 4 14:21:44 2013 -0700

    add `mm locked` command to list locked projects ... update gitManPage to explain that @gitRepo is used as default git repository path

commit 8462e8c44071ec6f17a54a2abd0a173f8336fb44
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Aug 4 12:56:03 2013 -0700

    fix bug in TDGitTool>>createTmpFileWith:

commit 20bfc317a1ea095de6aef62e3bd8f035c6c6cd35
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Aug 4 12:53:33 2013 -0700

    add TDTopezServer>>lookup:ifAbsent: to make script writing easier...supported by TDNode>>lookup:with:ifAbsent:

commit 63afad34e785fe91aed0f5f2cba6117b00ceec62
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Aug 3 15:09:43 2013 -0700

    create git tool with support for all common git commands including api support ... create an api for mm commit command

commit ee1dbd7d1f45423cdac808e4b8b56f113fdc5c72
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Aug 2 12:16:57 2013 -0700

    record backup and restore times and bu list shows them

commit ec26a185917b2b6e682f4c30a45630183e7369df
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Aug 2 10:23:52 2013 -0700

    mc diff diffs all dirty packages

commit fa3698744d2d8d35aba190d893e444c505e4377e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Aug 1 18:20:57 2013 -0700

    tweak mc browse command (allow browse <version-name> @<repository-path>)

commit 08ffdfb9ec79a725f9f396014619c9b205980a0b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jul 31 18:22:26 2013 -0700

    fix mv command ... fix ston import command

commit d8f65acb95d2acefab0283e887ac5bf64fb250e4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jul 31 15:51:35 2013 -0700

    fix a couple of places where TDAbstractDevTool>>resolveAtPathReference: not used correctly

commit 7caaedafbe3c4b0362dc382cebc6277191a7e58e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jul 30 14:36:03 2013 -0700

    disable the code menus, too since the menu can pop up on the scroll bar there too, when no other menus specified

commit 5b2e48b2bae9cf56938897bae345c7ae665f34ce
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jul 29 14:32:30 2013 -0700

    disable menus in list panes ... don't have menus defined and default menu (which comes from who knows where) will hang the system mercilessly on PHaro2.0

commit e2a75ddd0a447c451f35ecdd8401de579ee8db5b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 25 15:04:35 2013 -0700

    include timestamps in bu list command

commit 14b587d8e9653d58aef452fd3f5449fe1388f047
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 25 11:31:12 2013 -0700

    on commit (mm commit or mc commit), I want to see versions and repositories

commit 309aa5b4fdb9f3e7e78c4ec936aa37e750bd89da
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 25 10:31:41 2013 -0700

    remove #objIn: hacks from doit and run commands

commit a6a54f27a5e841986be643d6afbb1b072e57a8e6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 25 10:29:06 2013 -0700

    results of commit and expressions involving input should be available

commit 3f72f2f1e60bed6fdc4680def1e1b4747bdbdf2d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 25 10:27:06 2013 -0700

    return the newVersion list as result of commit commands (rather than package names)

commit bab60b72a8d190b15ef107b5bfeee56382c36f8f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 25 10:09:59 2013 -0700

    and now for the better feedback

commit 3bb3502222ca261f0340d247cffd4c24a893e4a7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 25 10:08:28 2013 -0700

    switch from using Gofer for commits ... better feedback if I do it myself

commit 06cee5c5332e54cb020cf6a3d9a083726a879175
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 18 06:07:18 2013 -0700

    enable debugger keyboard shortcuts from stack window

commit 427058258d9dba6bac504419f5a8202fe945965e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jul 15 02:35:57 2013 -0700

    remove logging ... remove process node in /tmp/debug

commit f388da15b611d75af0a3f97115c625f7e66533bd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jul 15 02:28:14 2013 -0700

    clean up some client-side issues involving terminating processes correctly when debugger is closed

commit 5359086815bb603e5f683dc71fbb540274ebb49d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jul 15 02:22:27 2013 -0700

    multiple open debuggers now supported issues with running unwind blocks on close appear to be addressed ... took opportunity to toss some of the unused methods like the halos ... the nodes are now stashed in /tmp/debug/<process oop>...still need to toss node on window exit

commit 2a7f6158f815b72a25da7314db94989660994438
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jul 14 15:34:15 2013 -0700

    checkpoint: working on reworking debugger implementation ... need to support multiple open debuggers

commit ee0506deade333e5b280b89f11875606ea4042dd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jul 13 13:03:49 2013 -0700

    need to terminate the process when we abort error handler

commit a98e9578db1470dc45a7f22b95ef085067240c90
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jul 12 10:27:31 2013 -0700

    avoid executing ALL st nodes in dir when executing code via doit or run commands

commit 539b315c2c20c265f5414dfa35533530ba968b85
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jul 12 10:12:58 2013 -0700

    independent control of debuggerWidth...

commit ec92f61bcfc3a836f5d6a5433500d6a10e564efa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jul 11 07:56:17 2013 -0700

    add mc compare image command...don't rely on modified packages for comparison...dbstack and dbStack do not coexist well on mac...is this 2013?

commit 58c80315290abef61a40fbb265bf2580f2a12c03
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jul 10 15:15:57 2013 -0700

    add mc bump command (version bump)...add Transcript logging to various commands...rename test mm command to test project...add test rerun command

commit d63e50ac5cbb467490c59469e0c592adc9ac243a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jul 9 16:58:03 2013 -0700

    fix a minor bug

commit 2fb2c45c6201025973be29b413c6b252de3e690f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jul 9 16:01:19 2013 -0700

    use TDAbstractDevTool class>>performSubCommand:objIn:tokens:windowId: whereever appropriate ... lots of places

commit d53043295ac1ebd960fe91c07af3770b9c9d84c5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jul 9 15:04:32 2013 -0700

    tweaking various commands

commit 64badc6e3763db279f5b136ef47fe8cd5ff5fdd3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jul 2 14:26:44 2013 -0700

    create MCTodeDeployTool and MCMetacelloTodeTool to share code with MCFileTreeTodeTool and provide Metacello deployment commands ... expand mc copy, mc load, mc move and mc version commands .. push code around to taste

commit 9ca6545487516cc0909917ebfb41ccfe206be6c6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jun 23 20:26:40 2013 -0700

    revise implementation of mr remove

commit 096bae450d573efb39e15a38c111156ac2e40876
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 22 10:49:40 2013 -0700

    implement TDMonticelloTool>>mccopy:from:to:

commit 11ad7b5d957de7e3f46d65e934be9d47dc98088d
Merge: 15aca6a d0f94e4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jun 17 17:45:52 2013 -0700

    Merge branch 'issue_25'

commit d0f94e4026b7eb1ef367bde51852bec54df891bd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jun 17 17:45:25 2013 -0700

    update image tode export

commit 6fcee4bbc5983308606c098cb95187aabcdb48db
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jun 17 17:41:35 2013 -0700

    update deploy command man page ... tweak implementation ... add mc move command

commit 2f78c9ffdb4f842eb0d6b1f13df1c1dd33e81c83
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 15 20:49:08 2013 -0700

    MCFileTreeTodeTool work

commit 679707b9e6b5595aa290cd940fcbebb80563d143
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jun 12 07:17:35 2013 -0700

    add TDRoassalListElementBuilder in support of roassal ... proof of concept for roassal is complete

commit 9ebb161bd60be74d51123018259ced57cafa9850
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jun 12 07:12:56 2013 -0700

    hack to get roassal view displaying correctly (cannot use tODE windows for roassal at the moment)

commit ab8e6c918241d4862b242c9ac4b375abf1844437
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jun 12 07:09:00 2013 -0700

    checkpoint ... adding edges

commit c30cf23e72f848fffb805f5924920df09b788c8e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jun 11 16:28:37 2013 -0700

    add RoassalSupport ... add foos description

commit 9e37cba228955a7fe4508dcddf9e245be556459e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 8 16:42:47 2013 -0700

    improve db commands api for programmaticly setting breakpoints

commit 15aca6a7de771119e284f2111799d562a49ffd94
Merge: 3e5fed1 0537cbb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 12:39:05 2013 -0700

    Merge branch 'issue_25'
    
    Pharo is green, GemStone is red[1], the tests need to rewritten so we're not dead.
    
    [1] https://travis-ci.org/dalehenrich/tode/builds/7852396

commit 0537cbb22cd2dcd64453257a2abc1440c1157b14
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 12:32:19 2013 -0700

    move postload doit to the platform packages...Pharo client-only does not have TDStandardTool installed

commit 3352fec8bb503758e35daa4d48513557dc609ab0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 11:40:30 2013 -0700

    have to create postLoadDoIt for tode to correctly initialize the tools...

commit 3e5fed17ccdfb1fb29bfd034408e02e65c7eba8c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 10:20:56 2013 -0700

    fix a tode load/initialization error

commit ac0aa2564a72d73bb8aeddeba2191c4719bd8c87
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 10:09:06 2013 -0700

    add tutorial

commit d3c6f494a7a508d647ab2fa2eca9a01bff06638d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 10:01:05 2013 -0700

    refactor ston command to make calling import/export from smalltalk easier

commit cf3aa6033cd87994e6f5f183fb4ddf6ea36f6d8e
Merge: 77284a3 b581cc8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 09:42:41 2013 -0700

    Merge branch 'issue_25'

commit b581cc847d43e6753352e6cd0ebcdc738710cf1a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jun 6 00:10:16 2013 -0700

    restore some required #respondsTo: logic ... make it possible to inspect a TDObjectNode ... it is used in the inspector so you need to use '.' to see underlying TDObjectNode ...

commit 23f842dd841451810bcff5f816d6a14408c32d15
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jun 5 22:46:58 2013 -0700

    fix nasty TDDirectoryNode bug -> make #copy ... fix editorAspect handling in TDDirectoryNodeClientListElementBuilder>>itemSelected:at:shiftPressed:...TDShellTool>>cat tweak...fix TDShellTool>>run objIn handling...

commit a5b52f4d056c66debeedb3549fcbd4e31699bb8f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jun 5 13:41:46 2013 -0700

    fix cross-session pkgs/configs bug ... doit/run now have consistent and complimentary interpretation and updated man pages that should make things clear ... add childNamed: to TDDirectoryNode, too...for TDExecutableLeafNode, at least generate some of the fields for manPage by default...update browse/find man pages ...

commit 13d1fcf8dad5619a8a560d7c61ea75d75ecfdf14
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jun 5 05:33:44 2013 -0700

    add TDDirectoryNode>>objectNamed: to simplify script writing ... add sh command...spawns a shell window on given object

commit 0d167352f82330909864338abab6774312def9c5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jun 4 21:46:52 2013 -0700

    tweak default shellWindowHeight

commit da9305acc70352aedc409571d1b7f8bbc62f6888
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jun 4 21:45:47 2013 -0700

    add independent shellWindow height for additional control of layout

commit e5b29d3a550d7e01511ab5ef9689a500b4f35fa2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jun 4 21:41:32 2013 -0700

    add stack command for accessing results from result stack ... last 5 results

commit 7d90626f0c7d4ec50c357c335c1e8ae4dc22f7f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jun 4 20:44:45 2013 -0700

    rm removes multiple nodes....avoid IdentitySet when doing find command...use truncate: since we want ellipses...

commit da85a236a3aad8c0d198974b7ec58c37c3d7b6f5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jun 4 19:15:51 2013 -0700

    add FileTree deployment tool ... doit/run commands can now reference nodes in currentNode as temp variables ... browse list command to support definitionList filtering ... implement #= and #hash for TDDefinition hierarchy

commit bffdb3b3d593c3fa5319c1fae48f4739c412bcbf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 1 13:53:58 2013 -0700

    consistent use of TDEditorSpec (always supply an editorAspect)... working toward symmetrical operation of inspect and spawnShell (ESC).

commit 04ba7f4b74ad33935f66a634c3d6fbec7527901a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 1 11:29:37 2013 -0700

    arrange for TDDevProcessSupport>>commit to return a meaningful STATUS object for each project committed

commit 3ac05f6de4adf210e2d3239a46d9d3175a8eac5d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 1 11:23:43 2013 -0700

    rename listIndex iv in TDClientListItemAttributes to list, since the slot is now expected to be an OrderedCollection...#navigate editor aspect should be reserved to use as the default aspect that brings up the standard navigator for all objects; rename attributes for those that didn't follow this convention...add some support methods to TDGatewayNode...TDStackFrameContentsClientListElementBuilder should be a subclass of TDDirectoryNodeClientListElementBuilder so that we sharing some important behavior.

commit 2d204dc58452b3117d1ac8105847edc3fd3a93e6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 1 10:39:02 2013 -0700

    remove unused methods

commit 8c34c5963769c9983827dc12ec68a0bc0141d252
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jun 1 10:36:39 2013 -0700

    fix introduced problem with spawning shell...

commit c694985009996824d7c359d31639b201b4629e42
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 07:58:16 2013 -0700

    get navigator working in Pharo

commit db5e88f66147d7fd423acee7d854f804bc564cf7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 07:44:46 2013 -0700

    fix a few bugs that have crept in ...

commit a9e375d1a673968bed13e143c20515158045d44d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 07:28:28 2013 -0700

    parentList must be an OrderedCollection

commit 78b321d928462be6f32f3a16aa74cede52c0aadd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 07:22:59 2013 -0700

    convert from using parentListIndex to using parentList for TodeClientListElement and TDEditorSpec instances

commit 9c6fe5e4e5c8748d9f55df971e1683a480af985a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 07:14:20 2013 -0700

    rename i.v. parentListIndex to parentList for TodeClientListElement and TDEditorSpec

commit ec3c52f64d63e408b3b9d6b1580fe41116e1fb61
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 07:06:34 2013 -0700

    pharo port tweaks

commit d453817cd30b4cb753982a6b7f6790678ed708b9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 06:48:37 2013 -0700

    implement displayOnPolicy: for pharo

commit 5704f06da30647a7a8e632a1efb559970d31df0b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 30 06:41:37 2013 -0700

    displayOn: is already taken in Pharo ... replace with displayOnPolicy:

commit 030fbe5ac8c3b824b7017ca998e5f050882d334c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 17:22:37 2013 -0700

    basic class browser functional

commit 644ced2af73bfc32d6c2761420a273f4d0c1fef0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 17:06:08 2013 -0700

    fix bug in TDObjectNodeBuilder>>childNamed:parent:ifAbsent: and get package/config selection working again

commit c8fdb116316b34c0a53f1faaf57e5893f3dac660
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 15:02:31 2013 -0700

    refactor gci calls for clientElements so that the call is moved into the gemstone client leaving pharo client free to perform clientElement code directly

commit 8173df72cf6e361135fc28d4be42ae4157b5b8a6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 14:05:55 2013 -0700

    Use OrderedCollection for portability (instead of Array)

commit c0a877d68955818c43329d71c5d19967a77d7d7e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 13:52:22 2013 -0700

    Issue #25: working on getting SHOUT to work for Pharo and GemStone

commit 74a737c5db08535723fbe6130a429648fc6dcc37
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 12:17:00 2013 -0700

    Issue #25: checkpoint ... windows coming up in pharo on pharo ...

commit 3d2574a2324973ee708d4a49daaa2e76df21a0f4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 11:51:36 2013 -0700

    revamp TodeClientElement hierarchy to support native Pharo client elements ... involves saving blocks directly and conditionally recording oops only if client element sent over wire

commit 7905459a59f25652d782f76cf553d5df17b4954d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 07:54:38 2013 -0700

    checkpoint Issue #25: working on getting editor to work ... #className is overloaded so start usint theClassName

commit c84a4f2e49e20f37c9630e7a6abe4b1c8bac2dbb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 28 07:02:33 2013 -0700

    a bit of hackery to get the ls and cat commands working in Pharo ... quite exciting

commit cccd3af0d1374e8c784c0265ce5ea6e845967c7a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon May 27 20:12:52 2013 -0700

    checkpoint Issue #25: TDTopezServer loaded in Pharo and GemStone ... working towards a registration scheme that works for both platforms...

commit 2670b205fde8fccbe9bd2b8a494ac7112a65f0c2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 26 21:36:13 2013 -0700

    Issue #25: checkpoint moving code around...

commit 43f56653c57e9f5d03c3cbcfe47a5c6df1671c11
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 26 12:25:10 2013 -0700

    Issue #25: tode server loads into pharo without error ...

commit 47cbabf058f3ed8cd14e0549098f530723177cd1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 26 12:10:53 2013 -0700

    refactoring Pharo side for GemStone Client support and Pharo server support for Issue #25

commit e1dd439617e3929701287772d38873acf0b02874
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 26 11:14:39 2013 -0700

    fix up the dependencies ...

commit 7df9f56aa1b4261c53160cf037d62b485054116f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 26 10:40:48 2013 -0700

    fix up the group definitions and update docs and tests with the correct groups

commit 167c09180dae379b811500c81ae5a6a026b95eee
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 26 10:31:23 2013 -0700

    Issue #25 ... re-packagin in preparation for Pharo port

commit 77284a3a3a33db1eed700fa2716f353eb1de77e7
Merge: 8d07f5f 45e9bc1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 26 10:25:21 2013 -0700

    Merge branch 'dev'

commit 45e9bc1e7be47409f5aa00c6d7033ee072f17147
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon May 20 22:38:48 2013 -0700

    get server tests passing again, with recent changes ... use $` to delimit tokens in command line, can be used to pass strings into commands (like commit messages) or escape tokens containing $; or $> ...

commit b538e6e12342c7b2848327a9cd4b8468680f08c8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon May 20 15:42:29 2013 -0700

    fix limit oops man page ...

commit 911339cc7bc2d136baea1a349ab4e273e077ca98
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 18:07:06 2013 -0700

    fix commit message logic... and again

commit 9003291393e7b93e4fa3ef504513823b50ccd00d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 18:06:11 2013 -0700

    /home/image/commitMessage/

commit 1e31f0c171a3b5edf65bf0f68c19d288ca7c3d81
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 18:04:39 2013 -0700

    fix commit message logic

commit 42e732061a7c58b5ed23397cb74f9568037672df
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 18:02:43 2013 -0700

    fix post commit git logic

commit 745767e1c9dca750932d91286db8c1e94414f7d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 17:57:10 2013 -0700

    define post commit action for git repositories ...

commit a885343b7660f4b61272ffd5aeae5302c81a9588
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 16:03:59 2013 -0700

    a bit of mm/mc commit refactoring and use new approach (#toolInstanceFor:) for commit logic

commit 3267521da05d0d3864f8e739da1e21534b95fd52
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 13:08:52 2013 -0700

    cleanup the recent work on mm diff and extend to mc diff

commit a858674adec92dd1da82280307c539778cf01d7c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 12:34:13 2013 -0700

    add  to TDScriptLeafNode so that programatic tool calls can be routed to correct tool without going going through textual script interface...revamp TDDevProcessSuppot backup and diff using new approach ... refactor bu backup and mm diff commands in support of new approach

commit 49dd20d513180e38f291c38cdd4f09a1c60fc949
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 08:46:26 2013 -0700

    update image structure ... revamped command implementation

commit c5c3953207e9754a0b99eb5c8f4d8429bfdd0928
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat May 18 08:42:57 2013 -0700

    refactor TDAbstractDevTool hierarchy a bit to accommodate the addition of TDDevProcessSupport ... added TDStandardTool above the tools to house the code related to installing generally available commands, commands defined in TDDevProcessSupport have to be invoked directly, but the code and manPages deserve to be managed in a class... sticking code for the image dev support into TDDevProcessSupport ... share some common commit code in TDMonticelloTool ... preparing for revising the commit commands a bit (maybe?)

commit 780624312752a5ad669b513b2652d99d717e9c70
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 21:50:28 2013 -0700

    bin/diff and bin/commit added

commit 8ef32ed1f2df6154e352d6c9b428a7c63f4a780d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 21:44:43 2013 -0700

    add commit-message-path to mm commit command. all list of configs for mm diff command. Use TDCommandLine for script execution.

commit f2d592456ec2a1bb8c9fe64755b599f26374a02a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 19:49:08 2013 -0700

    checkpoint for image.ston

commit 5cdaee0cbfd5016dfaee480edd07c30b70f4bd91
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 19:46:07 2013 -0700

    tweak ston command to support import/export commands

commit adf88a09b43f0ffc29b632ed3442abf79edb3c3a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 19:45:53 2013 -0700

    tweak ston command to support import/export commands

commit 6e30f903a2916a807e65925b944dbe1cb79cb2b4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 19:38:42 2013 -0700

    add import command

commit 1ed5297f51b1e833d8bba28d0d22724f54cbf525
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 19:36:08 2013 -0700

    initial cut at image structure for managing dev workflow

commit 16f41d7d7a7c0d63f487315cb0aae00240680330
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 16:50:53 2013 -0700

    tweaks to gateway and bu backup command ... building up node structure for managing my development environment

commit fa39b4011c1f981f94a61904cf07bdbcf7d54fe2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 14:25:54 2013 -0700

    gateway tweaks ... tiner with mr packages command to more information in result array

commit 24f11c0078581b43b091daf0a27857c1d695c3e6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 08:03:15 2013 -0700

    implement gateway node ... gotta say it's cool

commit f7c6e08ae661dc23afbf0add8425b102ea8fcb2b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri May 17 06:27:46 2013 -0700

    finish up implementation of browse amethod command

commit 2c663402074ebb93b8827a0f0aa766a0598a3741
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 16 20:44:20 2013 -0700

    redirect Transcript output to the tode console window while running commands

commit 3a04f458d8102c23a3c29b7f361f851dcd311cb1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 16 20:27:31 2013 -0700

    tweak mc load command to allow @<repo-path>

commit 33a002369444b7a191ca38e4cd8a19b6ab6cddd1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 16 20:14:16 2013 -0700

    use TDCommandLine to parse shell command line ... add nit tests

commit 83bbc7e23a1dfb46afe293570edf68e23f0a85bc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 16 20:11:10 2013 -0700

    allow # to be used in <selector> syntax to disambiguate #> selector from > shell redirect

commit f67fcef7c15eef5f28ef3659c26f1d36ae220430
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 16 14:51:11 2013 -0700

    add find amethod and browse amethod commands ... revamp the SEE ALSO section for man page to give pointers to command block source and method where command is implemented

commit 55f68c237cc0abde62c2cf594556804601597c0b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 16 08:09:02 2013 -0700

    add implementation class name to TDManPage

commit 8b642c90646333e3a417f505540a730cc4891180
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu May 16 07:19:20 2013 -0700

    convert last few remaining users of ds to edit result in navigator

commit 231734ba16183384bb43966fc8f6e05fb093ca97
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed May 15 21:47:45 2013 -0700

    start work on mmb commands ...

commit 553caced1ea9c95124895ef19f6a46a653c54237
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed May 15 20:01:32 2013 -0700

    with wider use of @<path> for commands, print command becomes practical and navigator view is a natural, since you can spawn a console window on navigator and then do operations using @<path> ... monticello tool commands revamped to use navigator whereever it makes sense....

commit c0545afe461ab35cbd7f1728f210b7ba9d633371
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed May 15 16:33:25 2013 -0700

    use #dotSelfObject in run and doit commands ... make references to objects in paths easier

commit b11eca28c2bacb5762112abb03d996ea6fa4dac4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed May 15 16:22:55 2013 -0700

    redirect operator (>) is functional

commit 3815133678b6e08d5996d4f1fd0e69ee791d6232
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed May 15 15:57:26 2013 -0700

    checkpoint...adding redirect operator

commit a97e4fd9bc951c90fa33b77c9d5af69fbcdbc240
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 14 18:28:18 2013 -0700

    fix a bug in creating backups record file

commit 2ec8d94a0cb248c1821a4b40b69b588d19edd928
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 14 18:22:36 2013 -0700

    support for restoreFromBackup: which requires clinet-side logic since a single session cannot survive across the entire restore process

commit f5afca99afcb4f67177d6cf432b55e498e6e085d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 14 18:18:42 2013 -0700

    create TDGemStoneTool ... primarily backup/restore

commit 11dcbfe20b569156b05ec2ba17e4310ef7868cd6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue May 14 10:58:48 2013 -0700

    add @<path> option to all appropriate shell commands and update man pages

commit 8d07f5ffa5feed27151ec4027a135c4cfd074308
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed May 8 15:28:29 2013 -0600

    ping travis

commit a810c01df89e4903041b74546d05aa415b0ed01b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 5 17:18:21 2013 -0700

    format method source for source and destination when doing diffs

commit d85cd34c9b6d4696582d16b1370f1c8c2f08883c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 5 14:04:30 2013 -0700

    wire out the failing GCI test for client

commit 721cc3eaee31aecaba6a45c42266dcf2b2d39f94
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 5 12:01:13 2013 -0700

    switch STON format back to lf so that vi isn't confused ... add info command to record git commit information on load/reload

commit 603146cbe4e19260f7fe20f3616ff125a66eb58e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun May 5 09:07:12 2013 -0700

    improve logout behavior after image restart

commit d131eba0924e8f38a9a33d283f415b6e785d1c43
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 30 18:30:06 2013 -0700

    restore tests/travisCI.st to support non-GCI tests

commit f14cb72cb77f150abcbcde7245b85b2a9e4af016
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 30 18:29:16 2013 -0700

    revert to non-GCI .travis.yml file ...

commit 4c70548bb9f09bc3bd47e1da2653fa6679f83707
Merge: a6ef3cd b58c3e4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 30 18:26:20 2013 -0700

    Merge branch 'master' into dev
    
    Conflicts:
    	repository/Topez-Server-Core.package/monticello.meta/version

commit b58c3e427b4988ba0c1395934cee6abb251b9c8f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 30 18:24:14 2013 -0700

    add browse diff and find methods commands ... improve implementation of find versions command

commit a6ef3cdda09093402a7a66b70e79cb5ad3438678
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 30 08:29:13 2013 -0700

    now probing lib32 installation

commit e50d9fce0c6dac4f151e98fe9cb0f386c82bf582
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 23:24:19 2013 -0700

    ia32-libs/multiarch cha cha

commit 31b89f65fe7b39c63e0e509fce22bae28d187527
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 23:12:00 2013 -0700

    ping 32 is the charm

commit 714b332f772ee7a0413c7e09fa745ea0fc8c8b92
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 22:56:19 2013 -0700

    try setting LD_LIBRARY_PATH

commit 254974d3ae35f56be4b03e72242b9ec7e2df3223
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 22:39:17 2013 -0700

    another attempt

commit 394b35fe2827a8848073c58f5e329c5a7f115b00
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 22:29:37 2013 -0700

    ping the merciless

commit 779d2ad227703b1d3c4712ca5bb3305e74aad0ee
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 21:40:55 2013 -0700

    still in search of the magic formula

commit bdc688089723e46509261f4a68599854a66572ea
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 21:01:46 2013 -0700

    ping aling ... pick up the plugin settings for the vm

commit 7600f9b130fde8a308b8f1fb3e7a3fafe747802a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 20:09:48 2013 -0700

    ping pong

commit eb0a6c78975514edba7837380f92dbcc90b8ecf4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 19:24:11 2013 -0700

    ping pong travisCI

commit 751e46b6eaa0fc419ee19fa6efc4545a1d7dc601
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 18:42:17 2013 -0700

    gci libs copied by testGemStoneGCI.sh

commit fec6f91d4733acbaf33b72a47da5b992e32481de
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 18:07:51 2013 -0700

    ping travis again ... this one just might get past the gci library issue

commit a958a1277c36fa8eab2022364e413f9add1a9d29
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 18:02:04 2013 -0700

    ping travis, tra la tra la

commit 1c95621c30d741f8ee6cb188c4a131838855f915
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 17:43:20 2013 -0700

    rezeroing in...

commit fc473d8f4d3040d6af1f76b5c55c49fad9d43d79
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 17:30:12 2013 -0700

    ping travis

commit 91ce280c37a6b268fe76c8ca51df40c6bc789be2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 16:59:02 2013 -0700

    let's try again shall we? ... update docs, because this is probably the real secret

commit 68f459f26e3b9ac3dcb6ca0a992f8b8e3ac0db76
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 16:36:22 2013 -0700

    zeroing in on the elusive OUTPUT_PATH dir

commit 027808574055a52a082cb18e5ea8dde3893ef456
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 16:25:01 2013 -0700

    need to put the gci libs in the OUTPUT_PATH not the IMAGES_PATH dir

commit 814f373a475ea33bd8d6a6f48833022ea60d86ae
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 16:09:52 2013 -0700

    a bit o logging in the hopes of catching site of the mischievous fellow

commit d7593c01db7006eea4c1dfda16371192671660ee
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 15:52:42 2013 -0700

    attempting find the source of errors

commit a4d6e02b03f913a6521fd7f69e4165e420c8a6fa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 12:42:24 2013 -0700

    wrong path for lib32 .so files

commit 8a0a855e7dd49e0a8a30697d4630e1fb2d6aeff6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 12:36:30 2013 -0700

    add beginnings of common tests and add initial client-side gci tests for use in running gci tests on Travis

commit 9220f48760c56d889730b3e1d66d6de78663be42
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 12:33:27 2013 -0700

    add accessor to make export command work better

commit b8b180f659faef647a34a6088d01a2d3c13a02ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 12:23:58 2013 -0700

    make TodeClientElement>>stonInstVarNames more portable and get started on writing common tests

commit 3bf5b76df070a93cd430c28750ff484b835626af
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 12:22:05 2013 -0700

    TodeSession login test to work out kinks in Travis gci testing

commit 43606b6fbfd1504faf8196e359ccbdc659042fae
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 12:20:46 2013 -0700

    tweak mac session description for 3.2

commit b3ffced095e3de185c4b90556110f3fa365ff59c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 11:54:06 2013 -0700

    preparing for running gci tests on travis

commit d801fc52def18964eedd579ab8b7185b462efe77
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 10:47:37 2013 -0700

    oops ... cut a little too close with the knife

commit 2fdddcea4d6ae69fa4463b7306f78e1cffbb1bb9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 29 10:40:07 2013 -0700

    remove a passle of unused packages

commit b51ba57d5ed8185b7338ac28311a6e3a2ac683be
Merge: 87f0bf6 9203692
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Apr 28 21:14:23 2013 -0700

    Merge branch 'dev'

commit 87f0bf634e7c1831a71d1fdc05a7f1a08e04017f
Merge: d6b562f bd3a1d8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 27 07:20:23 2013 -0700

    Merge pull request #22 from talksmall/master
    
    Fix broken link in README.md

commit bd3a1d89e1f8325f20e26b366c7220cc11cb6ab8
Author: talksmall <stephenlrees@gmail.com>
Date:   Sat Apr 27 14:12:49 2013 +0200

    Update README.md
    
    Fix broken link to Getting Started in README.md following repository rename.

commit 9203692e89580a6fe0c200a0732641e235e62e27
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 26 13:00:24 2013 -0700

    tweak comment format in reload

commit 3eb5b6d10cba1cb188d13fcf841dd429970b6658
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 26 12:55:16 2013 -0700

    switch from lf to cr for good luck on viewing on github

commit b7550335e94fb8df7c021aff4cf590d9657921d9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 26 12:07:56 2013 -0700

    new version of tode scripts with \r and \n replaced by lf so that the files are more readable and diffs in git make sense

commit 3d1235b10bcf0197737ecc26b14bc14a4ddf55a3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 09:50:04 2013 -0700

    add CMD-p doc in another spot

commit d6b562f52ea4f51828b5a4b6524d8740be0f8748
Merge: 16355ab d8ef30d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 07:22:09 2013 -0700

    Merge branch 'dev'

commit d8ef30d45ea8d3e5ab848a1b5a07687c16d5a67e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 07:07:42 2013 -0700

    GLASS 1.0-beta.9.1 might be used in dev, but I should let the configurations drive the upgrades ... besides GLASS is not present on Pharo ... KISS

commit ea7c1b59b3ea2b0238934d7516d4873a9a7766da
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 07:04:57 2013 -0700

    Object>>dotSelfObject was not packaged correctly ...

commit fec5f689e0f7eb0b1c70758b3eaaed611d9a9bb2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 06:59:22 2013 -0700

    I am using GLASS 1.0-beta.9.1 in my dev environment ... travis should too

commit 6ef8e16c26e80d640d766856a2ca33c52ccaf257
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 06:56:09 2013 -0700

    test is erroring out ... need stack ...

commit 952dc4ac052ef9edc3405ce659450dd36c91d666
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 06:46:05 2013 -0700

    need clue why test is failing on travis and not locally

commit fed9c23c6c53a6606969d83352492fc928281689
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 06:25:09 2013 -0700

    Text should be directly editted with CMD-p (add Text>>printUsing:) ... update docs

commit 241ba39d46ca0b5892dc4303e1ea31483ae4d3a0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 12 06:17:42 2013 -0700

    use a pragma (sessionDescription) to denote the sessionDescription methods in TDTopezClient ... no longer necessary to edit initializeSessionMap ... can add extension methods now ...

commit 16355abcc16f70170e551f9f1d07e5d2b6146c8c
Merge: 70caafc 0b0ee22
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 11 22:19:04 2013 -0700

    Merge branch 'dev'

commit 0b0ee22f62bbae77e1dc438e9af808af265fb451
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 11 22:18:32 2013 -0700

    tweak for CMD-p

commit 4b2efec724caa25a41abd8ebab3d3c35da0929bd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 11 22:02:58 2013 -0700

    checkpoint: 26 run, 26 passes, 0 expected defects, 0 failures, 0 errors, 0 unexpected passes

commit 5625247ea6814f745af12c2b6b485dd2748d16c3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 11 21:02:36 2013 -0700

    clean up some misinformation in the navigator and implement CMD-p ... #printUsing:

commit abbcc049bdc240bd99f544669588677449546eac
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 11 20:07:42 2013 -0700

    prepping for CMD-p command ... remove all the references to #print ....

commit ffe686acd1795135d66cd95b7e106733fbf8d57a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 11 17:27:41 2013 -0700

    get started on getting tests to pass ... step 1 eliminate spurious halts step 2 get debugger functional again ... step 3 will be to allow edit (using #print aspect) of objects from navigator

commit 20f1cc134cd6ec7767ef410f90444f763cd2ad9e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 11 17:00:18 2013 -0700

    add TDEditorSpec to encapsulate the proliferation of editor arguments ... replace all calls to edit:... with editUsing: that takes a TDEditorSpec as argument ...finally allow for edit of String that brings up source editor and navigate object references to instances of String that views chars in string instead of the node view ... need to be able to bring up an editor on the string FROM navigator

commit 1c3f0d6f66e0c5e68410cd1ad0ea733268be8df9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 10 17:18:13 2013 -0700

    using #navigate or #edit to replace #browse for editor aspect depending upon context ...

commit 3f73bcba6693000e389b992af8c370abdb795da7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 10 15:25:23 2013 -0700

    added builderAspect to TDNode remove aspect from TDDirectoryNode and friends to make reading code clearer ...

commit fd25b1172ff23ca605324cbc06fb8eb8c8ee19e6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 10 08:09:30 2013 -0700

    checkpoint: dictionary toggles correctly between view and inspect builder aspects ... now struggling with how to handle String/Text ... want to be able to pop into source view, but navigator must _inspect_ it

commit b9e262d97dfa9510343e2ea0559f4c082fe91baa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 9 17:06:05 2013 -0700

    checkpoint: attempting to make sense out of #view/#inspect for builders and #browse/#inspect/#??? for editors ... mainly related to what happens with strings dictionaries and hitting the . line item hitting . should toggle not lead down a black hole

commit 70caafca29bdb4db7ce86735b40269a6d672ea12
Merge: 880c920 0f3a6c0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 9 16:52:54 2013 -0700

    Merge branch 'dev'

commit 0f3a6c01b775dfcd29967e95327752f509cfac0a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 8 21:05:19 2013 -0700

    missed TDStackFrame initialization

commit 4a47583ef83ce34238cba90d3f8bc3f0ca9697ae
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 8 16:48:54 2013 -0700

    update tode scripts

commit 294da39a5f2d2891098660ae67d9871c7ec05c18
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 8 10:24:37 2013 -0700

    mc diff command should set package modified if it wasn't already modified

commit 880c9205415f88acb00c0ddaf2a0a797b5419ce2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 8 09:54:35 2013 -0700

    update load script

commit d2926514ffebe3905b79589f733420c3b3761597
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 15:38:14 2013 -0700

    tweak readme [ci skip]

commit 614fb5d13077df352ca605be3a51f7b5a8c55663
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 15:35:38 2013 -0700

    update with references to more documentation [ci skip]

commit 5b24cc0b8d6e73fad5aae81cf3f9c02c0dcf5ab9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 15:29:34 2013 -0700

    dump out keyboard mappings documentation

commit 86b8dee08cbf25f5593ce4916e3b45a38fdd8a40
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 15:17:32 2013 -0700

    using TDManPage>>printOn: to write to filesystem ... need to use #lf instead of #cr ... until I get a markdown parser (there is a PetitParser-based one) I will straight text, since the md variants were not readable

commit bfd793d27f77fffd9319451bc1a2b84165a88cd1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 10:53:22 2013 -0700

    not at all ideal translation from test to markdown ... need to use petitparser markdown parser ... then the man pages can be created in markdown format and translated to manPage Text or used asis for github

commit 493bda6c9addc620ce800f735028e281020d7b47
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 10:47:19 2013 -0700

    adjust the md creation algorithm ... add lf where needed .. [ci skip]

commit 2e2e2b94bc466372b02ac09b4c4d445da7b4e103
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 10:38:21 2013 -0700

    add first class man page object (TDManPage) ... rename .bin halo to .man ... dump man pages in .md format for additional documentation ... add script for creating docs and add reinstall command for initializing all of the tools ... fix bug found after reinstalling ...

commit 91df6a411778ba6a40fd8b4108ab9e91d9f54816
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Apr 6 08:59:46 2013 -0700

    switch to using tode baseline

commit 7ffdfe357acaf193089c1178c4b5088d04d666b4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 12:18:25 2013 -0700

    add BaselineOfTode and update docs to use BaselineOfTode ... BaselineOfTopez will go away someday and the packages will be renamed too ... not today

commit 4893344589e53629072b700c3ce519f756074b5a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 11:28:34 2013 -0700

    a few more readme tweaks [ci skip]

commit de1e57a88ca311761734e2723ef6f0c80b4eb99d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 11:23:17 2013 -0700

    rename travis links [ci skip]

commit effce98e06bfa3f2557f72cb68ceaa18756c9161
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 11:21:37 2013 -0700

    fix screen shot link

commit c2c2ba6f394f7759fb1b52d9234f9f78f99bff6f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 11:18:06 2013 -0700

    add rough getting started guide [ci skip]

commit a2d15512c7a62e4c763e1226dca88f5d04278e07
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 11:09:31 2013 -0700

    update for repo rename[ci skip]

commit dac237f77e69ad094ce059c2fb5be1aa805f5c37
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 11:08:47 2013 -0700

    update for repo rename[ci skip]

commit 4a76fa07c6227620837eb4558fb2c132f4aa335e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 11:07:41 2013 -0700

    improve gci lib installation instructions and adjust for repo rename

commit 8461e835eec10e9fc5d415ee64d170d84132431c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Apr 5 10:45:23 2013 -0700

    update readme [ci skip]

commit 2bcfaace8445b1b8759b96b0a64f201ff900e980
Merge: cba6f3a ad342ed
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 4 17:06:01 2013 -0700

    Merge branch 'issue_19'

commit ad342ed754f4764b38f5435ab30a073918b51c68
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 4 16:47:07 2013 -0700

    add .keymap halo

commit db2b42b3e8dd2458d16f5129d221bac9bc18436d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 4 16:23:15 2013 -0700

    add .bin halo ... update man pages since summary is more visible with inspect .bin

commit 96bbb8f6bb3b632f7a2fcea7b184926d064bd45f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 4 14:06:52 2013 -0700

    add windowBuilder instance variable to TodeClientElement as developer aid

commit fa65c487dcebd535cdc4438647e0b16fcf63c88f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 4 13:32:14 2013 -0700

    G/S 2.4.4.1 not ported yet

commit be227048601a36345c5d4cb257b10e2445a01e86
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Apr 4 13:31:41 2013 -0700

    add windowBuilder to client elements to aid in development (reference to source of blocks and oops)

commit 812f0b642b911e2a94fb9108edf0ce4f7b583e36
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 3 22:21:13 2013 -0700

    fix initilization problem for TDStackFrame

commit d35e3061839389dc0633f8dbad8a6b766ae8a9e0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 3 21:33:58 2013 -0700

    update reload script with onConflict: block

commit cba6f3a7d05a503a27826e40557efdeb1d21dbc2
Merge: 5b34b4f 10bd0e4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 3 17:03:49 2013 -0700

    Merge branch 'issue_19'

commit 10bd0e44168c913a2de577f8cfc20d15ffc55483
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 3 16:52:49 2013 -0700

    Issue #20: actual rename ... take oppotunity for a bit of housecleaning as well

commit f736d63c0d1bf7aa66b56cc9138d47379e37a61e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 3 16:46:19 2013 -0700

    Issue #20: rename RB packages directory to repository

commit 76d79fb332c60ab53022062667d1e7a72e01f7fb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 3 12:07:59 2013 -0700

    even more bullet-proofing

commit 9ac84cdb41e65531986c39c5e3b7b093a888b80a
Merge: 4910642 4eb5351
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Apr 3 09:44:43 2013 -0700

    Merge branch 'issue_19' of https://github.com/dalehenrich/topez into issue_19

commit 4eb53513fec0f7f5da7de1aa1460ad2ad315602a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 2 20:53:51 2013 -0700

    a little bullet-proofing

commit 49106427d1a02ba429ee37cf49fa98c061de22c4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 2 14:09:48 2013 -0700

    add 3.2 attribute ....

commit 3bf53ae26e65e50d176ca778f0c36d7138da1503
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Apr 2 09:34:07 2013 -0700

    better error handling when remote stone/gem is gone

commit da0c88f883f61b95824757278fad80c843d45488
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 1 21:29:14 2013 -0700

    get db break into/over and db break steps working ... will need to set different breakpoints for 2.4 and 3.1 in the examples ... since the actual step points differ ...

commit ae5decbed786264c2f237ad76c6c320b9226e2ae
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 1 21:26:33 2013 -0700

    continue needs to allow break points to fire

commit 2b34f8dca9b17c5e4e964ebf2d37a34aee881c0d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 1 20:23:01 2013 -0700

    get db continue working for debugger with multiple halts involved...addendum

commit 97942264bb951669b499641a2cf74063d8133b86
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 1 20:19:35 2013 -0700

    get db continue working for debugger with multiple halts involved

commit 6bdd976e47f09db8db4fd9fd9cab604ea83a870d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Apr 1 07:31:55 2013 -0700

    some more tweaks and bugfixes

commit def47e59a2bde6b1dc3f4eb836e7d6c7634dcbe1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 31 09:29:35 2013 -0700

    move TDDebugTool>>gsMethodClass to proper package

commit c55e761c7af3467f6609da6b1ab5eb6a47bdca12
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 31 09:28:02 2013 -0700

    port breakpoint report/list

commit 308b100b2f3701952e6f84e09ed41b0abbc561d0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 31 08:32:46 2013 -0700

    gsMethodClass needs to be a class method

commit 441bafa3ad6d67a22959ae008f10ba7baf367749
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 31 08:22:27 2013 -0700

    more porting changes

commit 3a5d98077c18cfb9f3b2d276bde0a9506a2807ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 31 07:53:30 2013 -0700

    eliminate direct references to GsNMethod in Debug tool

commit cfc8b8837f146b5afa8a3bd50f02398b4aff1e7c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 30 16:34:32 2013 -0700

    checkpoint: basic shell functionality (including bringing up dewbugger) with GemStone2.4

commit 275dc1b287a9ccd650b552dae1c3629b17df1c73
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 30 10:03:33 2013 -0700

    rename packages to avoid using the branch naming convention

commit a5d8e6ff98799b42745ce4efb08f6323cb9c1725
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 30 09:33:10 2013 -0700

    resolving sent but not implemented in 2.4

commit 9c7f10bc69ed328f7a2b77a46f498d169f095bf3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 30 09:31:25 2013 -0700

    add Topez-Server-DebugTools.v24

commit da9ee006bc1559461e49874b8f87489c4cddd7d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 30 08:53:24 2013 -0700

    isolate some GemStone 3.1 specific class references/methods

commit 65eeb1fc329f128e98bf8a73ca686b71a033c2cd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 30 08:53:12 2013 -0700

    isolate some GemStone 3.1 specific class references/methods

commit bb99bf6368a057aa67585c82e6ed590111d792b1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 20:12:29 2013 -0700

    loads into G/S 2.4.4.1, 1.0-beta.9

commit 439bc9a8285eb0656feeb16031e99f01ac16f3eb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 20:00:51 2013 -0700

    Issue #19: turn on tests for Pharo-1.4, GemStone-2.4.4.1 and Gemstone-3.1.0.2

commit 4171e0662577fbe62891a7e9f9051c603ad51cdf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 19:37:16 2013 -0700

    Issue #19: pare back on RB load ... until we are ported to GemStone 2.4

commit 5b34b4f0668146288fdd2d634edf2c8422000d69
Merge: c8f4802 3298103
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 19:28:20 2013 -0700

    Merge branch 'issue_18'

commit 329810387e501fbc8c24d4f042a7ae5e7d716410
Merge: 328d8bf c8f4802
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 19:27:13 2013 -0700

    Merge branch 'master' into issue_18

commit 328d8bf8ff5b9f2bcba6ce79869f2e91697b7f71
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 19:16:09 2013 -0700

    Issue #18: looks liek we have got this one licked

commit 1884b8ba6f7f1e267ddb19cff96e46b9094cde50
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 18:08:34 2013 -0700

    fixed a rendering bug in server

commit 19679f9f20fcb08a5579e3186107be4efc94489e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 18:07:06 2013 -0700

    Issue #18: stripped out obsolete unused classes and methods from server

commit 913d130bb6559ea5171515dd8d3f93fb52840d53
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 17:16:53 2013 -0700

    Issue #18: checkpoint clean load on client

commit c8f48020395cb7e50caa92fde520a983263fd74b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 16:52:16 2013 -0700

    add window sizing for default Pharo1.4 image [ci skip]

commit fdb50188d61168d9d9cd4310313181f5fe3a060f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 16:33:42 2013 -0700

    bugfix

commit ca6135dda171950135862d07eeaafc3aeff4a4af
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 16:13:37 2013 -0700

    final client/server-side tweaks mayhaps?

commit f89d253c52ac326d2adcd232ad5835583b647d0a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 16:07:46 2013 -0700

    final few adjustments?

commit 62c4c3f5910fdf91a5f851c9f0c86e7a7b7606ca
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 15:56:00 2013 -0700

    fine tuning...

commit 526156b590f87b59dbdec75b12d0644ec4518190
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 15:32:35 2013 -0700

    Topez-CandidateCommon-Core is not needed anymore ... methinks

commit 42ad718ac4e13c07f585d8706e3824f9731ce1c9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 15:27:22 2013 -0700

    converting to non-proxy-based error handling

commit 7d4155c712776be6c1fe287be3472a040d94d3cc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 12:37:02 2013 -0700

    found more methods to move out

commit 57e8b5fba72fac6f4382d4e3d0afaac0c5f6908c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 11:14:38 2013 -0700

    low hanging fruit is gone ... time to nominate candidates for next round of cuts/rewrites

commit a08ebae24aef0abb55e361ec69b05c10f731ee18
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 08:49:39 2013 -0700

    rescue some improperly moved classes

commit 7f34c4241f0072bcc3de27400da2b68fbd9dd7c2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 07:51:40 2013 -0700

    Issue #18: mispackaged methods

commit 704617c00176bc6b93df93be77c85489e079cbb3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 07:50:36 2013 -0700

    Issue #18: mispackaged methods

commit a2ceee375496a8d44914d0369c619fcdac2b2552
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 07:49:17 2013 -0700

    Issue #18: partition out the obviously old, obsolete classes

commit 75eee1952d057bfdca642a06b2a9b7d5bfb4e1db
Merge: 1475096 8d2dd68
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 29 06:55:04 2013 -0700

    Merge branch 'issue_14'

commit 8d2dd68c13d84b5e1fe77de3f8a4f6a01cad456a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 28 20:36:39 2013 -0700

    implement doit command (equivalent to ./.self | run)

commit 290a05f27a8a39ff11b78ce69857fc0c4b5e6a30
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 28 20:15:26 2013 -0700

    implement history command

commit 89dc31ec06d7fc3b7b4de73c0b4a852ae1f8891c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 28 20:07:35 2013 -0700

    put worldDisplay in a block ... smooth performance

commit 8144c11df50fc547941167bf36e6a2db29ef7bec
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 28 08:57:07 2013 -0700

    add support for tab completion ... command completion functional, path completion not tested

commit 1a9ca6841d82914f5a3a193a04f53159072b8b73
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 28 07:37:25 2013 -0700

    allow for intraline editing of input string and put in hook for tab completion

commit b5f66ccac7cf788082b8119653da4b3086b96a7c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 17:15:50 2013 -0700

    fix history navigation a bit

commit 200ca548eaf8f50a5e736ba183a1cd2f09615b2d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 16:19:52 2013 -0700

    console history

commit a65a79c9e0b1d4fd89330c5458a2630a2117b589
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 15:37:47 2013 -0700

    convert to using TodeConsole and TodeDebugConsole full time ...

commit ac23a1a73e321a77743038fe9faa4e1dd9b294b1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 14:37:16 2013 -0700

    all keyboard input (no CMD or CTL key pressed) pasted at end of the window ... like a real console window

commit 7368302d5baa592593801110fd7b580645d5ae13
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 14:05:31 2013 -0700

    new console is functional ... run command working...

commit f00c7b361eebe9fda859d14435b6480be7b06294
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 11:48:03 2013 -0700

    checkpoint: large chunks of new console is functional ... run...% is not functional ...

commit 011548ba4322cc24e4f3b874460b9f1b01bf26a7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 10:41:03 2013 -0700

    copied interesting bits from CommandShell-UI and CommandShell-Morphic ... preparing to slash and burn

commit 90a59ef8e6dfb7e978f0440cc04de6e5e7ebe32a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 10:09:49 2013 -0700

    CommandShell-Morphic is needed

commit 4c6949ffe6bda2cbb8540d9d73143f32ee4210b6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 09:50:16 2013 -0700

    copy of CommandShell-UI package ... better console support for topez

commit 14750963f92ce96e705b2cf3d419e43b413cf413
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 08:55:04 2013 -0700

    add note about using Consolas Regular 10 FreeType font (fixed width to boot)

commit 98c0f2167424cad5f223848bf32929e7663774f6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 07:29:51 2013 -0700

    add link to gci installation page [ci skip]

commit 904a21a02ae5b0d6bd8f7f002280886683af3a4c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 06:07:05 2013 -0700

    fix type [ci skip]

commit dee496e9de9d1c5e40b459a1ff8d52858dd227b1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 06:04:18 2013 -0700

    update client installation doc with suggested window settings for 1440x900 and 1280x800 displays

commit 8da45420c638da2425ceeebb97503676056a2530
Merge: 6d2bf2c 5ddc314
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 05:58:29 2013 -0700

    Merge branch 'issue_14'

commit 5ddc314b6e43fbce61d22a5c0e8423da9e5a5616
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 27 05:49:45 2013 -0700

    add codeWindowHeight so one can control the overall height of
    tode...Here's the settings I use for my mac (1440x900):
    
    TDTopezClient
      windowOriginwOrigin: 5@0.5;
      listWindowWidth: 24;
      codeWindowHeight: 21;
      codeWindowWidth: 80;
      initialize.initialize

commit 6d2bf2cfe15100e4add60d426620155448af0338
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 18:22:50 2013 -0700

    add window sizing [ci skip]

commit fb06d4d34866ef48359a11a0db8b2785aa0b93e7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 18:14:11 2013 -0700

    fix typo [ci skip]

commit 6c63a258024d7e9b8755bd5307a3ef3dff1327e7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 18:12:58 2013 -0700

    update pharo install [ci skip]

commit be935364d8f45ac61a1ea9fb7c5edfe76e328f7e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 17:50:36 2013 -0700

    need to load Dev on Pharo (for now)

commit f6eda57718cc360d5d63bb0e40ed2e7329ae0aec
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 17:45:32 2013 -0700

    For hooking up with GemStone we need to load Client in Pharo

commit 0623a29ed18ca3da457f5873641a18d1af094343
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 10:33:40 2013 -0700

    don't need to be flashing wildly ... an update per second will do

commit 8dd7ad6805c9b580e1ea78251f203f26ea80d494
Merge: b5ca473 aa63d8d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 08:16:42 2013 -0700

    Merge branch 'master' into issue_14

commit aa63d8da41e932492186faec33bfc81fdcd05d74
Merge: 41232dc b5ca473
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 08:15:52 2013 -0700

    Merge branch 'issue_14'

commit b5ca473fc5913c3e9ebfd338418741a355b4d4de
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 26 08:06:12 2013 -0700

    interrupt logic is functional ...

commit 2b204ad30de220e482730edd585cd51d65f00202
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 25 21:37:46 2013 -0700

    getting started on userinterrupt handler ... not quite working correctly ... methinks there are two interrupt handlers installed (yeah that makes sense) ... also the GciInterrupt class is only wrapping the VERY SHORT sleep ... and not wrapping the larger loop ...

commit 123d18034e61d7c079043a766c79070b6e7c6eff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 25 20:59:01 2013 -0700

    enable World displayWorldSafely during nbSleep: so that transcript updates are visible as they happen

commit 687b283d6011f1702864f93d862d7ac2fde9bcb1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 25 20:07:48 2013 -0700

    implement mc revert command ... Issue #14

commit d1a70d1bcf06b33071f03bf0166271caed203f1f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 25 20:07:16 2013 -0700

    implement mc revert command

commit 85d073d36b9398e71d15eb3c4ad7ba3f2930f5ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 25 17:42:06 2013 -0700

    fix mm list command

commit 217dfca674d07879a55f21c98fac9c89898399ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 25 08:11:13 2013 -0700

    update scripts [ci ckip]

commit ea52baba8ff0560f9236e232b735ea38d48d0fd5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 25 08:07:48 2013 -0700

    implement mc recompile and extend mc browse to allow for using a package name (with no repo) ... Issue #14

commit 7825620672fc0c99b3092a40b8d5d4122699a942
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 17:34:58 2013 -0700

    implement mr flush command ... Issue #14

commit 50e5c67e9ed830de11d8b30e58702fa0dba0626d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 17:18:41 2013 -0700

    implement mc adopt command ... Issue #14

commit dfcf8586a0791c1368ddf5ad371063a5fd175987
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 17:10:30 2013 -0700

    implement mc load command ... Issue #14

commit 95a92434a64dd3648f4589dad9d10392dc619fdb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 16:58:38 2013 -0700

    implement mc delete command ... Issue #14

commit fdac0cf07142dc1b510e6a3fadcb3cfae1a6b2cd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 13:42:36 2013 -0700

    implement mc copy command ... Issue #14

commit ae4dfa098fd1bfb582f99c100900b70793744e37
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 13:27:58 2013 -0700

    better label for method window

commit e80203b1489968c8baf427145caa074ebdc1bd23
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 13:27:44 2013 -0700

    better label for method window

commit ad40058dbbe4d1bf829066b72ee67734d7141714
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 12:45:55 2013 -0700

    mc compare command implemented ... mm diff and mc diff commands now edit results and return a patch object (as does mc compare) ... no need for bin/diff script ... Issue #14

commit 52bfb53e3a8ade6e688cae96e3d84af415b7fc7e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 24 12:04:31 2013 -0700

    mc browse command implemented ... Issue #14

commit 99994ebf3608fca312706b60777660bcdd399ea9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 23 20:49:22 2013 -0700

    tweak

commit 1aa3c2d7abc0fd9bd1b051a34319d8c5d8b5be27
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 23 20:26:02 2013 -0700

    implement mr packages and mr versions commands ... most of the MonticelloBrowser functionality is covered now .. Issue #14

commit d041013cd5a287ba50a9e1de0a562f0b0725dc58
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 23 09:25:17 2013 -0700

    rename mc history to mc ancestors and return ordered array of ancestors

commit 338c1eab8e3c8e113f8930aa974afccd926f3b44
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 23 09:11:29 2013 -0700

    mr group and mre remove commands added for Issue #14

commit 616e30c793c5ea5a4bfb268bd48a12b97a713660
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 23 07:40:22 2013 -0700

    add mc unload command

commit 3d3fe7a92cf63981b69a54e31549ea4f654c9f42
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 21 18:11:56 2013 -0700

    improve TDMonticelloTool>>repositoryFromDescription:

commit d7766b7a13fa35e3e0ab3e41155570b6e2e3c909
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 20 21:06:11 2013 -0700

    CMD-v on package after CMD-c of method ... move method into package (Issue #14). mc list searches through the locator section of the url ...

commit 9a8a4eea7315dbd9b880754e93370306ba5f5371
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 19 16:03:20 2013 -0700

    when class passed around as error argument, return it as the name of the class ... STON does not take kindly to serializing CLASSES

commit b1636fda305d410c1f2f4f5d31a16b412e0119fd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 18 10:11:20 2013 -0700

    Make the 'Please enter commit comment' text bold ...

commit f6b5230b416322929f2e302d4b9c7de4e71e8b0e
Merge: f6d7810 575ad59
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 18 09:53:03 2013 -0700

    Merge branch 'master' into issue_14

commit 575ad596e52c3b7f98ed4849c6a1b93fa9d1151b
Merge: cb5d1d1 f6d7810
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 18 09:52:12 2013 -0700

    Merge branch 'issue_14'

commit f6d7810be3654aa53c100cf55c3eb41b8e6051ba
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 18 09:51:49 2013 -0700

    change default character limit to 140

commit 24ee18704a286fb028560389f06a58890ea54199
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 15 10:33:51 2013 -0700

    allow use of CMD-m and CMD-n (implementors and senders) in a class/method definition list

commit 0384124797594955f04365cb4dfc37efddbadb6d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 15:43:09 2013 -0700

    add accessor for SessionMap

commit 11cdd981e25b2ea4e9605f958f65f325942c608f
Merge: cd98d43 cb5d1d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 15:41:46 2013 -0700

    Merge branch 'master' into issue_14

commit cb5d1d146652a2a2a8b70e83b74458ba50051f6c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 15:39:08 2013 -0700

    add gci client installation instructions [ci skip]

commit cd98d431792c67edec06857f2cd6e3da6b9f63f1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 15:24:51 2013 -0700

    define sessions for use on my mac to connect to office stones (3.1.0.1, r_ 3.1.0.3 and k_ 3.2.0)

commit 0538018a03dec066605f8c5a1a338b3d689971d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 12:47:08 2013 -0700

    fix a command result issue

commit d1ee3c5d641835076fb3748674d016df0f51a73b
Merge: 84f8930 caca1e2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 12:20:02 2013 -0700

    Merge branch 'master' into issue_14

commit 84f893084a0f222c3a5e2bc3b3ef19d49505500b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 12:19:22 2013 -0700

    set adornmentColor for selected sessions

commit 16de0623167f0ec64272493dd801c304e70a3f41
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 12:13:22 2013 -0700

    add gemstoneVersion gciLibraryName adornmentColor to OGCustomSessionDescription ... the implication is that we can now connect to multiple gemstone versions from same image (not at same time .... need to exit one shell and launch another for it to work) ... still pretty nice capability ... see sessionDescription* messages in TDTopezClient for examples ... simply need to copy the gci libraries into the image directory (on linux) ... not tested on mac ... yet

commit caca1e236d6412b86f13b373a724e2be0db82d3f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 10:46:12 2013 -0700

    fix typo [ci skip]

commit abb2852f6170fa2f7c698d7c0859d2e8ebbc9b5c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 07:23:41 2013 -0700

    found a couple places where I still need to use TDCommandResult ... when you need it you need it ...

commit 0b3248067a0e28e413c86eb83497dd2f970e9b37
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Mar 14 07:20:19 2013 -0700

    don't need to use TDCommandResult _everywhere_

commit e523562567d20be094939247fcdf6aa6b5dd999b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 13 21:58:24 2013 -0700

    use TDCommandResult ... everywhere

commit c444f3828509a0ca9438fa7d64e1f1e378916b97
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 13 21:21:52 2013 -0700

    refine logging for scripts

commit c1799b6ba458544183635038567e23ca109643c3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 13 08:28:55 2013 -0700

    insert TDCommandResult so commands have more control over how result is presented without compromising ability to pipe objects around

commit 41232dc70b5f9d5c75dd6f199c5574884cf97441
Merge: cde9f75 60e05ac
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 13 08:01:07 2013 -0700

    Merge branch 'issue_14'

commit 60e05ac52e9dc3c7d551bcb49025ce0581fadf6a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 13 07:49:41 2013 -0700

    add TDCommandLine

commit 36a0c4a1d3c4a173a26a31fff9069b4dc8ba8ba8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Mar 13 07:39:00 2013 -0700

    dump timestamp to transcript when running scripts [ci skip]

commit 95373b83eac88a9b55523de892cd0fadcee618ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 12 20:51:08 2013 -0700

    remove halt in export script

commit 38646d90b17d872c647b2cc12f2df31489042791
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Mar 12 19:30:34 2013 -0700

    reimplement import and export to import all .ston files in a given dir and to export all script objects from a given topez dir

commit 296eec3bb87a011e746e127f682bed73bcda930f
Merge: 919b979 cde9f75
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 11 08:36:09 2013 -0700

    Merge branch 'master' into issue_14

commit cde9f75a0e7c6124006f154e0eaa72318dbf0b6d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 11 08:27:50 2013 -0700

    rework mc history command

commit b1369c7eca992da26c16db5f9ca384f4afa671c5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Mar 11 08:27:19 2013 -0700

    master

commit a53aaec3891d4fb732400a8d51ed0b9ed6f2307e
Merge: ddbf442 919b979
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 22:43:00 2013 -0700

    Merge branch 'issue_14'

commit 919b9791bb69e9e929d441e5a54f2aa534df0d59
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 22:38:05 2013 -0700

    add find versions and browse versions commands (version history)

commit 3655004fec2bf3faf62f62f860e7e15efaf5b504
Merge: ba6c75a ddbf442
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 22:37:39 2013 -0700

    Merge branch 'master' into issue_14

commit ba6c75a9ffb135e1c1b6a7b89a61f97b102f2b28
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 22:36:24 2013 -0700

    add find versions and browse versions commands (version history)

commit ddbf44291b2350d00f47986ead55e24742c073e0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 15:46:02 2013 -0700

    don't need verbose option on travis builds [ci skip]

commit bba8f8b6ddbcd3cb071a80c520726fa33dc4bb04
Merge: cf1bb75 3d3cd34
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 15:35:40 2013 -0700

    Merge pull request #15 from dalehenrich/issue_14
    
    Pull Request for issue_14: Issue #14 partial fix but worth sharing the chewy goodness

commit 3d3cd34114e07ed2632e1ae9e34031b597ac08ce
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 15:18:03 2013 -0700

    Part 4 (last part?):
    
    mr add, create, list implemented. CMD-v of class on package adds class
    to package. Package process tools separately (resolve a load order
    issue). Support dev scenario (with assortment of changes):
    
      1. create package (mc create)
      2. move class to package (CMD-v)
      3. add package to baseline (manual edit of baseline)
      4. diff for baseline package (mc diff)
      5. commit baseline (mc commit)
      6. produce diff for baseline (mm diff).
      7. commit dirty packages in baseline (mm commit)

commit 0ab5d97a6bd021b62a4a01f8a97c5ed52d09f300
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 15:16:43 2013 -0700

    Part 3:
    
    mr add, create, list implemented. CMD-v of class on package adds class
    to package. Package process tools separately (resolve a load order
    issue). Support dev scenario (with assortment of changes):
    
      1. create package (mc create)
      2. move class to package (CMD-v)
      3. add package to baseline (manual edit of baseline)
      4. diff for baseline package (mc diff)
      5. commit baseline (mc commit)
      6. produce diff for baseline (mm diff).
      7. commit dirty packages in baseline (mm commit)

commit c662e0369bfced81c0ae7b6d8c720fee6919bfd9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 15:06:53 2013 -0700

    Part 2:
    
    mr add, create, list implemented. CMD-v of class on package adds class
    to package. Package process tools separately (resolve a load order
    issue). Support dev scenario (with assortment of changes):
    
      1. create package (mc create)
      2. move class to package (CMD-v)
      3. add package to baseline (manual edit of baseline)
      4. diff for baseline package (mc diff)
      5. commit baseline (mc commit)
      6. produce diff for baseline (mm diff).
      7. commit dirty packages in baseline (mm commit)

commit 67dc2de6f19dfc08928e36fad6d0b185773417b2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 15:06:23 2013 -0700

    Part 1:
    
    mr add, create, list implemented. CMD-v of class on package adds class
    to package. Package process tools separately (resolve a load order
    issue). Support dev scenario (with assortment of changes):
    
      1. create package (mc create)
      2. move class to package (CMD-v)
      3. add package to baseline (manual edit of baseline)
      4. diff for baseline package (mc diff)
      5. commit baseline (mc commit)
      6. produce diff for baseline (mm diff).
      7. commit dirty packages in baseline (mm commit)

commit 5e0b1783fb94114147d133b2f34ef034479d9f13
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 15:03:02 2013 -0700

    add Topez-Server-ProcessTools and Topez-Server-TestProcessTools to resolve some load order issues

commit 12855852dd34b794fa3e4438f01bb1a2bf53a394
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 11:49:41 2013 -0700

    Issue #14: implement mc create command

commit d2f6511732ca290996d7de71b1aa9a23d3a42b44
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 11:32:39 2013 -0700

    convert mc commands to use the mc method prefix ...

commit cf1bb7549161131942917fee1b29a7e9c19890dd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 10:54:14 2013 -0700

    fix license [ci skip]

commit 8ec414e01ce87b6fbee0810a9684025e9a980acf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 10:52:46 2013 -0700

    tweak readme

commit e3653b4ee47c444f1e34d956c60695955b9b456c
Merge: 0929729 085f724
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 10:50:54 2013 -0700

    Merge branch 'master' of https://github.com/dalehenrich/topez

commit 0929729ccdfbb25a5c4a520690d1ae5d7a645006
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 10:37:07 2013 -0700

    add travisCI status to readme

commit 085f724f6c245c4255a7f231f95e569c7c39323b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 09:49:13 2013 -0700

    ping travis

commit cf10585cbd18fd85ccd2f937e342a1e9eaa8b82f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 09:47:00 2013 -0700

    add travisci tests

commit b3eef72e5ff45c95f59e384061c76a147119faa0
Merge: 1055899 c5c3c31
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 09:34:54 2013 -0700

    Merge branch 'master' of https://github.com/dalehenrich/topez

commit 1055899926adfb5dafbeb7eef7c0e1512283ecd0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 09:34:25 2013 -0700

    rename TDTopezServer>>installChildrenAt: to TDTopezServer>>ensureChildrenExistIn: and use that in ston import to create path

commit c5c3c3118af92d524761096190cd1a88b5e95326
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 08:48:07 2013 -0700

    update screenshot link

commit ada96df87d830412073547fea52f81a02462d840
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 08:46:44 2013 -0700

    use a screen shot with all of the window slots filled

commit 26520abc2104be6b5b3cf343bf6ce9722821d5ce
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 08:42:39 2013 -0700

    fix screen shot link

commit 0f43fbc043a3431b16a12f1e1ba1810cb19c8518
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Mar 10 08:40:32 2013 -0700

    add new screen shot and fix Issue #10

commit adfff5072a434d370279c17d4107b9ca386c9842
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 9 09:12:28 2013 -0800

    a better take on the object log tools ()

commit 4b2b459df0193dd90502c9fe4f568f2179fa04db
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Mar 9 08:14:03 2013 -0800

    add ol command for view object log...

commit b3a75984cf158360cb82e12873db4f80fa798a73
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Mar 1 08:28:24 2013 -0800

    expand functionality of ts debug command to accept just a class as arg ... run all tests in the class

commit 827cedec4d1467a5edc7a7d17c30e1206f9fc504
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 28 12:04:15 2013 -0800

    arrange for client-side global name cache to be reset at appropriate times

commit 3c99c907813200dde8ec48880b0377e51677cd60
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 27 16:57:20 2013 -0800

    use correct messagePattern when regex is involved

commit b199daeee76ee26d07c25532de456d4bbe871003
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 27 11:14:45 2013 -0800

    another infant mortality bug for session method stuff

commit 49b42c0df002e5ec0afbe6c757b66bd634a8a996
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 27 07:30:52 2013 -0800

    seal off debugging halt ... automagical handling of author initials on during login

commit e49f6988ee5bd513a21046a9976619f0c3fa2024
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 27 07:28:46 2013 -0800

    fix infant mortality session method bug and handle author initials automagically

commit 0ca04d5b6734007071140dd70b7b8fdfea5cec5f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 26 18:45:26 2013 -0800

    remove spurious method

commit b96c451dcd0d8187abd89bc5ea60e88fe399e1a1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 18:05:40 2013 -0800

    IndirectSymbolAssociation fix

commit b19c26d7a95dffb4129ecfdcdda5bfb577caf400
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 16:45:01 2013 -0800

    use dev branch for RB

commit d65c310ba5b44282985297c74b1b06d24357a090
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 16:43:35 2013 -0800

    new versions of todeIndirectInstall scripts

commit 113a9e2c68cf6a011948b3bca8801a5a32722188
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 16:42:30 2013 -0800

    a bunch of mods aimed at making it easier to work with class/method definitions ... filtering a method or class list and then rebrowsing ...

commit 61cd8cb9670379e99831f602be82fd85d3dcf058
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 16:42:10 2013 -0800

    a bunch of mods aimed at making it easier to work with class/method definitions ... filtering a method or class list and then rebrowsing ...

commit 38da809aaa45f21abf7cb7032bbf4b29c77e57f5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 16:39:26 2013 -0800

    tweak

commit a7da8b85c26a67f41e87fe18f3360015146ec33c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 09:53:43 2013 -0800

    add environmentId to a bunch of calls ... although environmentId probably won't help indirect development

commit e142ac22925b827bf7d4702694a859593c935d71
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 09:23:52 2013 -0800

    create IndirectSymbolAssociation ... for handling local values of class variables ... hopefully allowing tode to manage packages and configurations for indirect development

commit 500a170ff05b30e269e2560dd55509beff122f69
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 24 06:38:28 2013 -0800

    a bit of work isolating rendering from under dev env

commit 493caa8dedfce3f4fbfb20b38ee16df781a5fb89
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 18:37:37 2013 -0800

    possible to continue dirctly from client after reifying the error args so disable sessionMethods before returning control

commit 030be79a459d42e0fd84df7ab52049757d18cea4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 18:31:37 2013 -0800

    need to reenable sessionMethods

commit 78bd9454e0646acbc8dcaf9197e2d991c0414d56
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 18:10:03 2013 -0800

    add ensureSessionMethodsEnabled and disableSessionMethods calls to insulate the execution of code in context of dev environment form the tode session methods

commit d67ae5ffbb2c98699da624a45016a42c4c69e994
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 16:43:10 2013 -0800

    record the scripts used for installation when aiming for indirect access

commit 43326ebb3a6267aed43c7aecdcc45471ad9a5817
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 16:40:34 2013 -0800

    arrange to look up tode tool classes through TDTopezServer so that tode does not have to be installed IN the dev environment ... view now takes an aspect to facilitate filtering methodDefinitionLists and friends

commit b17967cfc796bb78d529236ddc172172d6d1c049
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 14:52:13 2013 -0800

    need initialize methods for test/debug tools so that they install themselves when loaded

commit 4bc9834c7d4fb64a53df72fb46cb0a8b7c619ea7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 14:11:37 2013 -0800

    tweaks

commit eac6b82dd4ca37cea5c7c2f4c33fcaee10e7ad3f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 13:48:49 2013 -0800

    checkpoint ...  first commit with indirect access on the client-side ... still a bit shakey

commit 1ca1b22c0f1aa95466ecad97ded63f99096ccba9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 11:18:40 2013 -0800

    checkpoint ... tweaking indirect access

commit ba304f4291a8a16209bfbfd3ca7524185be07cfa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 23 09:57:01 2013 -0800

    working on supporting indirect access...use tode as development environment for a gemstone user that does not have tode directly installed in his environment

commit f3d6d774c8ecf6f71b1734fafc67f1a9bfebfc51
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 21 18:32:31 2013 -0800

    if autoCommit is disabled, turn the promptString red

commit 298491d42dd6994c9adbc1a2215c90192582c35a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 20 10:24:00 2013 -0800

    upon reload, clear packagelist and configurationlist caches

commit 4b3cbc7a68427ebfcac8c8ec012b6d222dccaff7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 19 16:44:04 2013 -0800

    real patch for http://kermit.gemstone.com/bug?bug=42802

commit 3d714922bb1e43f823499c974399d300efbf572f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 19 14:10:27 2013 -0800

    patch for http://kermit.gemstone.com/bug?bug=42802

commit 8b96b211f63a5fe4c7ff8ded43381e901df0b9b2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 19 10:00:21 2013 -0800

    fix problem in getImport

commit a1b079a01c2a052b6bdb96ae7b2db1170e21b22e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 19 09:58:47 2013 -0800

    checkpoint ... script for loading a new import file:)

commit 1252f283838630a58681cd57dde5423c1e6be600
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 19 09:51:23 2013 -0800

    slimming down list of scripts to only those related to topez

commit c5e8a35a87304815078d75fbddfa2c6d34e33b77
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 18 18:57:30 2013 -0800

    tweaked ts debug errors ... and fixed bug

commit 1410fb9032f7a4f7320eb0c7c29fd046e2f1818a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 18 14:07:11 2013 -0800

    add CMD-j and CMD-k for moving up and down the stack (CMD-J moves up he stack but down the screen)

commit 0b2f11a3c2a67cc631d7f454ea2d6fae1f8e484a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 18 09:44:07 2013 -0800

    oops ... fix bug in CMD-t for debugger

commit 029358b92ee7a53e1185b40d18790c1717dd8f0d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 18 09:29:22 2013 -0800

    keyboard shortcuts for debugger: CMD-i, CMD-o, CMD-t for db into, db over and db
    thru plus label the debugger shell window correctly

commit 949cf49bc9af4618f07bba417ffff0c1dcde7df4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 18 08:36:35 2013 -0800

    fix a bug

commit 9a062f17d880870290b21a3a068eb53bf07090d7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 18 07:50:23 2013 -0800

    add CMD-T to pkgs and configs windows ... extract test classes

commit 9c1412fa17aa881bc89c517fb7ad9db774354a64
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 17 15:10:49 2013 -0800

    parentList has to be a stack ...

commit e60455b16db746092a79fcee4c42fc9aea3be74b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 17 13:55:27 2013 -0800

    highlighted item means nothing always select whether or not it was selected before or not

commit c62486679d18bb789e4ea128e74fb1d776613bb7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 17 13:36:56 2013 -0800

    arrange to highlight the item in the parent list when clicking on .. entry in navigator

commit 938805e0020655641d93a2a995634982a22c8e5e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 17 13:15:36 2013 -0800

    more monkey business trying to get .. item to know what his parent list index was ...

commit 6795915d086a98fe1bd5772ff2c94fd5a610d0a6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 17 12:18:59 2013 -0800

    add notion of highlightedIndex

commit f3100e3b65ed4775f37fd45522b9dc95fe0a6173
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 16 13:23:04 2013 -0800

    checkpoint ... converting to server-side formatting ... query block formatting problem outstanding ...

commit 96ea46bde5e33283cd6f301d98040a45d800e2c3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 16 12:25:24 2013 -0800

    add RB dependency ... will start work on side-side formatting

commit 11e410756eb5b19c68f9450cc62ed4c2e9e07d00
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 16 12:18:32 2013 -0800

    reset pkg and config cache when you run pkgs or configs commands

commit 16eda65ddd46a031f5bcabcfac427eb15c97d11d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 16 09:37:47 2013 -0800

    fix for query block

commit 6ff6207ff8e3ed79ed3ef69700e52e7addbdc78a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 13 08:46:56 2013 -0800

    SHOUT recognizes path terms now ...

commit e92d8e8431f99dbcdf25f4c593dbea4a63f39a4a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 13 08:24:23 2013 -0800

    proper formatting for query blocks

commit 5789bc7c19323c08abdb189d7533de78e3925727
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 13 06:56:07 2013 -0800

    handle $| as part of a multi-character selector character

commit 2c7c9b9a55c87d3dec73b17c1ce44a53b1a5de85
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 12 20:46:49 2013 -0800

    add AST-Core with GemStone mods

commit 950f3515ef0bfbdd7ff9672bee6ffac43d47c217
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 12 10:05:43 2013 -0800

    SHOUT support for GemStone select block ... partial

commit 54a45d7c2ea00b0c17c5d837592548f5ef369ac2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 11 17:19:55 2013 -0800

    repush the files

commit 4b697d5da070885f8c900a005f353c2c7f3af7c3
Merge: 62300ca c8c0073
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 11 17:18:37 2013 -0800

    Merge branch 'dev' of https://github.com/dalehenrich/topez into dev
    
    Conflicts:
    	ston/analysis.ston
    	ston/straw2.ston

commit c8c00733d2bb09fa2d8e35146dd3a96e2a73064a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 11 17:05:36 2013 -0800

    support scripts updated and analysis results

commit df4ffb63062243602757ffeaf03541437421f9cc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 11 13:55:14 2013 -0800

    add familySuite st node

commit 46959c645a45be616e9af05b6909c1d4e03f2053
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 11 13:49:28 2013 -0800

    pick up lost changes?

commit 76b19ceba326a536c3f7ae9d3b75e885c010798a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 11 13:35:27 2013 -0800

    fix bug in ston script handling

commit 465ceb5ae84620ab47c98d47787b7e97b7edf648
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 11 13:34:07 2013 -0800

    add load shell command

commit 62300caf8d234a1d5beca79ee86515d66282a81f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 20:59:26 2013 -0800

    add debugging info for indexing

commit 0d4465c1a91378c44982051cf7efbb5cf1352691
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 20:04:21 2013 -0800

    fix the CMD-o implementation

commit ec7cea4ef948f2367c1b4e8df0303520aeb45794
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 15:49:38 2013 -0800

    mm diff with no config name diffs all dirty configus

commit 499e8a860bb6e3bf7ccd902e015c48468ca12d2d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 15:20:41 2013 -0800

    more ston monkey business

commit e94d4ea219c538cb99ecb3ffcd8f85c93ca0f273
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 15:02:04 2013 -0800

    fix mc history bugs ... monkeying with ston output

commit f6d75d6dcbd7b2b9d86e8e026262e010cb8e24c3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 14:50:04 2013 -0800

    define reload as a local script ... save no longer used

commit 0971db08cd2b0faf5ecbbb5981bbd5c177abc85a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 14:42:43 2013 -0800

    add mm commit command ...

commit c03219c0b61e5d677743637e3897632666d97678
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 13:24:29 2013 -0800

    text highlighting for diffs ... mm dirty, mm get, mm diff, mm list commands implemented ...

commit fd619c969d68432f3bc3f7eacd3b4caa9f906aaa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 13:18:21 2013 -0800

    checkpoint...scripts

commit 4799d1ca52124ed5f9d0453f3997f553e9005606
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 10 07:25:06 2013 -0800

    examples additions and tweak context labels (always have (self) show up)

commit 06ef2d60f891a406f98019161d5ddb8b20cb6549
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 17:58:58 2013 -0800

     fix cat, commit after run%

commit 6d4f1dd56bcc3aca9260d719671f72e3e1ad8e0d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 17:37:34 2013 -0800

    set MCPlatformSupport class>autoCommit and autoMigrate ... authorInitials, too

commit 35938e96a68d49156337e3e86a83a0647f10769d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 17:07:11 2013 -0800

    remove some extra methods

commit 6977d8a13e24a7a01e98e0fc5d721e35a4340483
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 17:06:33 2013 -0800

    trim stack in debugger when saving method source

commit f8b8968493b8f063d082d4ec3f5bc88d5688dafb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 11:12:10 2013 -0800

    refactor TDDefinition hierarchy to accomodate method templates and add a behavior definition to fix a paste bug

commit 28ee0bd813b90fb4fff898a78af39f154176f3a2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 10:22:31 2013 -0800

    checkpoint ... generate compilation errors when saving st leaf node ... working on correct behavior for method source view when a different selector is saved

commit d746eb08c1792e1f6a84f65ce2fd253d597e0eb4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 08:41:07 2013 -0800

    revisit commit on key press ... only commit for selected key press events ... implement ston export and ston import commands ...

commit e9fb77bf197a097334b08330f4483b6a8d52e35f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 08:37:58 2013 -0800

    now that we control the size of the code, no need to expand the size when spawning

commit dfe2df7259fdf94ebdd9f242527a851dce12bde8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 08:35:26 2013 -0800

    path to ston dir

commit 30433d9a87014c2a5b604990bd4b3f0411ee6469
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 9 08:34:45 2013 -0800

    add ston dir where I'm keeping leaf nodes from topez

commit 26c32f121628435680cc9b39e76d233dfc5cfff9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Feb 8 18:18:23 2013 -0800

    commit after all key clicks

commit 670498bf5e07cd224e6aabb14b3624162e1a1971
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Feb 8 17:59:02 2013 -0800

    fix duplicate Hierarchy window opening...

commit 0bf8fc07d30d9fbcb12ef248612c73d8bedbe8a2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Feb 8 13:30:16 2013 -0800

    bugfix

commit 60eeb0e60f3bc8cce4b7194d12c3d6d3c8b41a55
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 21:20:04 2013 -0800

    fix TextAttribute filtering so SHOUTed text can be saved ... tweak profile tool

commit 46ff5c1ef65d22510981c33ac4d57a49f7020e4e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 20:24:35 2013 -0800

    add profile tool

commit 8552e4a7d56763655113085fcf68d0684276b904
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 17:23:32 2013 -0800

    fix sendesOf bug

commit 7b201fd9be95e0d514d40560bcbd7bf582a611f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 16:24:59 2013 -0800

    CLIENT SIDE: need to pass the live edit source on code editor keyboard events ... CMD-b, CMD-N, CMD-m, and CMD-n honored in all text based editors

commit 1398d224e2c1bfea7b6f1b1fda7a2cfe29677e72
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 16:24:01 2013 -0800

    need to pass the live edit source on code editor keyboard events ... CMD-b, CMD-N, CMD-m, and CMD-n honored in all text based editors

commit 97de9293e1c486af414c8f8a909d2bf99c8ceaea
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 15:08:17 2013 -0800

    CMD-B from source window

commit 41d891113f3ed94f63ed0efdd9e004fe11da70ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 14:53:18 2013 -0800

    CMD-N references looking good

commit 3604ca7ddbcf065ae88cfef29750edd39c362a61
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 14:45:32 2013 -0800

    checkpoint ... implementing CMD-N ...

commit 481eca4719df77d73cdb44d9864b7c2e444ab37e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 13:38:46 2013 -0800

    checkpoint ... implement find references and browse references

commit 0c82818d124b767e197873cddf49bfc704fb5331
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 12:26:59 2013 -0800

    seal the deal on messagePattern highlighting

commit 3aad33cc40fe02a241fab223098cd774e06bf0de
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 11:57:58 2013 -0800

    checkpoint ... working on messagePattern implementation so that selectors are highlighted for senders/implementors, etc.

commit 86eaf171241fc86741e9879ef46fe8c16c9dcf4f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 10:14:48 2013 -0800

    tweak senders implementation

commit f3969ca9837cd60728f88148650fa373a5066881
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 10:13:55 2013 -0800

    finish off implementation of find command and add browse command which brings up navigator on results of find

commit 6870955e581ac364abf982c8379823c036207ba7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 08:12:48 2013 -0800

    less garish adornment color

commit 60104891e3c1122650a13960ebd71484fc6bd852
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 08:09:11 2013 -0800

    CMD-m - browse implementors and CMD-n - browse senders appear to be complete

commit 705d44dba30e6b5b1dfb66990a852b3d2e9de7d9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Feb 7 07:30:42 2013 -0800

    do not use #defaultEditorWindowName unless you really want all of the windows to be shared

commit 411836beb4661a23e28726f3e15fd9b17504e05a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 22:13:00 2013 -0800

    checkpoint ... CMD-m CMD-n ... add #methodDefinitionList for special handling of TDMethodDefintions...

commit eb5d2f8bd2ef33073e93e910570405a782c9a63e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 21:12:56 2013 -0800

    checkpoint ... CMD-n - sendersOf

commit 5b798e2c6e1656c456e5e08579e10431a8b1601e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 20:55:17 2013 -0800

    checkpoint ... CMD-m - implementorsOf

commit 95bf92008e7014b5269a5be3328bf1dd5a4dfd44
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 20:06:30 2013 -0800

    more CMD-b implementation

commit 32d16cdc771cbf7296d051993353b1c75cb040a4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 19:44:02 2013 -0800

    CMD-b browse class implementation

commit 1f57bd4017759f8a06e9a64944ecdcb2b1945531
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 18:41:32 2013 -0800

    CMD-k is set breakpoint ... CMD-b will be browse class ... later

commit 85ac7a84f2171c95a46bfb00d00215114ff4c786
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 18:18:51 2013 -0800

    Hierarchy window should recalculate hierarchy when selected (and avoid recursion)

commit df5a7c668e0e44ae99f967868171cbdd2cf48fde
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 16:44:12 2013 -0800

    make TZTopez safe to load into gemstone for time being

commit a392f3f0492a88626bd90427547e3719d8864e6d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 16:34:28 2013 -0800

    trigger lazy initialization define layout for mac

commit 8122e3cf5f44ba6a37431375fe4f00e8db8a6442
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 16:22:36 2013 -0800

    add more control over window bounds tweak for allowing more margin

commit a7c0ff4b3f3d92d53eede4bddd154889f6e58881
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 08:45:55 2013 -0800

    checkpoint ... getting good start on find command

commit e65c444258adda28a51c7779ca92dd5f347ff24b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 02:47:49 2013 -0800

    CMD-o - open method template is functional

commit 8758121ad2eaa5b9b5a5a8f1718f8c8bafe12a2b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 02:10:28 2013 -0800

    implement CMD-x - cut object ... straighten out CMD-B and CMD-v a bit

commit 7bbd044b4eb6dc9289d5584b65aa2dda72701bc6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 01:16:25 2013 -0800

    make another pass over CMD-B - browse class hierarchy ... cache clientElement on spawn

commit 120c2b514f9bf9d82b747f6c1bcd80d9907c86d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Feb 6 00:09:41 2013 -0800

    checkpoint ... implementing CMD-v - paste object ... pause for keep alive action for spawned hierarchy elements

commit 5d2c2472cb562d5f474232d9efb041fd492bb609
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 23:11:18 2013 -0800

    CMD-c - copy object ... implemented

commit f629affa2f494ef7c079a1bb40d17f6f2eb2f473
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 22:14:24 2013 -0800

    polish off CMD-b set breakpoint

commit 3a0ce3e63248800fa5e0c2d89dac1cf0dbfbf7f0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 21:54:50 2013 -0800

    CMD-b in editor implemented

commit 2d2576b375e7a406ba3ee151ef0b85e30ac1123c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 20:02:17 2013 -0800

    scale bounds calculation (for topez) based on font size

commit a3691892339e0f80bb586584ea5d4f1235d097d3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 19:52:52 2013 -0800

    scale bounds based upon font size

commit c60be5062ba8ea8d599bcab99c2f3c7dcaf18617
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 16:49:11 2013 -0800

    CMD-E functional for configs command ... very sweet

commit f05d3ffd885c9be8c61bd10e3b2fc9523c1af34b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 15:47:04 2013 -0800

    include extension methods in list and add semantics for selecting the extension method

commit 1e87c2e7365819d8633b06f376695a22945c6227
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 15:17:03 2013 -0800

    first cut at CMD-E for pkgs list ... no methods included (yet)...

commit 29cb90d8ed8bd7f9596be09fd444f0e7441a9e74
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 13:33:29 2013 -0800

    configuration selection is now functional

commit 684fc0e2984779eb0a36554c2ba120ee5b65f34c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 11:40:01 2013 -0800

    optimize the update logic

commit de600f1123a91a0309d04736d3ff1e532f0abc99
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 11:37:11 2013 -0800

    select package in pkgs list when class or method is selected

commit 5888e3c44fdeca3fe93de2aa197d9094aec5dd82
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 10:32:47 2013 -0800

    add pkgs and configs comands ... includes necessary support infrastructure changes

commit caba0d510330dffab1d451049d167249c7cb0bb9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 08:23:26 2013 -0800

    add TDDefinition classes ...

commit 9262f121d73c7b9e6b4ea8ff7d21acc5d5d5ab79
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Feb 5 08:04:19 2013 -0800

    make room for configurations and packages windows ...

commit 487f19d747c34617802bd5414bfc087f24fa4294
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 20:00:57 2013 -0800

    minimal change necessary to get acceptable behavior from edit command in navigator window

commit f873ead883f3813c3900502a6cd0187531aeeeac
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 18:42:30 2013 -0800

    settle on CMD-B as browse class hierarchy ... remove CMD-b no mapping right now

commit 0a614f36c9566f4164768c2460d6572b910c2659
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 18:17:07 2013 -0800

    CMD-b is working correctly (from navigator opened in #view mode)

commit bc5a5236fbba56c20eefe35039e2696f614abd20
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 17:08:15 2013 -0800

    tests passing: 23 run, 23 passes, 0 expected failures, 0 failures, 0 errors, 0 unexpected passes

commit 3099d9474d57a9fb70bbb08f3cc97cb0d1a9f408
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 17:00:00 2013 -0800

    click on class in classlist opens hierarchy ... CMD-b in navigator goes to hierarcy not class list: BZZZT wrong (correct for CMD-B)... click on string browses string in place: BZZZZT wrong

commit bb7b13f9fe90c453cd79f050bd8087ce257e8a97
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 16:43:36 2013 -0800

    no Shift-clicked logic ... selectionIndex can be specified when opening window ... use selectionIndex for class hierarchy and class list ...

commit be6d37544c3476af54b156c5223beaa93fa635bd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 15:24:05 2013 -0800

    add db restart command ...

commit 2b23119120a3539cc6e078cc3b43c9fdfcd7e91c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 15:15:53 2013 -0800

    avoid truncating (via characterlimit) man page... secret? return as Text as Text is not truncated

commit ae6ab6cad1ac12ce23a6e7e8155743bbd644a191
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 15:03:49 2013 -0800

    open debugger when DEBUG button pressed

commit b30b25fc8e81a66f40bf292e6e6cb229979f8e8a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 14:19:04 2013 -0800

    tests are passing: 23 run, 23 passes, 0 expected failures, 0 failures, 0 errors, 0 unexpected passes ... (value) applies to ALL specials

commit f25c2f6fee3b6240cf1e4ca413bb958e91f61b78
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 13:53:15 2013 -0800

    propogate windowName through navigation ... (value) used only for specials ...

commit 714a0cb42945b98a183a88ea3400be67dba47ac1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 11:56:27 2013 -0800

    toggle between #view and #inspect for . in navigator...preserve requested aspect across lookup ...

commit 22177eacee6a65bcbb68b03f77baebb1c5c6d712
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 11:12:20 2013 -0800

    add (class) and (oop) fields for Dictionary view

commit add6cf1e8e091f30ef595b6eeed6602f9caad1c8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Feb 4 10:49:11 2013 -0800

    clean up tests after changing navigation logic: 23 run, 23 passes, 0 expected failures, 0 failures, 0 errors, 0 unexpected passes

commit f6e2d20e913833867e777eab686cceae5f58f370
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 3 10:00:28 2013 -0800

    reduce visual noise in navigators by using minimal displayOn:, ESC and shell view provides detailed view classes and oops...

commit 8293489aeb4f3d1659d925a6e84e8c60048b07b2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 3 09:34:14 2013 -0800

    a little bit of cleanup and tests are green: 23 run, 23 passes, 0 expected defects, 0 failures, 0 errors, 0 unexpected passes

commit 9727c323b6e4a35ab354dba697dfa7b3f35b2115
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Feb 3 09:22:13 2013 -0800

    add notion of minimal ... skips oops but shows class, etc. collapse displayOn:

commit fa6aaa12e15628a1c0a900f89f7a50bce3f76248
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Feb 2 09:19:52 2013 -0800

    display policy initial implementation appears to be complete ... testing and clean up needed ...

commit 3416c388a41f1fefde681baa1d2c4c7464f3dc55
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Feb 1 17:10:51 2013 -0800

    move displayOn: and friends to server core package

commit 1b6456f4da54f56d5ff0f4fe729bfdbc0935098e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Feb 1 17:08:17 2013 -0800

    checkpoint ... getting started on display policy

commit 9e6f74b3c4bfaaa351136dab6d93655f63183eb6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 22:36:50 2013 -0800

    CMD-b is functional (mostly), but I do have to work on the semantics of CMD-b in the various windows

commit 237a4500402c57f1920f5677f0a43e8b1553c407
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 21:04:07 2013 -0800

    allow specification of windowLocation when doing an edit...

commit 629d3ccda72f4291c4b2c161bb356dcaf0b577d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 20:48:35 2013 -0800

    start work on CMD-b mapping ... leads to detour to expand the args for #edit:... message

commit 69884e7842b17773618226a2ab36455dda8c3565
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 13:06:57 2013 -0800

    tidy up CMD-C spawn window implementation for navigation

commit dee5cb0391abc688adeb478ecf249685786cc072
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 12:29:33 2013 -0800

    checkpoint ... working on spawnWindow logic

commit 035092ee966c76a3b1d6a410798eb4b6be249122
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 11:54:54 2013 -0800

    checkpoint ... special case events (CMD-C, CMD-L and CMD-l) are working, although the spawnWindow needs work on client level (not activated?) and on the tool level (switch from window name on click to a window id for all interaction)

commit 13a155c667883bfdf5719eb311a2e0ae803c4bc7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 11:40:20 2013 -0800

    checkpoint ... initial cut at first few (special case) events ...

commit 625b432ba28b40b7b3451acc9ca34e5d76d113b4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 10:53:43 2013 -0800

    checkpoint ... fix client-side keyboard event handler ... ++

commit a3eefd171f243bde2ddb1bb7ea71bd349f43a2df
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 10:42:00 2013 -0800

    checkpoint ... continued handle event work

commit 8ec46853adb5f097bea04212c21ce599730d0c7b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 09:24:47 2013 -0800

    flesh out TodeClientElement methods

commit 542f303f5dc37b619527114148a3819315842fbc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 09:18:18 2013 -0800

    missed a spot

commit d1fc3725c77410d7c1e003af6a3a15b41fae7d51
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 09:15:02 2013 -0800

    getting started on handler for keyboard events ... convert all gci messages sends to symbols for easy access by tools

commit 5f5bcfcc0531cf6989040847f28c124f8aa01bc4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 02:16:11 2013 -0800

    deconstructed browser has been reconstituted in tode ... keyboard shortcuts on tap

commit 9dc72c076b8417e402f738f5356bbf80e214c744
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 01:14:05 2013 -0800

    class definition window functional

commit f5369bc6b69f49228d3eb481c3469a1941855658
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 27 00:46:04 2013 -0800

    dictionary #browse defined ... clean up general navigation nits

commit 011be36d0edc071eb2c5bcb470e1a8164bb0d8a5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 23:51:32 2013 -0800

    ESC is marginally functional

commit aa39b424af2e3bab0e2ec738e08a0d8bf789049e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 23:32:05 2013 -0800

    fixes to open spawned window

commit cd958d908c9e6b6e38e10636f4f52fc624bbccf7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 23:28:36 2013 -0800

    checkpoint ... ESC is ready to test

commit 142259f65c1daed9887490d1733dd0bc8e1f1a2c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 23:05:56 2013 -0800

    checkpoint ... beginnings of spawnShell (ESC)

commit 7f90e441bab5556366a25709b4bc43499312f9c6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 22:41:33 2013 -0800

    23 run, 23 passes, 0 expected defects, 0 failures, 0 errors, 0 unexpected passes : after work started 62d22ae360377696b94589bef6c454ace5028a82 ... with a healthy dose of debugger work: db thru and friends

commit f0fed1b54b0b77a5a2babffbbdcf382037ca855d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 21:29:28 2013 -0800

    checkpoint run|run is now working as script and interactive ... still need to look into process termination situation

commit 94636bf4c989b2c290cd40911b5d3a63baf7ac24
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 21:04:23 2013 -0800

    run | run works as topez script but not as input in REPL (wrong return value) ... also halts/breakpoints while executing run scripts may not quite work right ...

commit 937583b3677d6e0696efa9a606fe8a27de44cc08
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 18:04:31 2013 -0800

    checkpoint ... windowIsClosing is coming together

commit 1e10812da321dd5fd66bcfba0b4337b4b9cfe311
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 17:38:04 2013 -0800

    start working on windowIsClosing message (to terminate the debugger process os ensure blocks get run)

commit 21d153d78091ad7e486a86fba8cb272805ce8529
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 17:17:55 2013 -0800

    checkpoint ... run | run problem

commit 2fc0cce94a205fcdd25bf3495055beeb20147fc9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 15:55:44 2013 -0800

    run inside topez script is now basically functional ... piped run commands don't quite work (last result is not returned) this is at command level

commit ff6f07bcabcb3894c39bc74bbffb5eefd9f75430
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 14:40:37 2013 -0800

    add index example, fix object pipeline in topez script node

commit 943b4d81aefca1e248f599a5c8452c6c22710991
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 10:37:34 2013 -0800

    fix bug in window management .. reusing windows incorrectly

commit ddf6e7b070e0309896aa8d1d3dad7e6ddce2becf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 10:02:08 2013 -0800

    clean up some minor window interactivity issues

commit 08127b88b380fd65f4fc0abb15654778fdd0c0db
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 09:39:34 2013 -0800

    eliminate all of the extraneous transcript logging

commit 189ea5840fb5f02ed785b469386e65d3fee479f9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 09:18:32 2013 -0800

    fixed issue noted in 62d22ae360377696b94589bef6c454ace5028a82 and fixed infant mortality bug in db thru

commit e506d43c5ac2aad3b71ac65f4a6346befe6d8a24
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 08:58:17 2013 -0800

    add a second example for db thru command

commit 98ee9d463e02fa47d8647c5e50f1069e8abd035f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 08:42:28 2013 -0800

    this time without wrapped lines

commit 6f3f5420e9a7d072fcb5e55d9af0a83e55c0ed43
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 08:38:34 2013 -0800

    debugging notes for db thru work

commit 2def808d123b95312c89f756de915be6b17f8d45
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 08:21:51 2013 -0800

    basic db thru command is functional

commit 4b2f05031997600a6077f4070c5869155803cac8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 07:17:42 2013 -0800

    add autoCommit logic to TodeClientSourceElement>>source: (and friends)

commit a458a49f1e2a603dd0b251bac5a133c11ce05c7c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 26 00:34:16 2013 -0800

    checkpoint ... circling the solution (hopefully the technique will work) ...

commit bddb4c31e00f22c9f7acef7dc14033f0f1c0a7c3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 23:12:10 2013 -0800

    checkpoint ... more progress on db thru command

commit f5eee0c20710a489e06be6c823dd9a6ce7ead47c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 21:31:21 2013 -0800

    continue and step are working in presence of follow-on errors/halts/breakpoints ... the problem involved the script elements that were running after the test was finished

commit e18087ab1be346ebb7b857c9c41dff9b3ec664f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 21:13:06 2013 -0800

    checkpoint ... db continue is sorta working ... need to work on continue when it runs to end ... more testing needed ...

commit b56f7a3862ec2eb12f66598ef75f3520ed51806a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 20:32:08 2013 -0800

    checkpoint ... handling halt in debugger ...

commit 96fc5eaa2671b83aff9d4cae28ad30e23814d4d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 19:45:24 2013 -0800

    checkpoint ... starting work on getting breakpoints/halt working for db over / db continue / db thru by reusing the debugger ... db over currently stops for breakpoint ...

commit 62d22ae360377696b94589bef6c454ace5028a82
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 17:27:09 2013 -0800

    checkpoint ... arrange for final aspect to be passed along after lookup to avoid propogating an aspect that doesn't match the aspect you ended up using ... txtnodes and friends are losing their parent object somehow during navigation ...

commit 7b01ef91b1abe1c8530fdf61914d1d9d93c2ec18
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 16:12:33 2013 -0800

    tweak

commit bc0f6746b550b9d692782646362ffcfcf3fcb494
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 15:17:14 2013 -0800

    add shift clicked logic for browsing

commit 6fbd1cc86482a8e567fd4d3bf54a520bda8927f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 14:58:39 2013 -0800

    checkpoint: 23 run, 23 passes, 0 expected failures, 0 failures, 0 errors, 0 unexpected passes ... convert from #edit #inspect to #browse #view #inspect ... still some rough edges

commit 0b9c8d53c5d457b45585292cd45642e2253fa1af
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 02:07:15 2013 -0800

    direct edit of class will open Hierarchy window ... no click action ... need to add a ClassNodeBuilder to allow mapping of class to Hierarchy window ... should come up with better way since we're transforming the Class to show up in inspector window...

commit 95daa9e9b0a99b3cbda6c1a4f84af0abd04ecb14
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 01:51:02 2013 -0800

    checkpoint ... 20 run, 19 passes, 1 expected defects, 0 failures, 0 errors, 0 unexpected passes ... still need to validate that tests are exercising the code correctly

commit ef09b0af95ea91a91ec5059a2b9606e5f0fde220
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 25 01:04:04 2013 -0800

    checkpoint ... working through class hierarchy list element issues ...

commit 72dd73327700580c9e07e72a8fa11a4431383673
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 23:36:52 2013 -0800

    make pass through tests to accommodate all of the special handling: 19 run, 18 passes, 1 expected defects, 0 failures, 0 errors, 0 unexpected passes

commit 7d01b0ee69dd21e8f08095457a9a0bd34b059d8b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 22:36:41 2013 -0800

    add node builder for the specials and add special fields to inspectors: '(class)' '(oop)' '(value)'

commit 4b0800086037a1897cd644fe4fb4c663e8a75292
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 18:43:22 2013 -0800

    scrape off a couple of barnacles ...

commit ac8ba5c288bd847bddc508e85ca949436d81dff3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 17:23:04 2013 -0800

    test restructure ... start on #browse aspect ... desire to toggle aspect (between edit and inspect) on . item, but still working out kinks ... edit vs inspect on String is diagnostic at the moment

commit 1796494f5a20e21493184bc53358f6efc4028551
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 15:19:43 2013 -0800

    finally get that last test for TDTxtLeafNode to pass ...
    
    realized that given the constraints of the test STON version of output is CORRECT...16 run, 15 passes, 0 expected failures, 0 failures, 0 errors, 1 unexpected passes
    
    allow windowName to be passed into the edit:... message and then propogate the windowName

commit eafe20bbedb240b88ac6ff31fae34d1e9c571c65
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 13:20:27 2013 -0800

    parent for node and clientList elements can be any object ... very important

commit 6b8ba0b0e870631ee24f423fe737d7fe947e7e71
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 13:19:17 2013 -0800

    clear selection if selectionIndex is nil...

commit 3cc4f5bd19635313c48292c32e57f973183a5d7a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 12:55:05 2013 -0800

    editor for directory node looks good ... editor for stack frame looks good ... transition from directory node back to stack frame (following .. chain) not so good

commit 42e5a853f72ec37f7ccd64012b776cc51d576277
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 11:12:47 2013 -0800

    when editting the parent can be any old object

commit f440ff92ef9628fdc2c880ed43a0d77497a7c890
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 10:53:24 2013 -0800

    basic fixes to context editor (debug inspector window)

commit 364fe6ca4d92ffb76ffcad46cdd7d02865fd5b16
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 24 09:37:04 2013 -0800

    reshape the builder tests copying scheme from the tool tests ... 16 run, 14 passes, 0 expected failures, 1 failures, 0 errors, 1 unexpected passes

commit 089d0a921adc0b4b81acae5576ea1c4de9bc5472
Merge: 0b06c17 e0eee9d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 23 23:45:48 2013 -0800

    Merge branch 'master' of https://github.com/dalehenrich/topez

commit 0b06c1704c605c4059f720777ba9051fcb52c085
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 23 23:44:28 2013 -0800

    TestResult] fix test running problem (abort test ... SHEESH!) ... better
    framework for TDAbstractToolTests ... 14 run, 12 passes, 0 expected
    defects, 1 failures, 0 errors, 1 unexpected passes

commit 75f74a75722f24407cfb5eaef3da6429ea96308f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 23 21:08:16 2013 -0800

    fix continue command ... use #inspect aspect for .self and .node ... have to reset topez instances when system reset ... still have issues with running tests after reset ... when I debug I get proper behavior ...

commit 0c3daeb12c941c7853123f5ce375deb663ee56b2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 23 18:30:37 2013 -0800

    fix test running issues ... pop

commit 49aeafe4953ab7b721095ac80472265f2f50dc3d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 23 17:25:33 2013 -0800

    renamed and refactored test hierarchy and started adding shell command tests ... hit an issue with running tests that needs to be addressed (related to using TransientValue methinks) ... some additional bugfixes

commit 7997bd250df988e8c49aa9c821976922ab3f8f3c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 23 16:23:26 2013 -0800

    tag code used to reproduce BUG #42698 (GemStone/S 64): mysterious process termination

commit 668ca02336abbc4449939541846833786f7ed8ef
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 23 14:33:01 2013 -0800

    repackage the debug tool tests

commit 39824fe8ebd63a01bcf8653405bdfcf7ac9fcedb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 23:27:07 2013 -0800

    convert Object>>edit:topez:aspect:windowId: to use the windowBuilder code ... eidt/save different text nodes ... debugger is basically working except for the failing test case: 19 run, 18 passes, 0 expected defects, 1 failures, 0 errors, 0 unexpected passes

commit 1dd7a75723694ccf4768255e12554fb5c1e649df
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 18:16:30 2013 -0800

    configure tests to make it easier to reproduce and characterize BUG #42698: mysterious process termination

commit 425d128a5b6789e46d97ed71e5e5373b0a5751c6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 16:47:47 2013 -0800

    19 run, 19 passes, 0 expected defects, 0 failures, 0 errors, 0 unexpected passes [[wire out TDDebugToolTests>>testWindowBuilder due to process bugs]]

commit 5fe308534afa4b8118362324c7c2d1e1d6080646
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 15:51:05 2013 -0800

    19 run, 18 passes, 0 expected defects, 1 failures, 0 errors, 0 unexpected passes

commit 72d033d11fcee53330bdfdb2d881ad6b17c44e0c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 15:30:07 2013 -0800

    19 run, 17 passes, 0 expected defects, 2 failures, 0 errors, 0 unexpected passes

commit 4a80189a891a06d0c040266008d4c0d14a63f6b2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 14:59:33 2013 -0800

    19 run, 14 passes, 0 expected defects, 5 failures, 0 errors, 0 unexpected passes

commit 4578b2d9a77c5a07c0daed2f1a590bea55b1bede
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 14:52:34 2013 -0800

    insulate TDStack>>currentFrame against a terminated process ...

commit b39fbee98a5ef7b3f92d701b1737d870f493015f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 14:33:22 2013 -0800

    homeNode needs comment too

commit c1217c6f180f8249aea9e2d8450e963064bd74e8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 14:32:41 2013 -0800

    instances of TDTopezServer are referenced by persistent objects, thus making TDTopezServer persistent, however a number of the instance variables (serverStatus, objIn,accumulateBlocks and homeNode) can reference instances of objects that may not be persisted like socket or processScheduler .. so we have use TransientValue to isolate these bits and pieces ...

commit a1e42b7e0048059e3c95869f40999f8e8685d190
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 12:08:57 2013 -0800

    checkpoint ... have to deal with persistent ProcessScheduler instances

commit d58621da9e55c5e4850ef8097c934f3ccf3f816f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 11:44:25 2013 -0800

    19 run, 14 passes, 0 expected defects, 3 failures, 2 errors, 0 unexpected passes

commit dc14962b94e3f345eddff6f2afc62ec399ec5c64
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 11:37:35 2013 -0800

    ran into a ps bug while improving debug tool tests, so added ps tests: 19 run, 9 passes, 0 expected defects, 3 failures, 7 errors, 0 unexpected passes

commit cc43f65fab0c1352c388e7bbdecfa7d8716acb8e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 10:33:42 2013 -0800

    9 run, 4 passes, 0 expected defects, 5 failures, 0 errors, 0 unexpected passes

commit fc67ebab9cd5d0532e15865e472abf061bda4f96
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 22 10:24:25 2013 -0800

    9 run, 3 passes, 0 expected defects, 6 failures, 0 errors, 0 unexpected passes

commit 326818991b6dd78ee561e6c2d05e2e5a62ff3659
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 21 18:28:03 2013 -0800

    define editors for stack, stackFrame and leafNodes ... those were the missing editor definitions ... add tests (currently failing) for all of the added editors ...

commit 39b423b28626170ecdb54d309e8e4ac7172093c1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 21 16:51:39 2013 -0800

    update dependency for debug test tools

commit 4aea1c30dcf791ceab406746bbae84df94ddc86d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 21 16:39:39 2013 -0800

    I thought I said: no #inspect aspect for window builders ... inspect command should provide focus for how inspecting will work moving forward...

commit 5f5b29e4d834ae23a5a0836938941f8643a7e31c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 21 16:35:48 2013 -0800

    add inspect command ...

commit 469e8aa653e3919ca8c6ab874623618872c0b9e7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 21 16:14:57 2013 -0800

    tests are green ... which means I need more tests

commit 52ff018d712eac9eac36eaeb619211a8b2d2b798
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 21 16:00:59 2013 -0800

    add an additional test case ... get tests passing (almost) again

commit 74d0f6db3358fd2da076a4e6ed04aadd67376bc5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 21 14:25:48 2013 -0800

    working through issues ...

commit 069bba686d3aaa6eeea5935da4133ea5712a8719
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 18 08:21:21 2013 -0800

    change default aspect to #edit ... #inspect for node builders is a
    'standard' object builder representation of the object ... why is String
    not cooperating? ... no #inspect for editors ... aspect for edit is used
    to provide different views of the same objects within different tools
    ... aspects for nodeBuilder provides transforms of the same objects for
    different tool ... for a particular tool, you can transform and look at
    standard view of no transform and look at non-standard view ... no need
    to couple edit and node builder .... object nodes propogate the aspect
    for transforms and there is no need to coordinate with the view ...

commit 1377bc8fe12e97dd73beeb8ca3b140ac2b8c27ac
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 18 07:45:01 2013 -0800

    reenable shout ...

commit 8980c366f54fee552c2904553f879ac09a1e4a21
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 16 17:04:05 2013 -0800

    generate a testSuite file for each tool and generate a master testSuite for all tools ...
    
    TDPluggableNode will not implement an editBlock ... that needs to be handled by standard
    lookup through builders since the builders can be customized on a per class basis ... need
    to consider how we'll stop the object node loop ....

commit d8df9ca85a680ffe9ae5b06b4b52ac6b72dc0fdb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 16 15:47:35 2013 -0800

    add displayOops and characterLimit to shell tool ... current set of shell tools are passing ...

commit b8e1d8c7adf1332897beda98ca58a7f5a991225b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 16 08:05:31 2013 -0800

    finally get TDDirectoryNodeClientListElementBuilder up to snuff ... again need to make displaying oops optional for testing purposes ... of course option oops will be useful for devs as well

commit 71ba51f9cf4cad1ce80b118b675dca04358e31dc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 16 07:30:48 2013 -0800

    use #edit as the aspect for debug tools ... don't need tool specific aspect as #edit is enough to distinguish from #inspect

commit c527015e7fa78b446fe93d398facb24c4927c760
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 15 12:05:06 2013 -0800

    when debug shell window is closed, all of the windows associated with that shell are closed as well ...

commit e29f7989c39afe475d9eef1f109831fd4d014ff6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 15 11:01:01 2013 -0800

    don't dink with nodeBuilders during tests ... move testSuite up one level to make it more accessible ... push server tests around a bit

commit 1cd866b886e0da92f7c1a8af6e9a58ab4104addb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 15 08:48:19 2013 -0800

    adding initial test case for window builder ... fix some test result display issues ... checkpoint while I revamp testing framework: cannot afford to break basic debugger functionality for the sake of a test:)

commit 95b2d9affa7861f8192a82f1af0b920d29f38c32
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 14 17:48:49 2013 -0800

    start work on WindowBuilder logic ...

commit b2e4837fa9ffe63b63cfac730260dc9a66655ce2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 14 12:04:42 2013 -0800

    splice node builder in at Object>>asTDObjectNode:topez:aspect:

commit 683e5e02eae284f093b7afbb18b973ba1698dc9e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 14 08:22:03 2013 -0800

    add displayOops arg to tzNodeDisplay... use it in TDTopezServerTests ... both new tests pass

commit 5dbc32130034aee164363b3c53d7a052fc7599fd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 12 17:04:40 2013 -0800

    add test for TDTopezServer>>buildNode:for:aspect: .. not passing yet

commit 160e17cc6470494c8680075419bb03c2001de58f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 12 16:09:30 2013 -0800

    stage is set to replace implementation of Object>>asTDObjectNode:topez:aspect: and friends ... same renaming and repackaging left over from addition of test package

commit eb3d29e24637083331e1b186062f599c5281c5f0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 12 14:15:29 2013 -0800

    add test tool package

commit efaa4ddd6e60dd615f244ac76a7f256bf18c9831
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 11 19:31:31 2013 -0800

    nuked the failed builder experiment ... newer approach is superior

commit 4962bf35adf5f79e05a608c9e0a9b61c2f64b192
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 11 19:10:14 2013 -0800

    builder registration logic

commit c738f8c7beb04412438d78c1a42fdd3fe390d8ab
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 11 16:40:56 2013 -0800

    package up debug tools  and debug tools tests separately

commit bd47add6d2a606f0c60921b08d5f7ee582523114
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 11 16:21:58 2013 -0800

    another crack at node builder implementation (I like this variant better ... not complete)

commit e0eee9df4d64ee2edbafb7b51feacf7664d5ae9a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 11 09:53:59 2013 -0800

    Update README.md

commit bf79b87cfea00a385e4b5a3104a14346c3506755
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 10 21:42:06 2013 -0800

    building TDNodeBuilder class hierarchy ... centralize the building of client elements and object nodes, etc.

commit 99dea8f8e0878d90729ae6acb1d6a464834c7135
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 10 10:05:08 2013 -0800

    a bit of cleanup

commit 83195d6eba74374a0ea0b2ba909025e88574cab4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 10 08:32:47 2013 -0800

    add show GsCursor logic

commit 96d4fa19739603aa5b662ec3b58bd97ff55bc821
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 9 20:37:15 2013 -0800

    straighten out inspector navigation ...

commit 950e460ae792cdbcc4c48b4040203d6758e11ccf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 9 16:19:18 2013 -0800

    restore String edit capability

commit 1bc5110f1e4a295fc3f53454fc81b3d39520c796
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 9 15:01:13 2013 -0800

    add video link

commit a78de196b55b7058ddabd9e89516efb28b40dff5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 8 16:56:53 2013 -0800

    final couple of tweaks to correct problems with the first* caching ... back to original functionality but with many fewer round trips

commit 8146d82f88bae10a769787834e60383dd5cde18e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 8 16:19:02 2013 -0800

    port gci to support gemstone 3.2

commit 7dd76b62788e1cb156911984e85c4ed3c2e50c7a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 8 16:17:48 2013 -0800

    TDStack should not _require_ an exception ...

commit 57cc280c687317995029f411d3de354848d16fea
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 8 14:54:43 2013 -0800

    add session description for 3.2 stone

commit 306befc082b11d0f173be3ff28208e03c3431a1c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 8 11:33:46 2013 -0800

    fix context window up problem

commit 2d7b1415a6d17cd069f0fedf53a5a43e290629d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 8 08:25:21 2013 -0800

    finished another round of round trip reduction ... seems that the context window update has been lost ...

commit bb689d0c4a7f2c36a0a9ca719d642581e7d0c175
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 7 08:18:54 2013 -0800

    checkpoint ... partway through filling clientElement caches: TDDirectoryNode>>clientListElement and TDStack>>clientListElement implemented (first cut)

commit 43728baabe8b6d4e7f847719bfa7c64c1f3cb6da
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Jan 7 07:56:33 2013 -0800

    caching firstList and firstSource in ClientElements to reduce round trips for opening a window

commit 1e9557b22f7ccd9df294e70b04b853b14554e498
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 6 19:59:50 2013 -0800

    TDTopezServer>>reifyExceptionArgsForOopList:classNamesForOopList: serializes the exception args in there entirety

commit 363a382f05f97d81baa91122faf2f76297f46161
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 6 09:54:59 2013 -0800

    address the deadlock issue, by avoiding the creating of too many proxy behaviors ... remove some debugging halts ...

commit 5876a1e747b8f0811ad46c76523a64ed9e2556fb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 6 09:19:34 2013 -0800

    checkpoint .... working through login issues, client forwarder handling (on server), tracking down/eliminating source of pharo deadlock/infinite loop

commit 5a66375695dd2fac88648c6d7e7070dc9868019e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Jan 6 07:30:40 2013 -0800

    fix selector matching regex plus roundtrip tweak

commit 9de6e8198cfdd9d2bc35b71214c554ab051ab376
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 20:34:09 2013 -0800

    checkpoint ... reducing round trips during login

commit 4add7fb3ab2b084439a89e1ec652c81018a890de
Merge: 198d6e5 78c6dda
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 17:16:22 2013 -0800

    Merge branch 'concurrent' into dev

commit 78c6dda92feb8c6bd6a10ca9c7b6c2a946516237
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 17:00:10 2013 -0800

    get rid of some halts

commit f73dccadd61680e69ec3c806c53af7396367e2f1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 16:58:50 2013 -0800

    first order optimization for client forwarders appears to be functional (still scads of logging/debugging stuff)

commit e4f7ddb7f6f60bfee7ef74fc44353a4c07871f55
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 16:58:36 2013 -0800

    first order optimization for client forwarders appears to be functional (still scads of logging/debugging stuff)

commit 55936e7af34035ab8311fbd0ffd09ba577a04cc1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 15:52:11 2013 -0800

    TDTopezServer>>reifyOopList:classNamesForOopList: is working

commit e6475d3f6037f05bb07acd26ad77c981336af99a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 14:20:42 2013 -0800

    checkpoint ... rediscovered GciSession>>terminateCurrentNbCall which is working like a charm ... apparently

commit 62b1dc723cb02ac60f2ba8030c2cd5683ba4f322
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 13:38:18 2013 -0800

    add a mutex to GciLibrary and protect all api calls with the mutex to avoid concurrent api calls because of SHOUT ... looks like the concurrent calls are finally cleaned up ... still suspicious about the ifCurtailed: handling in getNbResult itself

commit 198d6e579ba3bc53f1c1e6efae27009e64d6e804
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 11:21:00 2013 -0800

    checkpoint ... need to focus on avoiding concurrent gci calls

commit 5662dbe5f115cb74a88576a040499390aab89694
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Jan 5 10:01:12 2013 -0800

    checkpoint ... progress reducing round trips getting err/forwarder args ... with side trip handling interupted gci calls (SHOUT) ...

commit fc808e91a501e80af52fe041bef6352835fd9aca
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 4 17:47:41 2013 -0800

    fix broken objIn...

commit 78397e919419e68a60aa2fef47959f33ba5b92e5
Merge: e3013df 512adf9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 4 09:21:24 2013 -0800

    Merge branch 'dev' of https://github.com/dalehenrich/topez into dev

commit 512adf9cebfa42743a7701f0670eddc05fa9d4fb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Jan 4 08:05:37 2013 -0800

    checkpoint ... support for optimizing error/forwarder round trips

commit e3013dffbc58b5ddc07afd69802d6dd0a8985c24
Merge: 22cc55d 55807b5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 3 09:23:22 2013 -0800

    Merge branch 'dev' of https://github.com/dalehenrich/topez into dev

commit 22cc55d1719896d2097f50b668e7370f1728bf96
Merge: 84a55e8 9fae34f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 3 09:23:02 2013 -0800

    Merge branch 'master' of https://github.com/dalehenrich/topez into dev

commit 55807b5307a216006019e52696c66267a778f318
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 3 07:54:13 2013 -0800

    checkpoint add GciSession>>executeStringExpectingStringNB: to eliminate overhead of GciLibrary>>localFor:

commit 645a0db5586793531f87dd18f9b64c7eb263b4a3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 3 01:42:30 2013 -0800

    checkpoint ... final bit of logging ...

commit 7ad856e9f1b31c815c08e6e6b477df16e73aa617
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 3 01:18:31 2013 -0800

    checkpoint ... additional gci logging code

commit 84a55e80ca57cce9be15893abf45680078c7ca71
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Jan 3 00:42:54 2013 -0800

    checkpoint ... a bunch of gci call logging and a handful of round trip optimizations ... more on the way

commit 9fae34f8b8bb30506bc91ef93925e604ba1ff695
Merge: 863b811 ab454c8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 2 23:46:09 2013 -0800

    Merge branch 'dev'

commit ab454c8e7a5e81c9eb9a9c96954c33a8fb23165f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 2 21:11:19 2013 -0800

    checkpoint ... server side changes ... reducing round trips: one arg for client forwarder

commit 12a42ff94d6bf2b833fc1044e118b894af79db35
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 2 20:49:21 2013 -0800

    checkpoint ... taking a cut at reducing round trips: one arg for client forwarder

commit c3052d2251e6c3d8ac7c7f2e87600627c3ef7e62
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 2 08:13:02 2013 -0800

    checkpoint ... working on getting the list-based navigation to work ... a couple outstanding issues: 1) incorrect parentage (frameIndex doubled when following .) 2) bad offset occasionally

commit 337ae7007d900b3ba291d5f224bf91b2240c10e7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Jan 2 07:11:14 2013 -0800

    straightened out the parent node representation in the client list element

commit 1dbf69aeac924d3624f65daf2c5f4886ec1fad57
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 1 17:26:51 2013 -0800

    replace use of Object>>edit:aspect:windowId: with Object>>edit:topez:aspect:windowId: for many cases ... still need to create parent nodes for stack frame viewer, but the framework is now present

commit 07770e0d3d0b8078309cad11463838c6eec14a43
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 1 16:11:08 2013 -0800

    checkpoint ... convert Object>>asTDObjectNode:aspect: to Object>>asTDObjectNode:topez:aspect:

commit 62904f8261537aed5a081a2a622f9de75f6db54a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 1 10:15:51 2013 -0800

    functional context window ... need to nuke redundent cds, add . and .. entries, shuffle the stack, context and inspect window locations

commit 7d8a389708292f3522e4284fc3342af8d3fbce54
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 1 09:25:27 2013 -0800

    add inspector window location

commit f14844c353077b06f7ad9b2d85255151d8f71325
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 1 08:19:59 2013 -0800

    initial cut at adding #aspect to edit.. message

commit 2a4df70296a9a669d94a9c85a3542d02dc775294
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Jan 1 07:34:12 2013 -0800

    align the columns for the inspector

commit 31e580474c9d1c32d7b5dc2335e833d0d71a5eed
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 31 09:51:26 2012 -0800

    inspector is basically working for all nodes ... now ... need to add an aspect to the edit:.. messages to differentiate amongst the various edit contexts ...debug, edit, inspect ... each one should provide a slightly different view

commit 4d452073279cd1555799d2488bed6399b9db9ef5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 31 09:04:35 2012 -0800

    checkpoint ... inspector is working with directory node ...

commit 7adc016304fcca85ad8fa5bbf65fca5b954b69b0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 31 09:01:45 2012 -0800

    inspector tweaks

commit a2f322de90b1dc8de9e71f88dc924cc947e4bdfb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 31 08:29:14 2012 -0800

    checkpoint ... starting work on inspector

commit 863b811351cc9cd8d6d15d39914ea7ae83d76cc3
Merge: 6ce675c a038c67
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 31 08:27:26 2012 -0800

    Merge branch 'dev'

commit a038c673ba659a118eb277bf2aa51d3adc0573d8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 12:58:01 2012 -0800

    deconstructed debugger is working well now ...

commit b8b41432d9373da14fb991b92b1902273c754fbf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 12:41:25 2012 -0800

    working on getting the correct frame selected in debugger

commit 2da53d3f3ca1e821ed34a9029013a728399d3277
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 12:28:32 2012 -0800

    more debugger tweaks

commit 9dfe36ed415494f94caf42233e6b781d3512a7e6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 12:27:15 2012 -0800

    debugger tweaks

commit 6ce675cd9374c79cd166522f592059ebc385ab6b
Merge: 79e0c5c 72e78b8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 11:54:43 2012 -0800

    Merge branch 'dev'

commit 72e78b89dad5b06f1b3ab7e32f0ba8e32ecfd35c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 11:54:22 2012 -0800

    apparently block cache is working as expected

commit bc9fa9d22085da4a57eb2a89df71823bbbd4871c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 11:36:00 2012 -0800

    checkpoint ... more client element cache work

commit f6b9bffc24002b903fbfc5da3e2d273ee4bb7e70
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 11:16:31 2012 -0800

    checkpoint ... have to hang onto client element blocks

commit c2ba11c48a8d48d12f27934fe3ed122c440a8dd4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 09:27:17 2012 -0800

    checkpoint ... changing list item selection logic

commit 2bc2422445d04d615fa15d242092d4110044f7b4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 09:01:19 2012 -0800

    checkpoint ... a bit of refactoring to accomodate the source and list elements

commit b00ed17324ae4dbb5fc6b489de90283e2d594a4e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 08:01:41 2012 -0800

    beginning work to display lists ...

commit 79e0c5c91ec96345f3d6e638468091225f188542
Merge: 30ad7c8 85aa32c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 07:29:28 2012 -0800

    Merge branch 'dev'

commit 85aa32c2d08cebe56781670ea1753a7ab15c42c1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 07:29:18 2012 -0800

    open frame on debug

commit 1c4d65b00ce8207b96fb1d9211507d757d0d496a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 07:19:30 2012 -0800

    instead of terminating process, just return Aborted as string as result

commit ed0e99b7df0b814ef7e7e23925555a2aac18aede
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 30 07:08:32 2012 -0800

    note that error handling through signalServerError funnels errors to a single topez instance

commit 799542cdf4017adc0fc45cd6d1f3068c4940eb32
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 21:38:10 2012 -0800

    debug command and spawned shell basically functional ... need a bit more testing, then start working on stack list view

commit a5fb5edc3c602120efa0d35e0fedd578ce0c8c58
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 12:06:46 2012 -0800

    checkpoint ... debug command is not quite spawning a new shell

commit 8aea46dacdb7df502586e761fc8913f2ae6dbf84
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 11:26:39 2012 -0800

    start work on spawning shell as part of debug command ... implement sourceContainingIt ...

commit 30ad7c8675339cd60e07a58c19debbad18e41788
Merge: 5596971 c77b902
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 10:28:45 2012 -0800

    Merge branch 'dev'

commit c77b902bab5c075b0033aa4c9c998d5f95243715
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 09:25:18 2012 -0800

    should be an error to attempt to save new methodSource for homeless block

commit 271a4f3e023aa2474e4199b144d375ee30c9e981
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 09:17:44 2012 -0800

    handle warnings ...

commit ef11d1d3363e8007cebee6e63543366953912a6a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 08:43:44 2012 -0800

    tweak error handling dialog a bit

commit c7c2f3b6736df233f9323c05978aabb9e34d6958
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 08:35:30 2012 -0800

    topez errors separated from application errors

commit e8539f13da4a3c2db19baa787a6beb5e30a44c49
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 29 07:50:38 2012 -0800

    checkpoint ... attempting to differentiate between command errors and application errors

commit 69010540f0e0f96f49276585abb552dd5aeef498
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 21:31:44 2012 -0800

    checkpoint ... preparing to split out topez errors from application errors

commit 62395aa3aa856d20778d6922e52d5792d87fc902
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 20:59:58 2012 -0800

    checkpoint ... beginnings of error handling rework:
    
    1. Proceed, Abort, Debug dialog upon error (all errors) basically functional
    2. Proceed continues from halt/breakpoint(not confirmed?)
    3. Abort terminates the process ... but doesn't give new prompt
    4. Debug returns the error, but doesn't bring up debugger
    5. Debug comes up when we get "error" command error, which should be their
       own TopezNotification type

commit 5596971f06a6bc30d79a44a655a160c9fceb02a8
Merge: 0e3bd63 37bc786
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 18:38:57 2012 -0800

    Merge branch 'dev'

commit 37bc78695853da2b9b6fd56f8c50c6c1d5a26e2c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 18:37:06 2012 -0800

    tweak compiler error handling ... looks good right now

commit e1f4f16b07f6ba85679829506f459499a673f852
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 10:00:12 2012 -0800

    checkpoint ... working on displaying compiler errors ... inserting error information into method ... need to fine tune now

commit 4cf5fb2d3b9baaa23394a318ab85cdc6acda0eaf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 09:54:53 2012 -0800

    checkpoint ... working on handling compiler errors

commit d6141ce5f3a5edfcd4c48fe7c9b7309ce46f5d1a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 09:48:50 2012 -0800

    define TDStackFrame>>setBlock

commit d8f0c9847b067d9aea7fa6dea518b8dbe87f1746
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 28 07:59:42 2012 -0800

    for debugger, must always use source from the compiled method associated with the frame

commit e1e3082300f42f146538c857984edbc2b5f8c71f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 17:39:51 2012 -0800

    checkpoint ... stack frame display

commit 97f4002890326ee172bcf536b73bf97789641024
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 17:20:53 2012 -0800

    working on bringing up editor for TDStackFrame

commit 4318a8029322acb9189dd39028135e9cfe8db48c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 17:00:03 2012 -0800

    edit st, check. edit tpz, check. edit txt, check. edit sh, check....edit frame, BOOM

commit 10498c266ddaa51a48ba51b794a73827738c4f46
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 16:53:15 2012 -0800

    add error handling ... fix formatter logic

commit bf2b3f30aa76c99342be8d4644feb88e1b17c382
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 16:45:44 2012 -0800

    finish move ... loose methods

commit 2c642ef4794885b551174902f6c5f22f8a9ac708
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 11:50:00 2012 -0800

    moved TDNode hierarchy to Topez-Server-Core

commit 999a0ae8748cd715e81d7199ee75d01849ffcec3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 11:43:47 2012 -0800

    edit code, no check...

commit b6acb62d32a8ca008b051d577ccd51bc3870ddfb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 11:10:31 2012 -0800

    always format source code ... eventually to format or not will be controllable

commit ed87df5316c69f025b0ecb0992a237e90151ebb1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 11:03:35 2012 -0800

    edit Text, check. save Text, check.

commit 87778959177028ba28df0f398724847b622907f0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 10:47:58 2012 -0800

    checkpoint ... open editor on text, check. save text, no check ... more work needed

commit 638cd8c41c15c18c23732ff6c159b2a3bfa7547c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 10:31:29 2012 -0800

    checkpoint ... getting text editor working

commit fc1a0def8a48ad38161b4b70012c62f21c47752b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 10:06:39 2012 -0800

    taking the editors seriously now ... time to add windows

commit 0e3bd63be1d86cbe6f0718fec7052d75d1024922
Merge: 8e8c7d4 66c86b5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 27 10:03:33 2012 -0800

    Merge branch 'dev'

commit 66c86b5816dd261fb2c528a9e0b9f499351a9701
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 26 08:30:34 2012 -0800

    mc diff produces diff for changed packages ... mc compare (not yet implemented) is used to compare two different packages

commit a86993a29a8c55ed10a5d9f536d4ab65bf83d62c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 26 07:49:27 2012 -0800

    simple mc diff ...

commit 1640b1e3083bf84384c5566a0133529bbbaee703
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Dec 25 09:47:02 2012 -0800

    implement mc list and mc history commands

commit 48eeceb23cfb352cbbc21f5a6bb9f35186cab09a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Dec 25 07:46:32 2012 -0800

    get started on mc commands and .mc halo

commit 508a80017282ab401b57ff0dbee58fdf492af14c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 24 17:49:22 2012 -0800

    checkpoint ... initial implementation of monticello packages

commit 67461d683ddee454ae0950e9d2111970c04d48b3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 24 13:46:26 2012 -0800

    checkpoint ... initial cut at /mc/repos structure ...

commit 5bab90a68bc8bdaf2d713e2f5adc74986457e1f4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 24 11:48:03 2012 -0800

    checkpoint ... creating monticello tool

commit 1f95e0893fcfa9a149cb459d8e4aeee35caefa6a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 23 17:04:37 2012 -0800

    take into account expectedFailures

commit 7a62c6aa381e4fc161454c04abd06f3d4f25f41d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 23 13:41:18 2012 -0800

    additional test cases for debugger ... tests passing ... tweaked test framework based on usage ...

commit 1de6bf0ae365e42aeb605db60a11a33a2c56dc80
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 23 12:16:57 2012 -0800

    test tool tests pass .. add ts debug errors/failures/method spec feature

commit 050775d9b63fe0aceddf6d6b50dad82e830ba48f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 23 11:53:51 2012 -0800

    checkpoint ... updating method lookup parser to handle frame print string with () enclosing the method class ... start adding tests

commit de910c1ea8c899260843f7ea1d3c829ec07a2617
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 23 08:33:23 2012 -0800

    straighten out discrepency between ls and ds

commit 42563c8a7c4228e09fb9cfdb9b303375f84bc8f6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 23 08:03:16 2012 -0800

    add continue command to compliment debug ... use real continue gci call ... leave continueWith: variant for later (continueWith: gets SIGSEGV sometimes)

commit 1cb8a7ae682d85d202d7f4082b7cfbad072d5799
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 23 07:06:59 2012 -0800

    riffing on proces debugging and handling dead/dying/orphaned processes

commit 3657f17e791e769b7e5b45ab1b3ba6b234dc8db3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 22 17:16:02 2012 -0800

    tweak printing again ..

commit 7ecd10839372e073d302be5be8d5f8280593eefb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 22 09:54:10 2012 -0800

    add ps stacks command ... begin searching for the mystery process from zinc tests that appears after repeated ps yields

commit 1e150910238eb4bd177f1bb690b645af7c671b16
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 22 09:23:03 2012 -0800

    monkey with ps and ds and tz display code as I work through zinc test failure scenarios

commit c8eed7657e2bf2839d4dae9c2475c6c014345c6c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 20:32:51 2012 -0800

    add ts list and ts debug commands

commit ccd073a145b40da34550dd6a0e08a108c459f7e3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 19:57:19 2012 -0800

    restructured the test nodes .. starting work on ts commands

commit a8625a61dc7a83944a0bd8d5674ef9ea8a1a5522
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 18:20:48 2012 -0800

    trim .debug halo items

commit fc3071e9571799f65560ae5522360ba6b71ce7f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 18:15:39 2012 -0800

    cycling in on satisfactory test command combo

commit 161c22575064f5516a6414c3f4c0a18716979b39
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 17:16:03 2012 -0800

    better colors

commit b23dd7a30c4578fc5a49116d922d5b7e1086cdd1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 17:01:16 2012 -0800

    clear up some element rendering bugs and add color to the test nodes

commit 4126a18f797bbec2608c55da229bc6ed226f03bf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 14:15:53 2012 -0800

    getting started on sunit support

commit 91e7cf6a4c03534a9bc65260a0835235d8c339c3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 12:46:13 2012 -0800

    get cmd-shift-l working ... compat hack

commit 9242fbf5e5c01bd140f18042fa2cc75444e5d3db
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 11:40:30 2012 -0800

    rename db steps command to db break steps

commit 7c2edc12c358342d859661d20ffc96604fb92e00
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 11:32:54 2012 -0800

    rename TDCoreDevTool to TDShellTool

commit 000b4cb6f347d251b0c33385d98c68338e6ddd5c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 11:22:12 2012 -0800

    implement autoCommit

commit cbf6a1ed3574efbce6ff85737d7bb76eb4e8c0fb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 10:19:29 2012 -0800

    spawn shell window complete ... window close logic sealed

commit a29e6c731a5da40e132a254ee1a29662906f46ab
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 10:05:04 2012 -0800

    implement shell window spawn ... needs a bit more work

commit 8e8c7d4b7ec68e3f79660e7da20d754908e57b5a
Merge: ea47e83 92c6c6a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 21 09:14:15 2012 -0800

    Merge branch 'dev'

commit 92c6c6aeef004e873e0f53bb0579758652ef3b1e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 21:11:06 2012 -0800

    find signallerFrame for initial currentFrame in debugger ... fix frame printString

commit 424dace83546f565c2ac7790d34146576fbcfccd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 15:53:04 2012 -0800

    revamp ps kill logic to use oop ... cannot count on list-index

commit 1bca9a7d87395ca25cec60dfba951dc83c66b394
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 14:34:56 2012 -0800

    move ps code to its own class ... add range of kill commands

commit a43a995056dc3ad2cd17e0072de2ff7f70de4e80
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 13:54:53 2012 -0800

    add shellInit to standard home contents

commit e67e1982c465d16a67ae99e6094e2dab70bb554e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 13:36:25 2012 -0800

    change bounds and indent sizes, now that I'm using fixed width font

commit b304b70ac3ecaa7d508ba889bbe7f4e8bd33e452
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 12:42:12 2012 -0800

    checkpoint ... .processes halo and yield command

commit bc37a1b93013d62e406805e7e32714ffbee09997
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 11:02:02 2012 -0800

    finishing touches on breakpoint commands

commit 95b63ae0c47e1b8d74e7cdb4414ec62cb80c05e0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 09:00:20 2012 -0800

    list breakpoints implemented

commit 2caf3823ea43bc663ba21a3cb3a95caefc1ebb89
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 07:57:43 2012 -0800

    rename the .ex halo to .debug and use stack for the stack

commit 528f670a0fcfa903b24fbad784972eeb42fb08bc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 20 07:42:58 2012 -0800

    update readMe for the halos

commit 7f9b3eaca6f06a0bc105145a18b9d6891ec42ff5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 21:26:14 2012 -0800

    add handler for 6005 ... method breakpoint ... need hanldler for error and halt while runing debugger?

commit 154bf9e52639459976b633a498293291867b03e8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 21:19:30 2012 -0800

    checkpoint ... set breakpoint works

commit 6cc2ea072cb72ae0d7b7fede1ad14ada9cae066c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 21:02:52 2012 -0800

    checkpoint ... getting started on breakpoints

commit ea47e8343d2f1783e6aa24c15d89efe135014d54
Merge: ab51f6c 40b6a32
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 20:18:04 2012 -0800

    Merge branch 'dev'

commit 40b6a326e0fc85872124f1648c8e230b984bdbcf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 20:17:21 2012 -0800

    db steps command for displaying stepPoints in a given method

commit 5d4e69d95470cbea16499fb765b0ac9204856242
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 17:00:10 2012 -0800

    implement db continue command

commit b7ee045f2985979cac2f24d2097da3e90bf2def6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 16:46:21 2012 -0800

    implement over and into commands (for step over and step into) plus correct return value when stepping off end of stack

commit 0d9670c3af237688a7bbbeb1a7c37afc27042472
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 14:52:24 2012 -0800

    checkpoint ... started implementation of debug control commands ... db step over is basically working ... trouble when running off end

commit 58b9a1e570b8b15e18d4e47cf876186dcd96351e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 13:08:32 2012 -0800

    add priority order to dev tools ... debugger now uses db command namespace for all subcommands

commit 680ad922b37d1285743ed1be67b4053ebd4e5da0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 12:24:29 2012 -0800

    get rid of .gs (gosu?) file

commit d9ac9d3c97c4c35bd204be92a4f2d64efcc3efa6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 10:23:21 2012 -0800

    clean up debugging code ... remove unnecessary code ... TXT rulez!

commit 058e6f24442b3c60e717fac81bb97605560439be
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 10:18:30 2012 -0800

    successful text edit/save

commit 40960ba8ee034f636f84a7ff52d811f77cc12497
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 09:49:18 2012 -0800

    new netldi ports

commit fa88f5f645cea18dc2740a623a953c4400a9871d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 09:37:11 2012 -0800

    ... fix RunArray STON implementation

commit d0f27cb06c3041fb5abaf636b88ad68b8c215346
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 09:28:51 2012 -0800

    have to explicitly pass Text as STON

commit 0e6af99bc1cdcf614f467c2f9f6dbae9501e6857
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 08:23:37 2012 -0800

    checkpoint ... add example txt and more work on getting txt functional

commit ec4c5122351b3d6ead85acede2562844c33b0185
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 19 08:08:46 2012 -0800

    checkpoint ... working on adding true Text to txt files

commit ae6c263393e7bf4990773b0b38e8a3e86df98cff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Dec 18 19:04:24 2012 -0800

    update netldi ports after restarting server ... topez hack

commit fc831a4749353655e8e3b99131cc8ce1a42071e2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Dec 17 08:48:32 2012 -0800

    selection interval for stack frame source

commit 8abead1fec4e6ccfa6c8eec3270b3012aaa24a17
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 15:58:54 2012 -0800

    checkpoint ... automatically open editor on frame method source and update source as you navigate amongst frames

commit 225915488e9d9729a42ebb24e970e6b680678513
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 15:36:36 2012 -0800

    reuse the window for stackFrame source ...

commit 56ccedbf998e67bb4db1be893381b623e5c8d74a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 15:34:04 2012 -0800

    little compatibilty hack for TDWindowStatus ...

commit 344548012acdff3719ea91bc3ae32f71f684191e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 15:18:11 2012 -0800

    checkpoint ... open editor on frame method source with syntax highlighting ... need to highlight stepPoint ... allow for method saving (and truncation of stack)

commit b1d10c12f417e978a9148dfe6ce9c4347a4cf20e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 15:07:41 2012 -0800

    checkpoint ... edit frame progress, keep accumulateBlock alive for duration of run command ...

commit 04ad5500b87625d2a3400adce96b463399d6e8d9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 14:43:04 2012 -0800

    checkpoint ... just getting started on editting method source for debugger

commit 01f5274c67b598f5cb7156075058d73fcf845ce7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 14:23:17 2012 -0800

    checkpoint ... implement frame command

commit 1154f1ca7ad607723b87317d0f6481ba6691590d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 13:34:26 2012 -0800

    checkpoint ... implement up/down commands

commit e5eb87a9b18eaf60b3fbf36e380faae7491d2ce3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 11:43:19 2012 -0800

    checkpoint ... preparations for navigating stack frames

commit 8f5fcc895ee62845599e9a558c752cedc09d5eb8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 10:32:27 2012 -0800

    checkpoint ... refactor stack structure

commit d90b42ae21578b47d42e4efbb7ab55d97da385e7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 10:03:41 2012 -0800

    checkpoint ... add debug command

commit e3b6218bc9cceb2f86c9e31ad31f3e67be58bb02
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 16 09:49:09 2012 -0800

    checkpoint ... filling out debugger

commit 602223b15305239ff0b64cf130b9848ba0a664ae
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 19:21:46 2012 -0800

    checkpoint ... create skeleton TDStackFrame ... need to fill out api and map to the node...

commit 25938c57fbaa43b815119284ee91d99136c048ab
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 19:10:35 2012 -0800

    checkoint ... raw frame contents available

commit 2e8ebefb8545509838e7a6014297c5d920ca561d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 12:28:47 2012 -0800

    checkpoint ... getting started on debugger tool

commit 9ee9951c1bed3e9e0a8b40dad34e46eeb2ea7e80
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 11:36:52 2012 -0800

    change default list limit to 20

commit 6903fb397e43c02a6acb7a053552a43cb798b0d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 11:34:22 2012 -0800

    missed a listContents implementation

commit 209bd8dc98f6b8333514bcd94fa016943ef4ce79
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 11:20:28 2012 -0800

    add limits for ls and ds commands to minimize issues when navigating large objects ... bigls and bigds commands could be created to allow viewing of ranges of large objects ...

commit f09f212e5b2dd3b0626ea70ada4c7c4ce579e660
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 09:03:33 2012 -0800

    fix builtin bug

commit 759f410a431d7dff4e2ac19eff2c5c9b3f02124b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 08:51:14 2012 -0800

    objIn reset after pipe chain complete

commit 5614c4f63f3fc7b8b8dc7825fae3f7b9f2569feb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 15 08:45:11 2012 -0800

    checkpoint ... need to reset objIn after pipe chain is complete

commit ab51f6ca3eabfc0886fc0e8241cb2e7847d2b17e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 14 17:24:39 2012 -0800

    provide emphasis cue for index elements that are on an index path

commit 086f6da2fe528dab4447c2f39ef7e0abbcb8b2b6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 21:35:40 2012 -0800

    add readMe to the index analysis nodes

commit 7184d11031ae41ee1c3b4e5199217009a76a7720
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 21:21:25 2012 -0800

    finish implementation of parentLink ...

commit 960f78ef1326c743af49bb0a41189ad555e02166
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 20:32:19 2012 -0800

    handle BucketValueBag in index dict, fix bugs in run, btree nodes and symbolList

commit 9a46f539894472f7e83695ba5fa82e31b874694a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 20:21:01 2012 -0800

    using the tODE tool to analyze index data structures

commit 9a5a197870f5e677e6da3542a00f210c1538bb77
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 17:04:18 2012 -0800

    tweaks from using tool to understand a particular set of indexes on a single nsc

commit f6c2cee3475764167129775e509430327dc11f5f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 16:11:10 2012 -0800

    fix run objIn handling, fix up index dictionary handling, add lastResult to .run halo for debugging

commit 4d2803471209a206fed00ab50c3fa79b86c51d52
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 13:08:59 2012 -0800

    improve ds command, add better handling for btrees, eliminate premature caching, and various bugfixes

commit 2a91bda2de78926c0efff566b3e35415652d38d5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 08:48:14 2012 -0800

    first cut at trying to control per element extension and text attributes ... somethings not right ...

commit a7dc16ce165cce3ae26a2883046c0da9f357eed7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Dec 13 08:15:19 2012 -0800

    straighten out the naming of the nodes in the analyzeNsc node structure

commit 3021b1a5e30fc23ab6b61fb66666f28b1c705854
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 20:45:06 2012 -0800

    add indexList to index node along with nsc...list all of the instance variables for index elements

commit 59be491b9f41e26476a7a6a6fa23e5de67c725d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 17:06:57 2012 -0800

    make sure that internal and external node names are the same in the index tool

commit 1d1e4c4bb628eaa1a332b8bb37518cf19cf46fe9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 16:47:10 2012 -0800

    renamed display command to ds ... ds is the same as ls, except that the object represented by each directory entry is displayed (oop size class and printString) ... ds is more meaningful for inspecting during traversal

commit 22cfe01990daa51296d23f48a3ab064caa2524fb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 16:10:45 2012 -0800

    add elementExtensionBlock elementRenderAttributeBlock to TDPluggableNode .. greatly simplifies the definition of listBlock ... only need to generate collection of names ... rendering names into text done elsewhere

commit 2d4c243cc8f1fbd6c758e41213bdb8b38801b11f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 15:21:12 2012 -0800

    checkpoint ... working on dsiplay command aimed at producing structured display of node contents ... find that I need to be able to traverse children which means cannot use listBlock (because of extension and text) ... listBlock must be reduced to names and extensions and text added separately ...

commit 307e22f4b4d19ff586b0d486f6761ea89a054c2f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 14:46:37 2012 -0800

    fix absentBlock logic for TDDirectoryNode

commit f291cfca0d89766fe1e683936b2d0285b55557c6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 14:28:06 2012 -0800

    index analysis node structure is basically funcational ... need to fine tune

commit 575a106ee651a55b6522049fec31b5d3940d625f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Dec 12 13:54:14 2012 -0800

    initial cut at node structure for index analysis tool

commit d84587ddaa38f441acbc0fa145f37ae203b85214
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Dec 11 21:26:13 2012 -0800

    start work on the index analysis tool

commit 4f7a169d77caf620744b66bda279aefb794239f3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 9 17:48:01 2012 -0800

    get the pipe command to work correctly

commit 2d7fdce58b3101169924dca8c40fb674dfeefb95
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 9 16:37:46 2012 -0800

    rework edit command with objIn in mind

commit b97de0f23d19b69b0d0d7b71c44bee20abd546f0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 9 14:14:48 2012 -0800

    initial implementation of objIn, introducing | and ; to command line

commit a756eba5a0958b5303490decea7e01dd99e23607
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 7 17:44:43 2012 -0800

    supply missing method

commit b4d3b32e9dcfc1d53a0b4e42282d75748b6c0c5c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Dec 7 16:51:19 2012 -0800

    clean up issues with PluggableNode and extensionBlock and renderTextAttributeBlock ... start work on building interface to tests: /st/tests

commit c8de00271aa927a740513a2ab5bc8a50d69cdb14
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 2 08:52:02 2012 -0800

    add extensionBlock and renderAttributeBlock TDPluggableNode

commit 89e875d2b92b5f3828f723e75737250100da1dd6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Dec 2 08:25:10 2012 -0800

    all all nodes to be copied and moved ... fix cp logic to correctly distinguish between leaf/dir destinations

commit eead65332d9df059f72b1321ff4e9a8be738074a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 19:47:13 2012 -0800

    better results display...

commit e010282cd6d36b98959ef8728f7872e7fa3b6f91
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 18:25:40 2012 -0800

    push state for exceptions into TDServerStatus

commit 46fe773f1fc1b0301d6e19761fc7e918a49cfad2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 18:13:43 2012 -0800

    implement .ex halo (description, exception, process)

commit 189c191451677ede00081febf82bc4ed870f17f4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 17:32:30 2012 -0800

    allow for editting (read/write) of .run/st nodes ... makes for usable doit scenarios

commit e1833209203c12d817f5fca34e066d176005212f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 16:49:37 2012 -0800

    finish first cut at halos implementation ... see halos command manPage

commit 8a2a2c0973b050d6ce1d28d3b40c44521557069f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 13:27:47 2012 -0800

    rename TDDotObjectsDevTool to TDHaloObjectsDevTool ... prep for more halo work

commit 97cf47b52f6894a1a86e9ef4dad8c005e708c3f1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 13:13:43 2012 -0800

    implement doit command

commit 5493814971cf4642ae2994a3064d6d1c1bd8b88f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 10:57:27 2012 -0800

    finish implementation of run command

commit 49148dcaeae757b73791eb926f5b4934a66c6adf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 09:35:14 2012 -0800

    .run implemented

commit 6a830a6d2d6fa7f8d5c7a6c5adeb95bc993222c1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Dec 1 08:57:46 2012 -0800

    implement /home/.run.st node

commit c4d8c86b83a34ac75f9441ee32cff2f14d5904bc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Nov 30 19:50:05 2012 -0800

    basic run command is functional

commit 7f9566f3ff13e920fda2db68d2a33d93873dae89
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Nov 30 16:14:15 2012 -0800

    proper edit command behavior for editting various leaf nodes

commit 68d44a8c122186269d34a0eb8a795c239ee703a3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Nov 30 15:49:17 2012 -0800

    a bit of cleanup post execution work

commit c540e34efe27b616422a17983d706b096e7a79ca
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Nov 30 15:30:09 2012 -0800

    execution of .st, .sh, and .tpz files is functional ...

commit a34d6d9ccde5463406658337b509607508d10e38
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Nov 30 12:25:39 2012 -0800

    add structure for /st, /st/classes, /st/globals, /st/symbolList ... checkpoint

commit 06e6ea6306431f5ec627850a8cf3ccefe6230774
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Nov 30 10:32:23 2012 -0800

    proper label for generic Object edit...

commit 6912c5075722404f501aecb982d3dec1c259829b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Nov 30 08:43:29 2012 -0800

    reimplement touch command to produce different types of leaf nodes: st, sh, tpz, and txt

commit fea86b1108d4c3fae7d779705f8d86dba498eec5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 20:42:39 2012 -0800

    add Script, Topez, and Smalltalk leaf nodes ... pick some colors

commit e5029589104cb8100e70f872ed9ca414f167f4dd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 19:54:15 2012 -0800

    restructure TDNode hierarchy a bit ... aiming for consistent rendering with emphasis and color providing clues to the node type, plus consistent use of extensions

commit d9049e82d955f9029700798b13fbd0434fd38c30
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 17:05:21 2012 -0800

    parse path and allow path as command name to evaluate to a node and get the block from the node (executable)

commit c6f6bc9aa9edf2a0f045823127e71d5ed36e5e08
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 16:47:39 2012 -0800

    a little more debugging

commit 83bbeffd7e17d0791418982aca0aa09b79b18bec
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 16:22:54 2012 -0800

    define standard .readme and finish up first cut at .readme

commit d0c07f829b4022edcc7b3db1e5d098a9b2302b9b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 16:20:31 2012 -0800

    adjust error handling in TZGsExecutable>>performTransformOn:

commit 00d5d754d88e36999e064a87113bf197525c7cfb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 15:55:15 2012 -0800

    fine tune ston depth and critical block handling for TZGemStoneProxyBehavior

commit 3aa2b5f89ebc3f169ab5f705ef3a70a570b6565b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 15:06:08 2012 -0800

    finished first cut at writing man pages for existing commands

commit 605bbbe41a1155490754234c1a4a39b168bd87ba
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 13:20:45 2012 -0800

    checkpoint ... writing man pages

commit 38474e99df621ec795e5570acbe13f46659e3093
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 11:41:27 2012 -0800

    finish off .readme implementation and fix the node printStrings

commit b71e16873f11c826b0bc6ff749f41a65dd343380
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 29 10:34:34 2012 -0800

    implement man command ... make extension responsibility of node (not container)  ... node stored in commands instead of block ... add .readme to nodes

commit 53898100d3990b72e44e55709d220d6377ef6650
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 17:41:18 2012 -0800

    add .self and .node special nodes as trap doors for inspector/editor to get access to underlying object and tool object

commit 7cfb1a3c2f0200134ba9ec14c4ea02a3e926dd42
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 14:52:14 2012 -0800

    can now cd into objects in shell ... cat node to get printString

commit f73fe9cbf0cf5b2df24aa68e8a1afd038f2370db
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 14:09:06 2012 -0800

    fine tuning TDBlockNode implementation

commit d2826c531c93b24ede28b90ec1a7d829f4e6cbb2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 10:28:17 2012 -0800

    normalize the edit window location and reuse window

commit c733efd2edf9a289fe66afbf120848a85331d77f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 08:26:11 2012 -0800

    basic edit object ... need to add asTDObjectNode for navigation and pseudo inspector (or real inspector?) for true editting....

commit b6cfa4c8280edb769363493b5bcaf97d82a62405
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 08:04:37 2012 -0800

    working towards generic object editting

commit a2a4835e33719142ebf17bd69087849dc45c036a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 07:39:01 2012 -0800

    rename TDObjectNode to TDBlockNode then create TDObjectNode which can hold arbitrary objects in contents iv ... push around notion of edit:tokens:windowId:

commit 6acd989cdae6a7d83cee496e7444951f8abde607
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 07:35:58 2012 -0800

    supply missing TZSystemWindow>>activate method

commit b79477f46ee1bb960d15419671c40b402b77c22d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 05:45:31 2012 -0800

    swap references to TDNode classes ...

commit 5d5d823b35f3c791abd41639f5c501c075779a04
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 28 05:38:07 2012 -0800

    copy TZNode hierarchy to TDNode hierarchy in preparation for .node and asTDNode work

commit edb084fc31e37cdc70bf48cb2b013c5a1a8b8ec8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 16:41:48 2012 -0800

    tweak /home/.window creation code ...

commit 837e9e45cef07125831c352fbcd02ddce272e7f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 16:16:40 2012 -0800

    create /home/.window object whose contents represents the server element associated with the active window

commit 3ffc80c263023367d14d6fd6fb015cff2f134698
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 15:01:51 2012 -0800

    start tracking the active window ... needed to provide access to the server object that is underlying the model

commit ea651ff2c2e40cecd0e530499ca9f5ee7bdc3d45
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 12:37:57 2012 -0800

    touch, edit, save sequence is working for commands ... execution and two window view not tested/working ... CMD-l should refresh with newly saved contents

commit 9ecad256a73785bcc88ba2586b92153340366c5a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 12:15:24 2012 -0800

    push block creation to topez for GemStone

commit 017ddbd088a870831d34c21a74e124945f26d34c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 12:14:02 2012 -0800

    bugfix for TZGsMessageSend>>value

commit f813d104414e22e3a420c6da17d802b36220cb2d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 12:07:27 2012 -0800

    tweak #value: semantics for TZGsMessageSend (creation of args _array_ is responsibility of TZGsMessageSend)

commit 46c849a85bb18038209fc29966d39ce99e93aa39
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 12:06:11 2012 -0800

    push block creation to topez ... avoid platform-specific code in common-core

commit e7fe07e23e3ce09858c052604e0f00ce00afe0b7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 11:14:22 2012 -0800

    reduce level for GS save command

commit a8425dde1e52d2abd21fe0d03a2b41455ff8f4d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 11:12:04 2012 -0800

    start work on seriously editting commands: adding new and saving source

commit 0f85fbda2adf00a01139a8c687198a7b0a7a6bd8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 09:51:51 2012 -0800

    tweak TDClientElement ...

commit 27e28f0213b265e1579dedb0c65cbd96be425857
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 03:37:32 2012 -0800

    TDClientList is passed into list editor and provides hook for the list allowing developer to filter/inspect/operate on elements of list to produce something new ... available from .window

commit b4943bae494cbf8937af7743223762a7040bf73b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 27 03:16:09 2012 -0800

    Streamline the edit stack...

commit fa906df74769d9bb0a29b2c81ee32d57efeac61b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 26 21:00:07 2012 -0800

    clean up TZGsMessageSend calls ... TDClientSourceElement is functional ... editor opens correclty ... need to work on save ...

commit 09b7a5d609180b5faa62ea9d170de713a9562593
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 26 20:34:19 2012 -0800

    checkpoint for TDClientElement/TDClientSourceElement ...

commit bd7a2a4894b87610a7321f9984c93d51e2d487e7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 26 19:58:25 2012 -0800

    filling out behavior in TDClientElement and TDClientSourceElement

commit c6cfab54c595f9ca34473a4406e291c93f70d77b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 26 18:31:28 2012 -0800

    starting work on TDClient/TDServer elements...

commit 920197fbb961aac9aacc81196939308ca1aae42b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 26 16:31:55 2012 -0800

    tweak edit implementation

commit 424f842af67e6f064b799822c42a84d6420aa796
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 26 16:01:13 2012 -0800

    edit script is working now ... with correct syntax highlighting

commit 508deef7983ae7c0857b1f3c705e8756eef4652b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 26 15:30:48 2012 -0800

    adding edit command ... in progress

commit 13b0bfeaed88e4fb511ae2f6962548b3e430afa1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 21 16:38:59 2012 -0800

    upon detecting an exception (on the client), the server-side is notified of the exception, so the debugger can be opened et cetera at the developers leisure

commit 17851eb623a81319a7921f4c79206eff33112eb9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 21 15:45:45 2012 -0800

    create clientForwarder for TDTopezClient, so TDTopezServer can send messages to client when necessary

commit 9bae303eec4457f3b33066dd79f06a67f008279b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 21 10:56:36 2012 -0800

    eliminate redundant method

commit f591478702d46e95f5f688a24e5aaab24107968a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 21 10:56:03 2012 -0800

    tweak install logic

commit de571f02cc524a1a9f825239e5ee276e55acb368
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 20 18:26:56 2012 -0800

    final tweak for workaround for https://github.com/svenvc/ston/issues/4

commit 5af2053d8aef47941ab41fbc92857b472567c8cf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 20 18:18:54 2012 -0800

    workaround for https://github.com/svenvc/ston/issues/4

commit 97854a970f4f8b78a5a55dbd9357b01ea8dd87b4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 20 17:08:30 2012 -0800

    render text for evaluation results on server-side

commit ef91763ea6f547c066d9e73e48b75784378fd80e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 20 16:18:49 2012 -0800

    install /home directory ... ls command is working

commit aa5c2a3243301885b907198e87a30126649b932b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 20 11:48:02 2012 -0800

    implement navigation commands and some DevTool house cleaning

commit c3c16d384f6d14cbba6df50c4e766952326cd8e3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Nov 20 10:46:18 2012 -0800

    hook up Transcript and pass tokens from client to server as STON string

commit 4c13ad5cd650870ae0338398ed1f007f057c9266
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 19 16:44:08 2012 -0800

    register commands in a dictionary on server during install

commit 2fbe260a53a8c3a2a740ab8f44a922e2f9a647bb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 19 16:30:40 2012 -0800

    moved TDShell, TDTopezClient, and TDWindowStatus from Topez-Client-Core to Topez-Client-GemStone

commit 2750811de195e21e0d427c6fbf0349c568b39014
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 19 16:12:11 2012 -0800

    TDShell exit builtIn command working

commit 8fd2081d15cd8a0fb2da584b08ca53a4b435113b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 19 15:48:10 2012 -0800

    progress towards new fangled server-side code

commit 2f8669ae7163052380229d9a9cebbab0d3857e5f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 19 08:10:36 2012 -0800

    pushing out towards the tODE evaluator ... line by line to server

commit 4433283a3059e63a96ac4be472ded9993bebde15
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Nov 19 08:00:20 2012 -0800

    clientForwarder for opening code window from server

commit 14eb1f4a27c126be085895a5516e26521269f8d3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Nov 18 17:31:22 2012 -0800

    use clientForwarder to open window on client from server

commit 8dcb4ce8519f078b1dfb9e5966330eca0ca8ba55
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Nov 18 09:46:24 2012 -0800

    reinstate support for client forwarders

commit 5151b0ac814bcbf6dc8c73b437fd15c96b4bae4e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 16:37:01 2012 -0800

    remove .../bin contents before adding commands

commit fd5bf5d7fe8b43c2c89c5bcd0ba6307f848be8ab
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 16:19:25 2012 -0800

    starting to build server-side (GemStone) commands and command structure

commit 7dca155e5e4c1d0aac4811a07b42e6b0070d0b94
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 15:16:41 2012 -0800

    more fine tuning of the SHOUT code base

commit 54d8d7003143f3553ee977e3c7878f08446f1243
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 14:29:40 2012 -0800

    additional bugfixes for instance variable highlighting in GemStone

commit 4e632fd39c97792a6d5114f78db88d6c0df9b209
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 11:09:37 2012 -0800

    fix some infant mortality issues with the SHOUT improvements

commit b581fa6c35381b29efe8b9a4073e7b4de8af272a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 09:51:27 2012 -0800

    improve SHOUT highlighting for GemStone

commit d45c70678c7d276805589cfd62179f27b297e54c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 05:57:12 2012 -0800

    support for TZGsBlockSend and TZGsMessageSend which I think will be useful going forward

commit 27c1a0748f7aa3feb0b0280fcb09b432391465b3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Nov 14 05:57:00 2012 -0800

    support for TZGsBlockSend and TZGsMessageSend which I think will be useful going forward

commit 9bf5a1358fd33858e29013b45a7212976327b1e2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Nov 11 15:12:31 2012 -0300

    enable CMD-g to find based on regex expression used with mutli-arg implementors/senders selector

commit 650784071269d78c180fee95453da8ecb94413fb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Nov 11 14:59:27 2012 -0300

    improve the setFindText: algorithm for multi-arg selectors

commit 28c5bbd06f2c27e06f6541b3d5f5c395b828d9e5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Nov 11 12:41:35 2012 -0300

    additional elementSuperClassName support

commit 8a39b48bd54629917860dde0bfd8ce75a4af5485
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Nov 11 12:16:03 2012 -0300

    isolate the Smalltalks demo commands
    support for Roassal command (elementSuperClassName)

commit 49429e89a594a7407410d1655c3e2362ce4c7120
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Nov 3 17:48:59 2012 -0300

    get diff running in GemStone

commit b38636bf42f37382c54ac6dc75eccc91beb576b5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Nov 3 17:46:22 2012 -0300

    add diff command separate out diff/releoad/save commands into TZEvaluator class>>mczCmds method

commit b269485f4f08b040d27b14ac5178f90378945708
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 1 17:52:42 2012 -0700

    support for diff command (MCDiffyTextWriter and friends)

commit f3df244c3384fba3d4b7050a100965a57517e4c4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 1 16:43:17 2012 -0700

    fix reload issue...

commit b3c4a43ab9364d456d1bf5a059a6cbc47b6bea5f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 1 16:35:11 2012 -0700

    implement reload and save commands (for GemStone)

commit d5341995e404087ced870bc4a5d608b183140318
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 1 16:33:19 2012 -0700

    fix bug in accumulateText (newlines missing
    sysinit split from init:
      sysinit does class initialization (and calls init)
      init just adds scripts to /topez/bin
    TZEvaluator class>>systemReinitialize added
    fix ininite print loop related to TZFrameMethodElement
    implement reload and save commands

commit 693b6adcbe6baa730943109b6b6a812410806d69
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 1 11:44:43 2012 -0700

    address infinite loop potential in setting topez for proxies ... open door to using TZGsStonWriter (more compact STON reports)

commit 51028ed89e87d9833c28612b852319bc789f67c8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Nov 1 10:26:16 2012 -0700

    address infinite loop potential in setting topez for proxies ... open door to using TZGsStonWriter (more compact STON reports)

commit 6f6c245a132dab46eb5f4226de2ac5fc9887d07f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 31 01:14:58 2012 -0700

    cmd-shift-b for instance element sets the instance in topaz along with the rest of the editors, so that the inspect command can be used on the selected instance ...

commit f78ee04b0698a09fc353746966f3cb24fb6ea282
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 31 00:44:00 2012 -0700

    list pane wants keyboard focus on mouse enter (no need to click in window for inspector especially)

commit 2d548e020d79fedb4e1536e9db15b62583107541
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 31 00:38:18 2012 -0700

    more shell image structure ... clieck and keyboard events are now visible and edittable

commit 8b743d0b5bac8318b669ae1fdd61487fae424a21
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 30 21:49:06 2012 -0700

    restructure shell image structure (again) and fix bug in script saving ...

commit a3e15c209c3174261451bc7817ef083a9db2a22f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 30 21:32:51 2012 -0700

    clean up shell image structure and get debugger working again ... shell-based and gui-based

commit 9d37c285077eaa02b9d211f13028390347687d24
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 30 21:10:35 2012 -0700

    avoid using references until https://github.com/svenvc/ston/issues/3 is resolved. I've got a patch that should work for STONREader if there is a loop in the traversal, but that patch may not be usable until the vm bug is resolved.

commit 1c46e9a7a3369d2bdf7138970eb0dd22cd1bbcdd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 30 16:11:20 2012 -0700

    add TZGsStonWriter class with added support for storing proxy references ... plus other performance adjustments

commit 36e0b1a0a7eacaebff076edde59e0e6174d2b6f3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 30 11:27:50 2012 -0700

    implement edit /projects/Gofer/classes/SystemOrganizer

commit c5f7b236a35b29831738f8e7a814afbbb420d3fd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 30 10:53:24 2012 -0700

    get /projects working for Gemstone

commit 53c98268b43480566b0f3f8cb34a37324778486e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 19:40:56 2012 -0700

    ls /projects/Topez/classes now working on GemStone

commit 461585eb8f0fc263630492758ea1c0710fcd400e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 15:38:21 2012 -0700

    checkpoint ... porting the project structure to GemStone

commit f64e5e975e37c869845fd0a8ecd6e9f3a324f9f2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 14:46:38 2012 -0700

    move lint command to native-only and create setClassProxy to avoid roundtrip when using name (to resolve to a class anyway)

commit 66e4f1ae23c88f0535ee04769f43aa96f7a07c12
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 11:55:25 2012 -0700

    tweaks for GemStone

commit 24ec4057994756dc154d5120f6bc0e92a9f32991
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 11:43:49 2012 -0700

    green tests

commit 7c299c3de2e5c5b3738f58f33a5aa98470ad7bf4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 11:11:03 2012 -0700

    make lint happy

commit 0f68b702e4e5df5dfebfa2f1914ca497df2062e1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 10:49:31 2012 -0700

    beef up the lint checker so I can use the dang thing for validating code before attempting to load in GemStone...can you say "eat your own dog food":)

commit 79633966834f488043b2a3bbdc1c25a0fae5299e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 29 00:33:43 2012 -0700

    finish lint command ...

commit 8afcdc80d1e3a11834544b94ee1f65ebafd3ca47
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 28 21:36:28 2012 -0700

    sample of adding lint checker to topez is even better ... healthy start with lint checker for a metacello project

commit 2dd8503cb3c33bb9677254673c980e4eb0a3b5e4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 28 13:02:29 2012 -0700

    /projects/Topez/tests would be nice, too...

commit a355019ac0b98d60c415ae32843576f0aa401549
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 28 12:55:23 2012 -0700

    edit /projects/Topez/classes is functional ... no need for prtests or prclasses...

commit 7471635ec4ce8946e25c60f01f1ea5b82c04d42e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 28 11:47:22 2012 -0700

    implement the beginnings of arbitrary object navigation via the shell ... /bin uses the same mechanism ... slapped together navigation for /projects/*/classes where /projects lists all Metacello projects

commit 57f39e3e154179031275a30eb2c2adff433bfc52
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 22:06:38 2012 -0700

    CTL-j for repeat last command....

commit e8d6e8b44191bc6f7aa5785b09870a6e08fb5236
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 18:54:27 2012 -0700

    fix inspector rendering

commit 3a4bff9ef2ee1d7cbdcfba7b34ac7142675ba001
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 18:37:33 2012 -0700

    tweak and inspect commands take input from text node

commit 23ebcedb052a631016dec8e25ad8802ac29cc67d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 18:19:53 2012 -0700

    clean up stack in case of error ... handle nil line

commit b1d54a7ed3eed2829ba75e656092f412933a93ea
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 18:03:33 2012 -0700

    handle nested accumulate blocks

commit 12de6fc2d0f39f1fe26bdd515ceafd6d7a13d3a3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 17:17:59 2012 -0700

    checkpoint ... minor cleanup

commit 35655103935cf2a082a6a78913ce849d0f1067c0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 11:46:00 2012 -0700

    fix expand when task bar is _not_ used

commit aa2911b7c32da721509c7fc4212c7ab87935a60a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 11:29:36 2012 -0700

    fix problem with setting the evaluator window ...(for exit and esc)

commit 447d16b9e4089ef82a4a6c11f478bc9b7c7bea3e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 09:21:12 2012 -0700

    implement the creation/editting of shell commands through the shell itself ... using touch and edit ... BTW, the old edit and list commands should fade away...

commit 92bf2113235aad4322a1ccc47fd518e016273559
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 27 00:30:11 2012 -0700

    add TZBinNode class that rlists the commands available in the system ... edit the commands too ... don't try saving the commands yet ...Bin node is generated dynamically from the block list ... should have one for the clickBlocks and the printBlocks ...

commit dfcefcccf704908a065808d8a3ab8187a7fd8c37
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 22:52:56 2012 -0700

    editting scripts

commit ba191286d4767fd030b1da0dcebb1a6be8ec70eb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 21:32:02 2012 -0700

    add cp, mv, mkdr, rm touch commands

commit f54a569c8221dc0ad9e87ebb6207d0ddd7b1942c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 20:30:45 2012 -0700

    setting stage for editting the scripts....and objects from stash interface

commit 04e9c22e8a2e097238fb3bcb9f2f608666284c7d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 17:43:16 2012 -0700

    rename instance to inspect, reorganize script nodes, add cat (cd, ls, pwd and cat), rendering for nodes

commit a469313dae1fea8414212db207136fee1d04e10b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 16:14:44 2012 -0700

    basic stash implementation: ls cd pwd. The run, topez and instance commands work with node paths

commit aa0010096f0c8d8fb691051a7d2570ebf6a75d59
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 10:57:09 2012 -0700

    a bit of cleanup

commit b048a96b6bb615c7c964ee3f3a4dd490c9e6e636
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 09:04:54 2012 -0700

    avoid asNative on class proxies during set class

commit 7f38fe76c2218f8b86a5bb143c31f30a3eb942ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 26 00:26:47 2012 -0700

    reduce GCI round trips by including literals (String, Symbol, Boolean, SmallInteger and Undefined) in the gemstone header. Also turn off STON pretty printing so the size of the payloads is reduced ...

commit 2ee167055e038b825217eb52f33c662e67b42b51
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 23:19:11 2012 -0700

    improve inspector display

commit d146f87b525308158291d1ba3da067349e8c90ea
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 22:51:44 2012 -0700

    checkpoint ... context inspector finally functional

commit 5e0c3d0f010a4e201c8cf6db7fe088a87d77f148
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 22:13:03 2012 -0700

    checkpoint

commit 91318bb48cf65374fc86e493d7f42aa46623b5e0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 21:36:14 2012 -0700

    add TZFrameContextElement  for context inspector

commit 17cff8cd3b8e2346884ae26899137418a2031c0e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 16:58:51 2012 -0700

    hook up debugger and receiver inspector

commit 713c0fb70cbf993fb03704404ea8cbaac1aa532b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 16:33:59 2012 -0700

    fix up inspector interaction ... probably need to close all windows and reopen fresh after updating (event mapping changed)

commit b810542152a43b0e8d83d9f96663e0440abcb202
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 16:07:36 2012 -0700

    fix up the inspector

commit 7fbb641d07a2fa5629d7e4120b7cc809083ae05b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 14:57:32 2012 -0700

    change location of evaluator window upon open

commit e82b3296038492e225cc2f9cc8e40fae84b455c6
Author: Peter McLain <pmclain@vmware.com>
Date:   Thu Oct 25 13:59:36 2012 -0700

    Add Topez-MagLev-Core package

commit d4c4b25abe03cc8bdc4840348e65775b1a0e89cd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 00:40:31 2012 -0700

    take shot at blocking debugger (where continue returns the result), but we're not there yet ... from the perspective of the CLI ... the process clearly restarts and continues running on the gemstone side (I think) ...

commit 1282eadb258d47ca9625da14eaccb86b9b773a42
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 25 00:22:18 2012 -0700

    CMD-u (step into) and CMD-j (continue) key bindings implemented

commit e0015fff9eb7130553c9d3f184dee239003ce879
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 23:53:04 2012 -0700

    CMD-Shift-b added to trigger "class browser" hierarcy, definition and method display ... otherwise implementors/sender/references/debugger only change the code pan on selection ... inspector will do the same thing .... make sure that the setClass: is honored correctly sooner or later

commit feb2df974d2f4f58a64226473665c97749852d94
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 22:34:31 2012 -0700

    update selection index on Cmd-t (step over) in debugger .... just code will be updated for speed ...

commit ef04da9ea3adada919cf56dc7184468b29ebb87e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 21:38:45 2012 -0700

    straighten out selection hiccup

commit b88474d4863527545213280c7124e0961f4853f9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 21:08:40 2012 -0700

    major method refactoring for the edit* methods ... need to have direct access to force selection of an item for debugger

commit 1e99321d2a6ec866f3bc79e329161a2b2993b619
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 19:00:02 2012 -0700

    define the debugger key strokes and start implementation with CMD-t step over ... functional, but need to work on window updating logic

commit 2ed75e82e43788c12fc663059c14b9c4f5fcd2b9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 17:13:03 2012 -0700

    figure out key bindings for debugger:
      CMD-t step over
      CMD-u step into
      CMD-j continue
      CMD-k set breakpoint
      CMD-K clear breakpoint
    
    document keyboard mappings for in TZSmalltalkEditor class comment ... need to identify the list keyboard mappings

commit fd939322e2e42adfea0a98754637b7d5e1c7b653
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 16:44:51 2012 -0700

    hook up selection range for debugger text

commit fc32a15e03a1964fae3cf99693485fde3cee04b5
Merge: 1af8c2d ce92b88
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 14:44:03 2012 -0700

    Merge branch 'debugger' of https://github.com/dalehenrich/topez into debugger

commit ce92b881cd2a7e0deac05a280efbb2bb3e6bb86d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 14:43:41 2012 -0700

    link to recent screenshot

commit c00b534a3b63528909e50873589d942f1523e5f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 14:40:56 2012 -0700

    add GLASS version info

commit 1af8c2d5f57e865b453a5b34f51b694e8caca039
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 12:22:12 2012 -0700

    CMD-b keystroke mapping in lists

commit b67d2c2166939af4d854b2bdee1024c28f9858a0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 12:07:37 2012 -0700

    monkey with offsets and get back to correctly display gemstone stack

commit 6d287e6c643c6ff74ec14304336822fca179efe2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 11:08:45 2012 -0700

    screenshot of gemstone editor

commit dabed0d804c4ead07bd0881a6a42312453fa3711
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 09:00:06 2012 -0700

    another session description

commit 8248cb98571dd7d4773215ec3be0124f0d82f784
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 08:58:18 2012 -0700

    start calculation selection range for frameMethods

commit 5f6a61b0b0c94b0649b3c08726522ceb2a950ea7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 07:40:07 2012 -0700

    hacks for executed code shout highlighting

commit ca3be0d164373be6d81e699856ecaea6b2596f84
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 01:03:05 2012 -0700

    hooked up clicks and cmd keys to debugger window

commit 0fed498a7eafa1a8491633352124c06da256015a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 24 00:25:22 2012 -0700

    fine tune stack frame implementation

commit 27e181a7f240e3ad0055d3f39d72c73ff0b8d66b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 23:56:31 2012 -0700

    have need for FrameMethod

commit d1898ff896c48453cc7a0d8ff77932f142f1314b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 23:51:11 2012 -0700

    stack displayed in debugger list

commit 77a313f192d7c3402903c49cc34f3b9ceccf8710
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 23:37:09 2012 -0700

    stack printing correctly via where

commit b60d35ea2bd89159eca2c64e68c07393ac4c3c86
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 21:53:00 2012 -0700

    TZStackFrameElement used in stack ... finally:) ... still more work to do

commit eef4853d9a1a6ebc3a5bf8684ed1117cbe10c831
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 20:38:17 2012 -0700

    Cmd-p used for inspecting strings ... handling the Executed Code method for GemStone

commit a26c88d9646df488834be57428e2d7e2adee0ad9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 18:34:20 2012 -0700

    test monkey business ...

commit e36fa6b7adff9957ceb1d111f82f08c6112a7620
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 17:24:50 2012 -0700

    stash gsprocess (context) in the instance slot so I can get a peek at the stack  ... work on creating the stack frame object

commit 4152081756a35a35c0a3338cbcdf2d7a7f513add
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 16:40:50 2012 -0700

    don't bother printing result of instance command...

commit 172d9393281bdf03e5a6348ed1ac3537762400b4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 16:36:38 2012 -0700

    directly edit the instance when using instance command (like inpsect)

commit 23a3f0fab148849a397ebcbc4c90057b8584226b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 16:27:10 2012 -0700

    all but one test (expected for now) green

commit 6eaafc3f6d97bf20675ac778d107d35e244ed99b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 15:43:42 2012 -0700

    converting GemStone to use TZStackFrameElement

commit b45164c01e73102ce87fa7874cb3302f781f3bb0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 15:42:10 2012 -0700

    tweaks

commit db479adb89f71c9b555d0184a9c684b52f369016
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 15:39:43 2012 -0700

    add some error handling (ignoring) for the StonWriter ... should surf over access errors

commit 38339df4b71867443e1296587e1005d64f94e2d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 14:42:29 2012 -0700

    stack frame element accessors

commit 30c0741da4865417e39daffdda28e955a03e4972
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 10:25:40 2012 -0700

    TZEngine is now a session singleton ... each session has it's own instance ... cache is not persistent, so we have to think about running out of memory

commit aab578a3b64a89a30d83afe4001f1418a513d903
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 09:57:12 2012 -0700

    fix gemstone referencesTo: ... again

commit 44ecb3722d3e6924b76665693e1e1c53f508d34b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 09:38:48 2012 -0700

    conversion of ClassElement to use factory (for recording instances) is complete

commit b194bca55fc8c138fca7717dc93c2319297ffd78
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 08:18:50 2012 -0700

    green tests

commit 913ff4f9bd8f67f02bb011b11f163d5f186bd545
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 08:04:03 2012 -0700

    unnecessary setting of some instance variables

commit cc94354e5d5b202fce96e74abdd2a8c327c0f5ee
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 07:48:20 2012 -0700

    handle classFactory for ClassElement and record all TzElement instances created in elementCache

commit b9bf5074cb800d8d5873deb43d59ac50e5e3b416
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 07:31:11 2012 -0700

    preparing to cache TZElement instances for GemStone to avoid GC issues ... resolving this issue is why I converted to a instance-side TZEngine implementation

commit 5ba80021cf2af9f6e8496409655b146a815c1888
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 06:13:06 2012 -0700

    green tests

commit f3015253c851fec5d988b90b17333bead4b96b7e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 00:35:42 2012 -0700

    checkpoint ... all but two tests green

commit 86eaa6bcbba4db03256148aa37fa41efda4b77cf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 23 00:29:22 2012 -0700

    push isMeta up the hierarchy

commit fbb4ff4ecd2b82e2722292df7bcc8c8e40886a91
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 23:59:29 2012 -0700

    fix method template handling

commit 2f8a72af27cecbbf6d9675c19b1a72f124678a10
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 23:56:34 2012 -0700

    checkpoint ... native proxy class handling made consistent with GemStone handling

commit 5234984ffcb30260ac636f37c62b0eb7d15eca2e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 22:27:09 2012 -0700

    use #name  instead of #className

commit 804fc7eafc14b1af1b3b1d9809ff12190daacaaa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 21:19:35 2012 -0700

    complete conversion to use TZEngine singleton

commit 9ee29f4fdeea16a4edd427b4d921152b531beeda
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 20:50:29 2012 -0700

    fix inspector printing

commit 6b112da2e053842eada271485c7d711114b81143
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 20:36:02 2012 -0700

    revert a change from earlier

commit d59eae3c23f1b2388a8c19c535585539c2602b16
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 20:24:07 2012 -0700

    fix inClass problem

commit 3814d5d9cb5dfd289b742f0932d609863b5f7beb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 20:08:57 2012 -0700

    checkpoint ... bring up debugger on error ... clean up behavior for GemStone

commit cebfd0f196915db3cd5a852876a742530280d346
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 15:40:02 2012 -0700

    switch to a singleton for TZEngine

commit e1eb69114f0dde028ba6c151789447c7dd30f2e7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 15:28:55 2012 -0700

    correct copy/paste from class to instance and vice versa logic

commit ab668431bb6f513fed838165f0f1ba07db939a9b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 14:09:02 2012 -0700

    improve CMD-o implementation, allow pasting (CMD-v) of methods into instance/class selectors panes thus forcing isMeta to match (can move class-side methods to instance and vice versa)

commit 75c780a33318c0d1cf8ddee53ed9afbc23d10d2d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 13:40:14 2012 -0700

    checkpoint

commit c599860cde190a32997b5e091e0b1a6828fd47cf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 12:17:46 2012 -0700

    performance tweak and fix initialization problems for gemstone

commit 67cddd8d97adfc7835327c47b791702332367824
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 12:15:12 2012 -0700

    assorted tweaks

commit 752a7cceea9c68644667284ecfe8579a1f4d3038
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 10:38:47 2012 -0700

    adjust indent for instance elements ... offset for topez windows...

commit bb4daec0c395085b3e3e08c546aabcb8c57c335b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 22 08:19:45 2012 -0700

    usability tweaks while working on debugger

commit 782241d22de5f01b4deafd1a3475e8362b18b5d7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 21 20:59:36 2012 -0700

    debugger checkpoint ... make room for reciever window ... open receiver window on click in debugger

commit 3f1a55c0cb6aff45a1377bb4e02954ea0dd0cfbf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 21 16:37:43 2012 -0700

    getting started on initial implementation of debugger

commit b9085a97878c5a9db54d535bfb5599731d405344
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 21 12:53:58 2012 -0700

    tweaks and tests for the inspector

commit 803715968be93dae12b94a6e019d41c1fa76aed7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 21 11:48:04 2012 -0700

    remove unneeded method

commit 7150d9267b0569927d0d277dc17c7f998bc09f0b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 21 11:46:09 2012 -0700

    fix problem with referencesTo: and improve the window listing code

commit 5f78dca0fbc368f9f9b2291b8fe8319c4eec0a56
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 20 22:17:38 2012 -0700

    bugfixes for gemstone `edit instance`

commit 1ce3c1c1da44c4a47e18ac5750c10da5d52c2f59
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 20 16:19:25 2012 -0700

    checkpoint ... working on instanceElement logic for GemStone

commit 92afb50e9f2e31676bcd64de58ee96d03e6815f2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 20 09:23:59 2012 -0700

    checkpoint

commit c750c37624d1a3e43d99531a987313ffa6eb7a4e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 20 08:17:08 2012 -0700

    checkpoint ... green tests

commit f2d855f059e55cf9c4d07d94f596f06c37a758fd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 19 17:42:55 2012 -0700

    delete the TZTopezCmd hierarchy ... not really used

commit 1ff236448c6d363b8dc4002d76da155d6d241e4a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 19 17:30:48 2012 -0700

    checkpoint ... some work on GemStone side, preparing to remove all of the command objects (more complication than needed) ...

commit 4e7b41a9de09fe51a1ff35ecc17811c52c991df3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 19 16:30:05 2012 -0700

    clickBlock for inspector

commit 962f98ec5a7aa7d187c583ef5bf973d05b65d083
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 19 16:15:26 2012 -0700

    tweaks plus add navigation to inspector

commit d618aeaa535c08fa3e7243e7bf205f14252a77d0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 19 13:52:21 2012 -0700

    inspector clickBlock

commit 5da13e1ec4e197c2c54d99e45be28a00e1d101a3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 19 13:33:44 2012 -0700

    checkpoint .. looks like I'm producing the instance elements correctly...

commit 2d1003a6e598a152f52196200b2c8d0a746ba086
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 19 08:27:38 2012 -0700

    checkpoint ... instance concept shaping up

commit 1bfad8aa7ce7cb648b9d6b285d40f822698075cc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 21:07:28 2012 -0700

    fix shadowed instance variable

commit f229eade823c916bc2cc6bb30767be5ec505de41
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 21:02:49 2012 -0700

    use standard SHOUT for Pharo

commit af6e68117beea6fd152595540a90e6c3f3c65c13
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 20:52:49 2012 -0700

    create instance element the centerpiece of the 'inspector'

commit 38de31dafa960da344d3793dcc66df0c00cbeafc
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 20:09:20 2012 -0700

    probing inspector implementation

commit 5005fe4ecd8d5e255cd772d06fe66fea28a7536c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 19:45:04 2012 -0700

    format the methods

commit 2836061327f613af2113d43ba2b6441a59aa13f2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 19:34:35 2012 -0700

    green tests

commit d80bf67e5b517ea393e3d5d9eec9a6d6f910ebc3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 17:08:53 2012 -0700

    set evaluator for gs topez

commit 1a4753175f5ea8e7d706532152360c235aa773a2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 16:57:21 2012 -0700

    have to have out own variants of Shout parser to be able to do remote shout highlighting ...

commit 50ee42a06e0ed813ee91e6b079190579d4af530a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 15:36:18 2012 -0700

    add dash of color to all windows to associate with Native or GemStone

commit 24e51500cea625a5cf80b213c626a89023bb1d68
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 14:26:55 2012 -0700

    all tests green

commit 63ed7fc414c90b6bc79252f7cb748059056a6736
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 14:12:03 2012 -0700

    gemstone tests running green

commit 207c1c102967272e0b3734c6ad8e8aa072e10f3e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 12:04:41 2012 -0700

    checkpoint ... gemstone tests ...

commit d66e82baf3d9109e51dc3f8f19b1ecad44fc3bea
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 11:51:38 2012 -0700

    checkpoint ... gemstone tests

commit ad26069dc1d57d63b78e55e0fcdf898a60ad95bf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 11:42:15 2012 -0700

    checkpoint ... working on getting GemStone tests to pass

commit 55e6837671153cc830b918b9cecc808a5efb5070
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 10:14:39 2012 -0700

    get TZMessageElement sort order straightened out

commit 491e1200d7633bb9bbac13be00f97fbe9b1ca257
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 07:59:25 2012 -0700

    checkpoint ... working on getting tests to pass for GemStone

commit ccd466993caf70a64feff92e6f0e369fc2b71208
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 18 07:38:17 2012 -0700

    expand test cases to cover finding references to class and classVar with same name

commit ed6dc70ec9fa24ce66f0c3e768233a34046875ab
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 17 21:42:05 2012 -0700

    checkpoint ... implementing hierarchyOf, sendersOf, implementorsOf, and referencesTo for GemStone

commit 5af81a81d6067c251e5d04cc7baa8fd8b0483455
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 17 19:43:28 2012 -0700

    native tests green

commit 42443cc9d4e3292109c55b943cdedba684962cb7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 17 15:20:12 2012 -0700

    TZNativeTopezApiTests passing

commit 193c7051a232564691238ee48f3f8b6d73c5489d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 17 09:55:27 2012 -0700

    new window for each senders/implementors invocation

commit 15802c4388bdfb6d55bb62bbbc06adb8cef7adf0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 17 07:46:40 2012 -0700

    Ctrl-c now copies the object to the object clipboard and the label text is copied to the text clipboard

commit 27d6d534db1905da08b2b894c56468d4ed0625da
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 20:57:08 2012 -0700

    all tests except the new ones that still need to be written for both pharo and gemstone

commit 4ba951b7f08481f2de25023fcfb79153fdf4f9d7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 20:49:37 2012 -0700

    rename gemstone refs to proxy* in TZElement hierarchy

commit 832a6860f356412e65e0085b11f0bc8d79919c90
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 20:46:32 2012 -0700

    rename instance variables in the TZElement hierarchy to get rid of proxy in name ... too confusing ... native tests are now passing (except the new ones)

commit 4f82689c370ab25627c0f483708e270ae7da74d1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 18:53:09 2012 -0700

    checkpoint for ctrl-o work ... using emptyTemplate ... final touch is to hook up with clickBlock

commit 215a4965829861f91f6d6154af0adfa66aad301a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 18:31:27 2012 -0700

    spawned window uses existing window extent

commit c2a4247e61a9db5a99380667111a14d1ca3b0fdf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 17:23:28 2012 -0700

    checkpoint ... adding Ctrl-o action ... need to switch out parentElement and use codeTemplateElement ...

commit 6b071ab2220d0cedf5c6621bb21172c38682a47c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 16:19:11 2012 -0700

    Ctrl- x, c, v, n, m, N commands implemented.
    
      Ctrl x - delete element (class or method)
      Ctrl c - copy method into buffer
      Ctrl v - paste method onto class (add method to class)
      Ctrl N - referencesTo: class
      Ctrl m - implementors
      Ctrl n - senders

commit 619698b108f876c631d2207dd6381e3b5dd2dd7b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 11:20:31 2012 -0700

    get Cmd-Shift-c (spawnWindow) and Cmd-Shift-l (select topez windows) shortcuts working on Linux ... different mechanism than MAC ... oh the horrors!

commit b814c66dcf04369b4a644e2e044f12d932ad4205
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 16 04:51:46 2012 -0700

    don't fight the MAC by trying to enable the CTL keys...
    
    use #FullMatching again....
    switch to CMD-SHIFT-C and CMD-SHIFT-X for the spawn and select window commands

commit efab89c70c4ca72b8975a28d7de71310af89609c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 21:28:42 2012 -0700

    `list references` and `edit references` implemented ...
    
    keyboard mapping <Shift-Cmd-n> honored as well

commit 6a1359f7cb7d2886aa5aad962d2c23ea54db5af8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 20:23:46 2012 -0700

    fix label for messages...

commit ceb892b8593f15f6e9b9d6a8b6b1a06e5b035a39
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 19:00:03 2012 -0700

    fine tune implementors and senders

commit 27e7328d8d487d8eca35643e1bbf10bc405862f8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 17:33:27 2012 -0700

    fix link to new screenshot

commit 017b5e223cb54304cbaa51207a79fa39ca736b69
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 17:27:37 2012 -0700

    `list hierarchy` and `edit hierarchy` commands added
    
    adjust window layout
    replace superclass and subclass windows with a single hierarchy window in clickblock logic

commit 313ff0ff041dad4b58ded27fa6fa19aa7e6b8ebd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 16:02:21 2012 -0700

    new screenshot

commit b50cdec367e93cd1bf19b1e8db1c5c128efd5a78
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 15:21:15 2012 -0700

    implementation of `edit implementors` and `edit senders` plus keymapping

commit 8d0025990fa82d80c31de35f520b1e012003475f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 14:37:50 2012 -0700

    initial implementation of `list implementors` and `list senders`

commit 139ede938763131bb7570275b2cc44875a10a968
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 15 08:45:27 2012 -0700

    add TZMessageElement ... used to represent a message in lists ... sort by class hierarchy ...

commit 84ff75a76f9ce9b2bc6be011860270ba53271349
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 20:34:36 2012 -0700

    checkpoint ... keymapping for topez

commit f8656afa4923aa0f118e82c56942fc5f0f7d1939
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 20:29:27 2012 -0700

    green tests

commit 4a85769a24ceebea728b684bf7d45631403dcc6d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 17:16:25 2012 -0700

    green tests

commit a2c547272bed5dfa6fb457c03a6bcea8e23bf2c9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 16:38:53 2012 -0700

    finish up `edit class`

commit 590d624046a31101fbacd9b3e7e62378e3c47222
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 12:40:04 2012 -0700

    working on `edit class` and `find class` commands

commit cb99d79c4a7da69a88daf8a03ad6b6fbfc9afd13
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 11:11:58 2012 -0700

    allow for native/gs-specific scripts and centralize window extents

commit a586df72f688096ec56d0a2cdbdec20ebe884047
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 10:33:33 2012 -0700

    class names and selectors left as Symbols
    
    Since String variants may not be persisted and are subject to gc ... avoid having to manage gci references as long as possible:)

commit 8c460d96a8858f490c2ea2269e2e6efa9ff8ed36
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 10:24:35 2012 -0700

    green tests

commit 75147844353977e2e474ed64501f1a1c4084065c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 09:26:12 2012 -0700

    `logout` and `close` commands added. address class name gc issue for gemstone.

commit 6f919600cdeb00b6f2a20e6132e36ef880d5244e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 14 08:35:31 2012 -0700

    checkpoint ... accept method work for GemStone

commit f38929bb78b5e2d71d2d0848c34fe7f4a33137c1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 19:02:02 2012 -0700

    tweaks for GemStone

commit 71d4b3ed255508f286e606d217bf1c0f20fd1b0f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 18:50:40 2012 -0700

    clean up logging messages

commit 0fd392f1ce60a4c5b4a84b116b5bac5cdb4a52cf
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 18:47:36 2012 -0700

    fix selectors method ... for gs

commit b17129a9ace407c0d49a09315d1dc3fa143977dd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 18:46:00 2012 -0700

    fix another tiny buglet

commit 7798cff2eb1dd463a5be39984ba21960dbf6506a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 18:39:57 2012 -0700

    ...fix a bug that slipped through the net

commit ffb4d9a561640a5af416326336ea0f03b4c1f7b4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 18:36:49 2012 -0700

    `expand` and `collapse` commands added ... fix expand bug

commit 07c6b9d94fe3dcaea3fcaa7347129e429ece087e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 17:28:20 2012 -0700

    fix evaluator close logic

commit 586ad24fa5e505beb316224bb3a4e9a31a29e93a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 17:15:33 2012 -0700

    green tests

commit a9500e9947af25d2072034b34bea3f2872e59bad
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 17:12:18 2012 -0700

    full set of `edit` tests ...

commit 298a6e5d1478422185e683fcea6a1ca2a94a3bac
Merge: 0dcda06 103b314
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 12:13:16 2012 -0700

    Merge branch 'master' of https://github.com/dalehenrich/topez

commit 0dcda06c7227809ad37352283f93ffe0674ca597
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 12:12:24 2012 -0700

    checkpoint ... completed test for `list` commands ... green tests

commit bcb62e014cec6a0de9a63de4e4b323bd2d80c35e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 10:39:34 2012 -0700

    finished tests for setCmds

commit 103b314ac29d7e62c157f0e3f00ef18a99745275
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 09:39:48 2012 -0700

    add screenshot

commit 5c6447bd025b2ad7cb724e0c64673f393b2374cb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 09:29:05 2012 -0700

    add screenshot

commit d68fdf09fe338548c3c4fd7f77d3ae5b4e2750b2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 09:11:08 2012 -0700

    checkpoint ... coverage for TZEvaluator class>>runCmds and started on TZEvaluator class>statusCmds

commit 4e71d94630d311623e1e94d81b04a479028d975a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 13 08:17:50 2012 -0700

    refactoring in preparation for a test-writing blitz

commit b84e207d65e535f08806f99017f55eee7d3ae160
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 20:58:32 2012 -0700

    rename classes to match implementation class that is being tested

commit cc80e79a1cbc5f8f69a17e92c0b926e1b020edcb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 20:51:48 2012 -0700

    implement  command ... list tests in project

commit 580337c0b02748df6e45ca9997de8725f9ec787e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 20:18:47 2012 -0700

    `find class` command implemented and used in `edit class`

commit db83c52cf22b63b0bf8c0927ed21ff2edd2cca1c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 19:50:49 2012 -0700

    `edit class` does a search for classes ...

commit 9906d2edd77510793eba2ff35a03d792a3ea60ed
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 17:56:04 2012 -0700

     variant ... preparing for setClass: to do a find class, if the named class not found ... formatting methods on accept ...

commit 6f06f1bfa0bcb64f29640d08afc194250d6e3373
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 16:02:28 2012 -0700

    green tests

commit 4aa89c4e1932f0873aedd4357c5863ecfac555c9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 16:00:45 2012 -0700

    `edit class` command and accept method

commit 0d2d60e416b221b79d3ac937264e06e8316e4650
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 11:51:32 2012 -0700

    add window closing logic so that closed windows are cleaned up along with sessions

commit 9db6b9a4ed0aa901d00d8d73318003d306bfcf81
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 12 11:13:46 2012 -0700

    create fixed/named locations for windows

commit 44f05fe9d6ee27445c5b3801a7bbe355fddc8b7c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 20:22:16 2012 -0700

    green tests

commit 89c01e066d4abc8a0fe9ca0107626ca7ff75275f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 20:13:39 2012 -0700

    class>>selector label for code windows ...

commit d87d902c5bd0c40acdf1b5f2051880b89e51daa1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 19:35:29 2012 -0700

    adjust labeling scheme

commit 1a13416ee5983dc9e096f49584c82d7aa257b6ea
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 19:24:20 2012 -0700

    fine tune

commit 9fcf76556464adaaebfacecda0405192d83192d9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 17:17:09 2012 -0700

    a bit of cleanup and add CTRL-s ... spawn window

commit 0d7ce3d325450910bbbc1b0950c17e65c26fe259
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 16:28:17 2012 -0700

    green tests

commit ef14e31ae6d67cf580f220a05ac8b05aa4e4a78c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 16:27:44 2012 -0700

    gemstone working again

commit 08714f028f453f8babe34b3fcd1870734f2fe2ff
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 15:55:04 2012 -0700

    checkpoint ... share with server

commit 927be5361b42da530359b95be1c4c412dcfd412f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 15:18:46 2012 -0700

    checkpoint ... working on getting recent additions working in GemStone (hierarchy, sublcasses, history, etc.)

commit af37baa08dcfe787c68668b847fa4ca0a3704f71
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 12:09:59 2012 -0700

    implement history and rename classHierarchy to superclass

commit 2b69e2ff18c945370bfea4c8d0df69a719680b87
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 11 08:20:29 2012 -0700

    add hierarcy and subclasses commands (edit and list varieties)

commit a7c201586029359a272cecf6f3888aa28580b162
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 10 19:00:56 2012 -0700

    get initial window sizing straightened out clean up some initial bugs

commit e8bf9e4203edd734d0768455873e53b6a6c07c67
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 10 18:08:24 2012 -0700

    input command created and notion of scripts add ... getting close to usable
    
    multi-line evalute (making copy/paste in evaluator window feasible)
    add input command for executing topez scripts
    run command can execute named run scripts
    topez command can execute named topez scripts
    edit run/input/topez scripts
    list scripts

commit 19a09af8afd2d245857e5cd1476a8750a2b6134c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 10 12:57:57 2012 -0700

    refactoring so I can add a filter to the listEditor and add `topez` command so that I can define the listEditor filter from within topez

commit dcf74a15a53cab101e418f24ee19c14c3e82f20b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 10 08:59:56 2012 -0700

    green tests

commit f7e10242d1dee120209bd6ac90816d17f3e7e374
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 10 08:57:03 2012 -0700

    `edit prclasses` is working for GemStone

commit 89dfe93a2b7b034614828d79b5882b89cc8ae140
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 9 21:31:48 2012 -0700

    mac hackery to get a semblance of "correct" behavior on the mac ...
    
    1. CTRL key only triggered on keyUp event
    2. the character value is offset (CTRL-x shows up as CTRL-g)
    
    ... other than that the CTRL stuff is finally working

commit 4a04e415fe664fbc721fd4d0dfa24b5044cee11c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 9 16:59:12 2012 -0700

    green tests

commit 9f99834f47282f8a91271b5af847db6c2b1845ac
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 9 16:53:44 2012 -0700

    debugging pharo-side after giving more responsibility to the TZElement classes

commit fdbe4ce5d1b20571a9c27981a2d25ef6a1852a37
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 9 15:10:15 2012 -0700

    implement ctl-x (switch window)

commit 9edfae0f174ac0fc9b28dbece1f1b368da04636d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 9 12:56:23 2012 -0700

    <escape> key puts focus on evaluator window from any of the other windows...

commit 55dc61f529a1a6aa058ce918ceb145cd8fb781fb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 9 09:24:16 2012 -0700

    commit

commit e4de6561fbedc82d358ff488993bac22f306c384
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 19:57:49 2012 -0700

    single click in selector pane changes code pane

commit 34dbf20fcecdf410a3ada416ee835d6ef9589789
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 19:41:10 2012 -0700

    theoretically, GemStone and Pharo clients can be independently loaded ... not tested, yet:)

commit 471c2599f001b7b25de6360f63ecc2edd1925522
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 19:29:28 2012 -0700

    correct incorrectly exported class definition

commit d0805f4f536e2eddff25e41576b7cec3ef6b2849
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 19:19:35 2012 -0700

    refactor tests packages: split into common, pharo, and gemstone ... preparation to make GemStone and Pharo clients independently loadable

commit 219adb7d10a108226bc6fec00cb15e89c7876612
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 18:48:36 2012 -0700

    class selectors support and green tests

commit 615c518cf8fee823e4a91f9ab49679dd5b3ee153
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 16:59:10 2012 -0700

    begin job of making the pharo client and gemstone clients independently loadable ... at the point where I need to split up tests ... methinks

commit cf0df6bdace824d5c3e7108860cf8b0b62bd7e49
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 16:33:51 2012 -0700

    green tests

commit 48e2f2d5a346e42e8112c38312596720812eeeb0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 14:52:33 2012 -0700

    green tests

commit 8ea9a72efecd49980638ecc5e9ce1dcedcf6bf8c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 14:51:33 2012 -0700

    reconstruct ClassBrowser from deconstructed elements

commit dc79f0bf4769de563b2e13b229d4f154b9cc54e0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 08:08:55 2012 -0700

    improve pure list handling

commit c1ce69a16a974d4ebe018ed36e3efc1e76c718fa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 8 07:56:14 2012 -0700

    hook up pieces of the deconstructed browser

commit ef1ccfb80fd6b59765cae5f2b442c97556153282
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 21:24:37 2012 -0700

    add TZClassHierarchyElement to make it possible to do interesting things when list elements are selected

commit 67fe325c02e2e3d811ac835bffe35a8b0709eda8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 19:35:16 2012 -0700

    green tests

commit 52f289323c4433c4e2754e009bae858727f41d6a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 19:32:38 2012 -0700

    arrange for building indented and emphasized class list for project classes ... native only at the moment

commit 7867cef99d8639de014db3ec841ec463c9c3ef7c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 18:32:15 2012 -0700

    prclasses support

commit 1537e9f4dcf6e97b93ae8324cf179a01203fba99
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 17:36:48 2012 -0700

    green tests

commit 35c67d3e5d018e05f9cb9b8a5afeb97e67ff789f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 17:28:34 2012 -0700

    start on prclasses

commit bd90868d99386c61bca659856beb88a0dfb212e6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 16:30:12 2012 -0700

    a bit o' cleanup

commit 571d4bb941541c9a5e5e5e6dfdabf53e33d8cf55
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 16:18:30 2012 -0700

    implement

commit edcce4c83d9c9b527e652da64ddfd275200fba1a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 14:36:18 2012 -0700

    green tests

commit fcd836bb09589edf75d2c6ff1cb6bd76a9cd2fc2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 14:31:48 2012 -0700

    switching context with `edit` command sets current class ...

commit acadb3eeb3d21d2f7dc360366b36f3a85ee219e9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Oct 7 13:03:11 2012 -0700

    single system window shared for both list and code ... making possible emacs-like window buffers

commit c4cdabf2efef06a9c01172c6645c882fda3515f2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 6 14:13:11 2012 -0700

    sort selectors enable up/down arrow keys

commit 83052da00160fcd48f1b2d6594da381f00c70c21
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 6 13:49:36 2012 -0700

    hook up list editor

commit 8d5423e3e0f3e2005b77d1636842217f008101a6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 6 12:19:10 2012 -0700

    implement `list selectors` and `list cselectors`

commit 986a8e54b06673cc2be0c50776257dfbe13c62e0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 6 10:46:04 2012 -0700

    eliminate trailing cr on all proxy printStrings

commit 485978c289413b02f0cd5237d17193e4daacf3ec
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Oct 6 05:29:59 2012 -0700

    implement window/buffer switching for `edit` command

commit 6905f78eb1d885b033ae6a8990f63956e342df96
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 20:55:51 2012 -0700

    implement `list method:` and `list classmethod:` commands ... get variants too, add TZNativeEvaluator tests

commit c2bd9111150390c2d41efae84f89cbc9b0b82345
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 17:24:32 2012 -0700

    checkpoint ... list method source, class definition, etc. added in preparation for step

commit 1e1667547d91a61504afb31b9a93aed56a728d4e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 15:54:03 2012 -0700

    checkpoint ... green tests

commit 6c21c1af5a092cbbb252af6901fceda6495ff64d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 15:51:25 2012 -0700

    checkpoint ... more prep work for step ...

commit 9e795f65fc7ecdefcb116c63266536d79dd9b28c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 14:32:10 2012 -0700

    checkpoint ... preparing for step implementation

commit af5747fd10b270652c5246b498a2b9279852a4d0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 14:02:44 2012 -0700

    checkpoint ... progress with native topez ... run and where are working ...

commit bfbb41c79af1f793cb1c788c0234dabff3f42f51
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 08:41:19 2012 -0700

    checkpoint ... begin work on TZNativeEvaluator

commit 72fdcd8a50b6aae076e4e5f7d95c503b81d0e8c2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 08:17:51 2012 -0700

    tests green after refactoring

commit b072ee48f957aae999d73f2792451e531ecb18ad
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 08:03:31 2012 -0700

    native header work

commit 799dadfccdde00e6c120a37fa78e5398713b4fc3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 07:54:22 2012 -0700

    more reorganization

commit a4ba255160f7c52a7336b45ec8142aef0f0bab30
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 07:52:30 2012 -0700

    new stuff

commit 3921cc5130f94e25db580b29134916eb2a9033c8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Oct 5 07:51:51 2012 -0700

    start work on native topez

commit a9faa6382a2643701685f5cf01442481b0aaed2e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 20:19:55 2012 -0700

    `set class`, `edit class`, `edit selectors` commands implemented ... list editor and string editor

commit 04ea1b5d76927431bb7836cdf6175fba8c12ab08
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 17:12:12 2012 -0700

    initial implementation of frame command

commit 5da8b2b6561c976093ce69585d296f2f6656b98a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 16:42:10 2012 -0700

    enable SHOUT styling for TopazEditor

commit fb1f4f7150c5885dbe223b35837051c83e770cb0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 16:33:09 2012 -0700

    fix tests after changing string handling

commit cf5b17e5b60e21438a88cf150636aa5ef474062e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 16:28:51 2012 -0700

    Improve frame display a bit and improve String handling

commit e26148fd588d4edd3e1106533e265564fbd8a9ca
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 16:18:17 2012 -0700

    render list method using SHout

commit 38cfb5b3913c897599a6fb3f88205e3eae5bc12c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 15:30:23 2012 -0700

    convert to using #renderText:on:indent: instead of print... add Text emphasis to all command output...

commit 117f34e80638087889454ae9286ecc093a8ed79f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 08:36:52 2012 -0700

    represent st

commit 15cfc16c2e31919f540847634f86d5ba6893e61c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 08:31:49 2012 -0700

    checkpoint ...starting to use renderText ... some open issues still

commit 597471620a8e6c69e5316b458472802b2e4153bb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 07:49:54 2012 -0700

    toy with Text emphasis

commit 82f60a59eae3c740dafa8a6582d370c22ca79217
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Oct 4 07:26:08 2012 -0700

    use Text in TopezEvaluator ... will be useful for #render:on:indent:

commit e0f49ee6b28eedd481a7ba7620318b46a888f3a5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 3 18:30:27 2012 -0700

    attempt to add styled text to TopezEvaluator
    
    start work on edit command which brings up a workspace on the selected string ... method or class presumably

commit e05c87e4f5db3b04b1ead730fadd0983a5168f7e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 3 16:33:56 2012 -0700

    rename Topez-Core to Topez-Server-Core, Topez-Tests to Topez-Server-Tests, TopezClient-Core to Topez-Client-Core, TopezClient-Tests to Topez-Client-Tests and Topez-CommonTests to Topez-Common-Tests

commit 994e13c0585f649c4cc6a57bc3a0eb8bf6ec0180
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 3 16:32:15 2012 -0700

    rename TopezClient-Core to Topez-Client-Core, TopezClient-Tests to Topez-Client-Tests and Topez-CommonTests to Topez-Common-Tests

commit 1def67a6701b12d88a4af1f1a63acded9de30857
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 3 16:26:45 2012 -0700

    rename from Topez-Core to Topez-Server-Core and Topez-Tests to Topez-Server-Tests

commit 667b595a136617a8bdc90a2d319c383e175050e0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 3 16:15:06 2012 -0700

    rename Topez-STON to Topez-Common-Core, Topez-STONTests to Topez-CommonTests, and Topez-Pharo-STON to Topez-Pharo-Common

commit 094ce5ec9f0eb5fe975454861d40af4235835848
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Oct 3 16:13:50 2012 -0700

    rename Topez-STON to Topez-Common-Core, Topez-STONTests to Topez-CommonTests, and Topez-Pharo-STON to Topez-Pharo-Common

commit da68cfcb3793162f555ac9fd7b6b6d7e41d56d6e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 2 17:27:43 2012 -0700

    tidying up

commit 826690b6a69a4ca4d7f6a04c718bbb38cb95764a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 2 11:16:24 2012 -0700

    checkpoint ... more progress on using proxy messages

commit d497f14d27c2b3e22eea30641c05480e925d12c4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 2 10:24:18 2012 -0700

    remove methods that were implementing proxy state access that should be handled by MNU logic instead

commit 6e4b827976ace6852601695378bec4e6eddeeb88
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 2 09:49:14 2012 -0700

    checkpoint ... preparation for proxy message handling

commit b62fbd78a2df9e64c14a5c3f3ad7bcda9f4822d9
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 2 08:21:35 2012 -0700

    fixed currentFrame/currentFrameIndex confusion and started playing with proxy methods

commit 9c207e66d0432a4c69bd51f42ceaacc0d0075f64
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Tue Oct 2 08:19:48 2012 -0700

    fixed currentFrame/currentFrameIndex confusion & added evaluator tests

commit ccc2f8a13b12899727a3f69099dd6191d9e0bd7b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 1 21:34:07 2012 -0700

    initial implementation of  command

commit c9d7e221612312900bdb05e34dda3e3a89d56ef3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 1 20:51:41 2012 -0700

    sub commands for step and exit command

commit f55d21c34f1862f4ae423b5bfa8388054a0038f1
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 1 20:18:06 2012 -0700

    implement where command

commit c719c0a1abfd731c9e781b91d2c0c14df2fd9ef0
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 1 18:48:18 2012 -0700

    fill out printBlock protocol and add printBlock tests

commit 49c8c137428fe3bf51b6c8b5d64caf879cac9113
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Mon Oct 1 17:06:24 2012 -0700

    moved to className based printBlocks, eliminate need to create too many specialized proxy classes ...

commit efc628c99068b8eb63c59521745978386fd58547
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 19:06:53 2012 -0700

    implement step, up, down and get started on where

commit 367629db87c14773d03d2208d82b2b9edf5d11ab
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 18:28:51 2012 -0700

    use Dictionary for args and temps

commit eebe09e12f8d865d8e5a347c963aa0db8f55fa65
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 18:27:46 2012 -0700

    clean up printing of frame at prompt and add step command

commit 5e7a080c45099982f75ca21d00b8a02b73774412
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 17:33:39 2012 -0700

    clean up oop handling a bit

commit 8db4acffb1dac5658ac1d1284685557296137a3a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 17:23:04 2012 -0700

    checkpoint ... all tests pass again

commit 816e231a48c5e1036caf9bbbdb0aaf3119b5ca9c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 16:35:57 2012 -0700

    frame definition is starting to look good

commit e8f88faf3eae597fbc51f73ee1ecb2cb6335c156
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 15:27:20 2012 -0700

    add TZStackFrame for managing frames in debugger

commit e4d118fbbc9c062df38a8227921ab9d87ebe6117
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 14:21:57 2012 -0700

    initial stack support for error handling

commit 55387cbace466646347307f62cd67320d214da20
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 12:42:56 2012 -0700

    add topez client to Notification instances
    
    since they are the ones that will be interested in getting frame info ...
    on second thought frame info should be embedded in this object from the server-side

commit b4a0ef92c5e472d4bf85a82959abdd5035a42958
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 12:18:22 2012 -0700

    eliminate displayOptions ... custom printBlocks used instead

commit 047e4ba85b74e32e85e97081902e1fc0ab8ee5ba
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 11:47:53 2012 -0700

    introduce notion of printBlocks to replace displayOptions

commit 5ca89ddd28ecf94419d3fc478a31f856ace7fa98
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 10:28:36 2012 -0700

    do run command inline:
    
      run
      3 + 4
      %

commit 916f9edb123d59c85db76169fc7564c8c3015a8e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sun Sep 30 03:10:30 2012 -0700

    add tty emulator based on stash which was based on commandShell

commit d495260ab68504e6c4eae8a254af18434d9fc904
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Sep 29 19:22:28 2012 -0700

    checkpoint step:
    
    stepOver is working and we're getting the same frame summary information
    that topaz currently prints when a breakpoint is hit ... need to turn
    that into smalltalk code that returns a proxy object ...

commit fbc8d79626e1f5609f6ec61c8d0fb91ac3f1ea4b
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Sep 29 17:18:35 2012 -0700

    push test framework around a little

commit af882835d310de0601a278878fe9a295266273c4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Sep 29 17:10:45 2012 -0700

    successful step and handling breakpoints

commit 789c91b7ce0407d84c85a05759e0207885658879
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Sep 29 14:22:23 2012 -0700

    implement method compilation (class and instance)
    
    push around a lot of code in GciSession

commit b6708150978a1dd2abe57f326d379cbc7b07f910
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Sat Sep 29 10:52:29 2012 -0700

    checkpoint in step work ... start working through class/method definitions ... easier to construct tests

commit cd5cbcc2a0edb5dd3fd9479c8174e30c315dca11
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 19:54:25 2012 -0700

    add GCIPerformNoDebug() and gearing up for step command

commit 5f9ca1b603ae5a68c1a86b654b8ad810bbc2c183
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 18:28:07 2012 -0700

    switch to mac credentials ... fix missing method

commit fb912829a87e5daaee10293a25c5fd2c2deff4b6
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 17:07:01 2012 -0700

    implemented continueWith:replaceTopOfStackWith:, but ran into bug 42524 ... current behavior matches topaz

commit 2e4df50a193aca47bbc843687ca5899c45eebb22
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 16:16:51 2012 -0700

    no server side tests for the moment

commit 631a359af7f3d9ec1b357bf77aca347ad92dbc20
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 16:13:29 2012 -0700

    no common tests ... just server and client tests
    
    use commit on server side to get errors thrown!

commit 8f006e00ff7019e56af06d8492dd1d29f5f2942c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 15:31:09 2012 -0700

    halt/continue functional

commit 92fcd64dd88a13055e22fc72cfe228aff028c6d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 12:40:00 2012 -0700

    improve handling of native objects in proxy structure and create special object for the error

commit 4e518d8ae39c9178f53f65b6777fef4812cb16fd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 11:33:40 2012 -0700

    fix a printing issue

commit 4fdda8c52d3f1e64cb63aeea8b740f3196599d4c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 11:17:02 2012 -0700

    checkpoint

commit 396ef7beb88a0a8840100565c6cea3e5cfddd451
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 10:15:31 2012 -0700

    initial handling of error for debugger is working

commit 9ab0e204a0155587623184d6299edb7626d27fad
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 09:59:41 2012 -0700

    move method from Topez-STON to Topez-Pharo-STON

commit 0c9e37d10e0161bfc97f44a6b8fd84b272ff3061
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 08:37:29 2012 -0700

    Making progress towards topex debugger implementation ...
    
    Working on converting gci error to an appropriate proxy...

commit 109b27257824644bde1e2aa463c5fb1d4c1894dd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Fri Sep 28 07:19:15 2012 -0700

    remove cursor manipulation from session code and add support for testing on my mac

commit d2a2db423d0a41607730804bd30329f58afe0cfb
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 17:24:25 2012 -0700

    add debugger test

commit cd01d32dc6d9d4c9c0e66f8cf17981955eb73f51
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 16:31:18 2012 -0700

    placeholders for all topez commands

commit 589fc68533e2ea0074b0f60ebac4942a5b705555
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 15:50:19 2012 -0700

    add options to topez proper ...
    
    tests pass on server and client

commit 6c377bba27f2b859ca119cb4434ce4915daa9d83
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 15:37:38 2012 -0700

    restructure for common tests on server and client ... server tests all passing

commit dda896c6b044e88e7ab0cbf06437f89f79ffb487
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 15:01:58 2012 -0700

    checkpoint ... adding commit and abort commands

commit 81c32da75092d22708ec124f5f1e51a6f7136ffe
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 14:22:38 2012 -0700

    run command functional

commit c48e3f2c9a58c1678557cd169cde6254512d76c4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 11:52:29 2012 -0700

    implement run command

commit fa3e33db542ae88ede721de6d4b91471f4dbb215
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 09:34:19 2012 -0700

    fix small error

commit 3ce3acee075674c0b4b61e638fc1f11a98209746
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 07:53:36 2012 -0700

    fix bug in output format and add printing protocol for proxy objects ...  voila

commit f87037427d133616bdac17aed3fb198293ca7faa
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 07:02:47 2012 -0700

    update readme

commit e1734e66f9c954ed878c53ee72decd0dad8928e5
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 06:58:08 2012 -0700

    write out named and indexable portions of objects

commit e4bdae0185e4f88c52ad94b62cd0570bf152ee19
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 05:52:50 2012 -0700

    implement asOop for pharo

commit 562aa36b6a77604eb6a4f38ddee1bb0fb8968d43
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 05:27:45 2012 -0700

    Consolidate baseline for server and client

commit ccf80275dd258d48fbec69811f1d1f33edc80f5c
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 04:59:49 2012 -0700

    finish move of TZStonReader ... Topez-STON package loaded into client and server

commit a5ac638cddc99c4dea50da099f9a097b457671d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 04:53:19 2012 -0700

    formatting

commit 404d32ad8d469c087ad0ea8e808ccce8402e09ed
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 04:47:57 2012 -0700

    formatting

commit 97d38501fefe7ca5b1eecce576a7fe9400e00fca
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 04:39:50 2012 -0700

    update readme

commit 138df03ea6ba8f6798ed735419eba8b8d5057a8a
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Thu Sep 27 04:36:41 2012 -0700

    combined client and server package directories into a single directory

commit ccea5efb411b4f64a0a0ca7ee8006375f13919d4
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 21:35:10 2012 -0700

    add correct gemstone headers ... get level limits working ... pretty print by default, so we can read the results

commit 01b9aff700fc5a589a7116b2f8b4153fd06eb4fd
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 20:51:45 2012 -0700

    add Proxy object that carries along the meta-information needed for the objects

commit ff7b4cb6b0f3ee40491cb7311678af7ffd4249b3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 16:56:23 2012 -0700

    start working on limiting object levels ...
    
    pretty simple to find limit, but need to work out how object placeholder for level limited objects will be indicated ...

commit afa6e03b7306b5b6db6738952bdd3653964fd9e4
Merge: 6395193 3114440
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 16:36:21 2012 -0700

    Merge branch 'master' of https://github.com/dalehenrich/topez

commit 6395193f61af09ddba084e75145bea603246e69d
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 16:36:05 2012 -0700

    start gearing up for custom STON reader/writer

commit 311444074b58c7450605d548b65a11adb3888aad
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 16:01:16 2012 -0700

    tweak readme

commit bea2c04c5649d59030024c3d27c989ac1fb6151e
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 15:56:48 2012 -0700

    preparing to publish on github

commit 898b1ee542dfa7a797d5335b5f792e6a390e7bc8
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 15:45:29 2012 -0700

    remove need to use asString

commit 9f33515984dcb0e4bde34783af69b029fe7f95c3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 15:34:35 2012 -0700

    simple client/server test completed successfully ...

commit e5cd23544df28d6db582ce00ff9188c9049592f3
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 14:47:40 2012 -0700

    fix Ston repository refs

commit 42a63a04e6c55e91d0a262ab25cab2dc409b1801
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 13:56:01 2012 -0700

    strip out unused instance and class variables

commit a7c85cd83710c2c250c2c76d0fc78b4805396448
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 13:49:23 2012 -0700

    removed obviously unnecessary methods ... still successfully logging in...

commit b9669ad0de68038dd89132302b396471cf9f09a2
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 13:38:37 2012 -0700

    succesful login to a 3.1.0.2 stone

commit 579983c00f96342a13be14d7951b84868d9dc7de
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 12:03:09 2012 -0700

    session descriptions for client
    Ston dependency for client and server

commit 5813ce43e6a452a14d760468acfca89ddf9ea52f
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 11:39:27 2012 -0700

    pick up GemTools-ClientSession [ackage and some extension methods for gci

commit e2bc1f37d8c9fb444f8e9a5a0f7743952c695fa7
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 11:24:17 2012 -0700

    switch to storing both client and server code in separate package directories

commit 319459b7051abd41dbc9ee201c8d38ca3455ae48
Author: Dale Henrichs <dhenrich@vmware.com>
Date:   Wed Sep 26 10:18:40 2012 -0700

    initial version
