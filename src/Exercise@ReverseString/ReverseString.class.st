Class {
	#name : #ReverseString,
	#superclass : #Object,
	#category : #'Exercise@ReverseString'
}

{ #category : #conversion }
ReverseString >> reverseValue: text [
	| len myArr index |
	len := text size.
	myArr := String new: len.
	index := len + 1.
	1 to: len do: [ :x | myArr at: x put: (text at: (index := index - 1)) ].
	^ myArr
]
