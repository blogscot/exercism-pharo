Class {
	#name : #ReverseString,
	#superclass : #Object,
	#category : #'Exercise@ReverseString'
}

{ #category : #converting }
ReverseString >> reverseValue: aString [
	| aStream |
	aStream := WriteStream on: String new.
	aString size to: 1 by: -1 do: [ :i | aStream nextPut: (aString at: i) ].
	^ aStream contents
]
