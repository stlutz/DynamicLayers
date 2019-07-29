enumerating
do: aBlock

	| sortedAssociations |
	sortedAssociations := SortedCollection sortBlock: [:assoc :otherAssoc |
							assoc value >= otherAssoc value].
	layers associationsDo: [:assoc | sortedAssociations add: assoc].
	sortedAssociations do: [:assoc | aBlock value: assoc value]