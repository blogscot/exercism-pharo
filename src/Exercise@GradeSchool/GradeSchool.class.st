Class {
	#name : #GradeSchool,
	#superclass : #Object,
	#classVars : [
		'school'
	],
	#category : #'Exercise@GradeSchool'
}

{ #category : #running }
GradeSchool >> addStudents: students [
	students
		do: [ :student | 
			| grade name newYear |
			name := student at: 1.
			grade := student at: 2.
			newYear := school at: grade ifAbsent: SortedCollection new.
			newYear add: name.
			school add: grade -> newYear ]
]

{ #category : #'as yet unclassified' }
GradeSchool >> desiredGrade: grade [
	^ (school at: grade ifAbsent: #()) asArray
]

{ #category : #initialization }
GradeSchool >> initialize [
	school := Dictionary new
]

{ #category : #'as yet unclassified' }
GradeSchool >> roster [
	^ ((school associations asSortedCollection: [ :a :b | a key < b key ])
		collect: [ :assoc | assoc value ]) flattened
]
