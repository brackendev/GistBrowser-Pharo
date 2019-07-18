display
doWithBackgroundPriority: aBlock
	^ aBlock forkAt: Processor userBackgroundPriority