initialization
initialize
	super initialize.
	self
		icon: self defaultForm;
		action: [ owner announcingObject actionAvatarButton ];
		whenBuiltDo: [ :block | 
			"TODO: Investigate why borderWidth and borderColor aren't working."
			self borderWidth: 4.
			self borderColor: Color transparent
			"self widget widget borderWidth: 0.
			self widget widget borderColor: Color transparent"
			].
		
	owner announcingObject usernameForm
		whenChangedDo: [ :newValue | 
			self updateIcon: newValue
			]