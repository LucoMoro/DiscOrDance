"
I am a DDAuthorActivityTimelineViewSpec that sorts authors by their activity span.
"
Class {
	#name : #DDAuthorActivityTimelineLongestActiveViewSpec,
	#superclass : #DDAuthorActivityTimelineViewSpec,
	#category : #'DiscOrDance-Visualization-ViewSpecs'
}

{ #category : #initialization }
DDAuthorActivityTimelineLongestActiveViewSpec >> initialize [
	super initialize.
	self
		name: 'Author activity span timeline - longest active';
		sortingBlock: [ :entities | | authors others |
    authors := OrderedCollection new.
    others := OrderedCollection new.
    entities do: [ :each | (each isKindOf: DDAuthor)
            ifTrue: [ authors add: each ]
            ifFalse: [ others add: each ].].
			authors := DDAuthor lifespanSorted: authors.
			(authors, others) ].

]
