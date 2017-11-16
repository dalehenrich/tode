pf
pfstartManPage
  | manPage |
  manPage := TDManPage
    commandName: 'start'
    sourceMethod: self name asString , '>>pfstart'
    fromString:
      'NAME
  pf start - Begin sampling data

SYNOPSIS
  pf start [--computeInterval=<cpu-time-seconds>]

DESCRIPTION
  Start profile monitoring. Use `pf stop` to stop monitoring and/or `pf view` to stop monitoring
  and view the profile results.

OPTIONS
  --computeInterval=<cpu-time-seconds>
    Given the cpu time for an unprofiled run, estimate the profiling interval that will
    yield approximately 100000 samples. GEM_TEMPOBJ_CACHE_SIZE should be set to at least 
    300MB to avoid AlmostOutOfMemory errors during analysis phase. 

    The default internal is 1 ms and yields approximately 100000 samples over 30 seconds of 
    cpu time.

EXAMPLES
  pf start

  pf start --computeInterval=720
'.
  ^ manPage