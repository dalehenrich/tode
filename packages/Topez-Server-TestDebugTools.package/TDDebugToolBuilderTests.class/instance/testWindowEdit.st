as yet unclassified
testWindowEdit
  "object aspect windowId expected"

  | stack frame |
  stack := self stack.
  frame := stack currentFrame.
  self
    executeWindowBuilderSpecs:
      {{stack.
      #'edit'.
      nil.
      '/ ([OrderedCollection] anOrderedCollection( ''1. ProcessorScheduler>>_switchFrom:to: @2 line 8'', ''2. ProcessorScheduler>>_reschedule @5 line 10'', ''3. ProcessorScheduler>>_waitOnSema: @...):
	1@ -> [String] ''1. ProcessorScheduler>>_switchFrom:to: @2 line 8''
	2@ -> [String] ''2. ProcessorScheduler>>_reschedule @5 line 10''
	3@ -> [String] ''3. ProcessorScheduler>>_waitOnSema: @7 line 8''
	4@ -> [String] ''4. Semaphore>>wait @13 line 15''
	5@ -> [String] ''5. TransientSemaphore>>wait @3 line 3''
	6@ -> [String] ''6. [] in ExecBlock(TDDebugToolBuilderTests)>>stack @3 line 6''
	7@ -> [String] ''7. GsProcess>>_start @7 line 16''
	8@ -> [String] ''8. UndefinedObject(GsNMethod class)>>_gsReturnToC @1 line 1''
'}.
      {frame.
      #'edit'.
      nil.
      '/:
[String] ''ProcessorScheduler>>_switchFrom:to: @2 line 8'''}}