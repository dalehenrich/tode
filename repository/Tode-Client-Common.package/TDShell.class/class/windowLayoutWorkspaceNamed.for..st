accessing
windowLayoutWorkspaceNamed: propertyName for:  aWindowProperties
	^ '"Set the `sessionDescriptName`, then djust parameters to change  proportions
  or configuration of layout. "
| layoutName layout sessionDescriptionName  |

layoutName := ', propertyName printString, '.
sessionDescriptionName := ''gsDevKit''.
layout := ' , aWindowProperties printString, '
 layout exportTo: TDShell todeSysLocalWindowLayoutPath, layoutName.
TDAbstractWindowProperties install: layoutName.
TDShell testWindowLayout: sessionDescriptionName.'