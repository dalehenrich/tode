running
expectedFailures
  "test needs to be written, but deferring the task"

  ^ super expectedFailures , #(#'testRsyncFileSystemLeaf')