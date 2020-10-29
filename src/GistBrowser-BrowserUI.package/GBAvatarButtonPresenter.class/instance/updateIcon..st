helpers
updateIcon: aForm
aForm ifNotNil: [ self icon: (aForm scaledToSize: self size) ]