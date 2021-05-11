Class {
	#name : #HighScores,
	#superclass : #Object,
	#category : #'Exercise@HighScores'
}

{ #category : #'as yet unclassified' }
HighScores >> latestScore: scores [ 
	^ scores last
]

{ #category : #'as yet unclassified' }
HighScores >> personalBestScores: scores [
	^ scores sort last
]

{ #category : #'as yet unclassified' }
HighScores >> personalTopThreeScores: scores [
	| ordered |
	ordered := scores sort: [ :a :b | a > b ].
	scores size < 3
		ifTrue: [ ^ ordered ].
	^ ordered first: 3
]

{ #category : #'as yet unclassified' }
HighScores >> scores: newScores [ 
	^ newScores 
]
