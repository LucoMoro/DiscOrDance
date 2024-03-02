"
A DDDomainTest is a test class for testing the behavior of DDDomain
"
Class {
	#name : #DDDomainTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDDomainTest >> testDefaultLanguage [
	"This method checks if DefaultLanguage return the correct default value"
	
	self assert: (DDDomain defaultLanguage) equals: 'english'.
]

{ #category : #test }
DDDomainTest >> testDefaultPunctuation [
	"This method checks if DefaultPunctuation return the correct default value"
	
	self assert: (DDDomain defaultPunctuation) equals: { '!' . '"' . '#' . '$' . '%' . '&' . '\' . '''' . '(' . ')' . '*' . '+' . ',' . '-' . '.' . '/' . ':' . ';' . '<' . '=' . '>' . '?' . '@' . '[' . '\' . '\' . ']' . '^' . '_' . '`' . '{' . '|' . '}' . '~' . '```' }.
]

{ #category : #test }
DDDomainTest >> testDefaultStopwords [
	"This method checks if DefaultStopwords return the correct default value"
	
	self assert: (DDDomain defaultStopwords) equals: { 'been' . 'its' . 've' . 'these'. 'further'. 'it'. 'few'. 'don''t' . 'isn''t'. 'more'. 'weren'. 'wouldn''t'. 'theirs'. 'until'. 'his'. 'from'. 'the'. 'had'. 'are'. 'because'. 'when'. 'an'. 'haven'. 'o'. 'shan''t'. 'me'. 'hers'. 'both'. 'doing'. 'm'. 'mustn''t'. 'him'. 'd'. 'if'. 'should'. 'mustn'. 'such'. 'am'. 'over'. 'and'. 'that'. 'my'. 't'. 'that''ll'. 'very'. 'shouldn''t'. 'shan'. 'you''ll'. 'don'. 'won''t'. 'out'. 'on'. 'there'. 'couldn'. 'up'. 'should''ve'. 'those'. 'itself'. 'into'. 'only'. 'other'. 'off'. 'being'. 'this'. 'her'. 'below'. 'where'. 'just'. 's'. 'you''ve'. 'here'. 'to'. 'too'. 'were'. 'each'. 'about'. 'between'. 'hasn'. 'or'. 'wasn'. 'after'. 'of'. 'ain'. 'aren'. 'weren''t'. 'nor'. 'which'. 'under'. 'needn''t'. 'ma'. 'aren''t'. 'myself'. 'hadn'. 'why'. 'didn'. 'does'. 'no'. 'hasn''t'. 'above'. 'at'. 'while'. 'having'. 'not'. 'doesn''t'. 'you'. 'do'. 'so'. 'she'. 'own'. 'was'. 'again'. 'all'. 'yourselves'. 'doesn'. 'he'. 'their'. 'have'. 'wouldn'. 'be'. 'ourselves'. 'couldn''t'. 'didn''t'. 'once'. 'in'. 'haven''t'. 'same'. 'now'. 'what'. 'some'. 'we'. 'any'. 'himself'. 'before'. 'through'. 'has'. 'your'. 'needn'. 'against'. 'i'. 'ours'. 'you''re'. 'will'. 'for'. 'wasn''t'. 'them'. 'during'. 'you''d'. 'with'. 'who'. 'll'. 'can'. 'a'. 'then'. 'won'. 'most'. 'than'. 'by'. 'yours'. 'she''s'. 'yourself'. 're'. 'is'. 'how'. 'y'. 'herself'. 'as'. 'isn'. 'mightn'. 'did'. 'but'. 'it''s'. 'whom'. 'hadn''t'. 'they'. 'shouldn'. 'themselves'. 'our'. 'mightn''t'. 'down' . 'i''m' . 'would' . '`[[[source_code]]]`' . '```[[[source_code]]]```' }.
]

{ #category : #test }
DDDomainTest >> testLanguage [
	"This method checks if language's getter works without giving any input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.

	self assert: aDDDomain language equals: 'english'.
]

{ #category : #test }
DDDomainTest >> testLanguage2 [
	"This method checks if language's getter and setter works given an input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.
	
	aDDDomain language: 'italian'.

	self assert: aDDDomain language equals: 'italian'.
]

{ #category : #test }
DDDomainTest >> testPunctuation [
	"This method checks if punctuation's getter works without giving any input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.

	self assert: aDDDomain punctuation equals: DDDomain defaultPunctuation.
]

{ #category : #test }
DDDomainTest >> testPunctuation2 [
	"This method checks if punctuation's getter and setter works given an input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.
	
	aDDDomain punctuation: '?'.

	self assert: aDDDomain punctuation equals: '?'.
]

{ #category : #test }
DDDomainTest >> testStopwords [
	"This method checks if stopwords's getter works without giving any input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.

	self assert: aDDDomain stopwords equals: DDDomain defaultStopwords.
]

{ #category : #test }
DDDomainTest >> testStopwords2 [
	"This method checks if stopwords's getter and setter works given an input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.
	
	aDDDomain stopwords: 'domain-stopwords'.

	self assert: aDDDomain stopwords equals: 'domain-stopwords'.
]
