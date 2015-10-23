gs
gsmfcManPage
  | manPage |
  manPage := TDManPage
    commandName: 'mfc'
    sourceMethod: self name asString , ' class>>gsmfcManPage'
    fromString:
      'NAME
  gs mfc - Perform a Mark for Collection

SYNOPSIS
  gs mfc [--noCommit] [--threads=<maxThreads>] [--wait=<wait-seconds>] 
         [--buffer=<page-buffer-size>] [--cpu=<percent-cpu-active-limit>]
         
DESCRIPTION
  Perform a garbage collection analysis of all permanent objects on disk.  
  Every object in the receiver that cannot be reached from AllUsers is marked 
  for subsequent reclaiming of storage space.

  This command commits the current transaction (unless the --noCommit option 
  is specified), empties the GcCandidates queue and commits, runs the analysis 
  while outside of a transaction and then reenters a transaction if the session 
  was in a transaction at the start of this method. If an abort would cause unsaved 
  changes to be lost, it does not execute and signals an error, #rtErrAbortWouldLoseData.

  For additional information see the comments in the following methods:

    browse method --spec Repository>>markForCollection \
           Repository>>_mfcWithMaxThreads:waitForLock:pageBufSize:percentCpuActiveLimit:

OPTIONS
  --buffer=<page-buffer-size>
    By default, the <page-buffer-size> is 128. The <page-buffer-size>, which must be a 
    power of two, specifies the number of pages to buffer per thread. This parameter in 
    conjunction with the <maxThreads> largely determines the memory footprint needed to 
    perform this operation.

  --cpu=<percent-cpu-active-limit>
    By default, the <percent-cpu-active-limit> is 90. The <percent-cpu-active-limit> 
    specifies a level of total cpu activity at which the algorithm automatically 
    inactivates threads to prevent overload of system resources.

  --noCommit
    By default, this command performs a commit. If the --noCommit option is specified, 
    then an abort is performed instead as the mfc must start with no dirty objects in 
    the vm.

  --threads=<maxThreads>
    By default, the <maxThreads> is 1. The <maxThreads> argument specifies the maximum 
    number of slave sessions (threads) that can be used during the operation.

  --wait=<wait-seconds>
    By default the <wait-seconds> is 60. The <wait-seconds> is used to specify how many 
    seconds the method should wait while attempting to acquire the gcLock.  No other 
    garbage collection operations may be started or in progress while this method is 
    running. There also must be no outstanding possible dead objects in the system for 
    the GC lock to be granted.

EXAMPLES
  gs mfc
  gs mfc --noCommit
  gs mfc --threads=3 --wait=120 --cpu=40
  gs mfc --buffer=256
'.
  ^ manPage