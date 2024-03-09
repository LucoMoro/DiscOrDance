"
I am a DDAuthorActivityTimelineViewSpec that sorts authors by their last message.
"
Class {
	#name : #DDAuthorActivityTimelineLastActiveViewSpec,
	#superclass : #DDAuthorActivityTimelineViewSpec,
	#category : #'DiscOrDance-Visualization-ViewSpecs'
}

{ #category : #initialization }
DDAuthorActivityTimelineLastActiveViewSpec >> initialize [
	super initialize.
	self
		name: 'Author activity span timeline - last active';
		sortingBlock: [ :entities | | authors others |
    authors := OrderedCollection new.
    others := OrderedCollection new.
    entities do: [ :each | (each isKindOf: DDAuthor)
            ifTrue: [ authors add: each ]
            ifFalse: [ others add: each ].].
			authors := DDAuthor lastMessageSorted: authors.
			(authors, others) ].

]
