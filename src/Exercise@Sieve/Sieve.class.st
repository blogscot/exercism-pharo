Class {
	#name : #Sieve,
	#superclass : #Object,
	#category : #'Exercise@Sieve'
}

{ #category : #'as yet unclassified' }
Sieve >> primesLimit: number [
	| sieve start limit |
	sieve := (1 to: number) asArray.
	sieve at: 1 put: nil.
	start := 2.
	limit := number sqrt.
	[ start < limit ]
		whileTrue: [ | value |
			value := start.
			"Discard all multiples bar the first"
			[ value <= number ]
				whileTrue: [ value = start
						ifFalse: [ sieve at: value put: nil ].
					value := value + start ].

			"Find next prime"
			start := sieve findFirst: [ :n | n isNotNil and: [ n > start ] ] ].
	^ sieve select: [ :n | n isNotNil ]
]
