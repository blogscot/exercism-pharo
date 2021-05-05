Class {
	#name : #Anagram,
	#superclass : #Object,
	#category : #'Exercise@Anagram'
}

{ #category : #'as yet unclassified' }
Anagram >> findAnagramsCandidates: aCollection subject: aString [
	| lowercaseSubject |
	lowercaseSubject := aString asLowercase.
	^ (aCollection
		reject: [ :each | each asLowercase = lowercaseSubject ])
		select: [ :each | 
			| lowercaseItem |
			lowercaseItem := each asLowercase.
			each size = aString size
				& (lowercaseItem asSet = lowercaseSubject asSet)
				&
					(lowercaseItem asSortedCollection
						= lowercaseSubject asSortedCollection) ]
]
