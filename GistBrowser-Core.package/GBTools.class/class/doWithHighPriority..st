display
doWithHighPriority: aBlock
	^ aBlock forkAt: Processor userSchedulingPriority + 1