Class {
	#name : #SumOfMultiples,
	#superclass : #Object,
	#category : #'Exercise@SumOfMultiples'
}

{ #category : #'as yet unclassified' }
SumOfMultiples >> multiplesOf: number upto: limit [
	^ (1 to: limit)
		select: [ :each | each < limit and: (each % number) isZero ]

]

{ #category : #'as yet unclassified' }
SumOfMultiples >> sumFactors: factors limit: limit [
	| set |
	set := (factors select: [ :n | n > 0 ])
		flatCollect: [ :each | self multiplesOf: each upto: limit ]
		as: Set.
	^ set isEmpty
		ifTrue: [ 0 ]
		ifFalse: [ set sum ]
]
