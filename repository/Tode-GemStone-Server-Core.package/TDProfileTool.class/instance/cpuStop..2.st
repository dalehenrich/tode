cpu
cpuStop
  ^ (System readClockNano - CpuStart) // 1000000