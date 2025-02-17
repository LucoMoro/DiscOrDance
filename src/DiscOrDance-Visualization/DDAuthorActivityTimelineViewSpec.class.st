"
I am a view that highlights the activity timelines of authors in a Discord server.

I map metrics for first message sent on a channel on the y position and activity span on the height.
"
Class {
	#name : #DDAuthorActivityTimelineViewSpec,
	#superclass : #DDViewSpec,
	#category : #'DiscOrDance-Visualization-ViewSpecs'
}

{ #category : #initialization }
DDAuthorActivityTimelineViewSpec >> initialize [
	super initialize.
	self
		name: 'Author activity span timeline';
		layoutClass: RSHorizontalTreeLayout;
		entityClasses:
			{ DDAuthor } asSet;
		glyphMappings:
			{ DDAuthor -> DDNodeGlyph };
		sortingBlock: [ :entities | | authors others |
    authors := OrderedCollection new.
    others := OrderedCollection new.
    entities do: [ :each | (each isKindOf: DDAuthor)
            ifTrue: [ authors add: each ]
            ifFalse: [ others add: each ].].
    authors := DDAuthor alphaSorted: authors.
    (authors, others)];
		metricMappings: { 
			DDAuthor -> {
				DDActivitySpanMetric -> #devNull .
				DDFirstMessageDateDifferenceMetric -> #devNull .
				DDNormalizedActivitySpanMetric -> #width .
				DDNormalizedFirstMessageOffsetDateMetric -> #x }
		}.
		self entityFilter: [ :entities | entities reject: [ :each | each hasMessages not ] ].
]
