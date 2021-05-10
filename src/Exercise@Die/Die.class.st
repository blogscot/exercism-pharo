Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'Exercise@Die'
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: number [
	^ self new faces: number; yourself
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anObject [
	faces := anObject
]

{ #category : #'class initialization' }
Die >> initialize [
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' (' ;
		print: faces ;
		nextPutAll: ')'
]

{ #category : #'as yet unclassified' }
Die >> roll [
	^ faces atRandom
]
