helpers
updateSelectedGist
(owner announcingObject gist value at: #id)
						~= (self selectedItem at: #id)
						ifTrue: [ owner announcingObject
								gistListSelectedItemChanged: self selectedItem ]