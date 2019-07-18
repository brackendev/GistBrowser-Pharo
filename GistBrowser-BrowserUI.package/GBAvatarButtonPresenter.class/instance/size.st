accessing
size
	^ ((self widget widget bounds origin x
		- self widget widget bounds corner x) abs - 4)
		@
			(self widget widget bounds origin y
				- self widget widget bounds corner y) abs - 4