"
I am a DDAuthorActivityTimelineViewSpec that sorts authors by their first appearence.
"
Class {
	#name : #DDAuthorActivityTimelineOldestViewSpec,
	#superclass : #DDAuthorActivityTimelineViewSpec,
	#category : #'DiscOrDance-Visualization-ViewSpecs'
}

{ #category : #initialization }
DDAuthorActivityTimelineOldestViewSpec >> initialize [
	super initialize.
	self
		name: 'Author activity span timeline - oldest';
		sortingBlock: [ :entities | | authors others |
    authors := OrderedCollection new.
    others := OrderedCollection new.
    entities do: [ :each | (each isKindOf: DDAuthor)
            ifTrue: [ authors add: each ]
            ifFalse: [ others add: each ].].
			authors := DDAuthor firstMessageSorted: authors.
			(authors, others) ].

]
