as yet unclassified
windowBuilderTestFixture
  "object aspect windowId expected"

  | process stack frame sema |
  sema := TransientSemaphore new.
  process := [ 
  3 + 4.
  sema wait ] fork.
  Processor yield.
  process suspend.
  stack := TDStack new
    process: process;
    yourself.
  frame := stack currentFrame.
  ^ {{stack.
  #'edit'.
  nil.
  '/ ([OrderedCollection] anOrderedCollection( ''1. ProcessorScheduler>>_switchFrom:to: @2 line 8'', ''2. ProcessorScheduler>>_reschedule @5 line 10'', ''3. GsProcess>>_wait @3 line 3'', ''4. D...):
	1@ -> [String] ''1. ProcessorScheduler>>_switchFrom:to: @2 line 8''
	2@ -> [String] ''2. ProcessorScheduler>>_reschedule @5 line 10''
	3@ -> [String] ''3. GsProcess>>_wait @3 line 3''
	4@ -> [String] ''4. Delay>>_wait: @26 line 26''
	5@ -> [String] ''5. Delay>>wait @3 line 5''
	6@ -> [String] ''6. [] in ExecBlock(TDDebugToolTests)>>windowBuilderTestFixture @4 line 7''
	7@ -> [String] ''7. GsProcess>>_start @7 line 16''
	8@ -> [String] ''8. UndefinedObject(GsNMethod class)>>_gsReturnToC @1 line 1''
'}.
  {frame.
  #'edit'.
  nil.
  '/:
[String] ''ProcessorScheduler>>_switchFrom:to: @2 line 8'''}}