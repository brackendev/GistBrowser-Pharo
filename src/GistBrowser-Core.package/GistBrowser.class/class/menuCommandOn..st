world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Gist Browser')
		help: 'Interact with GitHub Gists.';
		parent: #Tools;
		icon: (Smalltalk ui iconNamed: #github);
		action: [ self open ];
		keyText: 'o, g'