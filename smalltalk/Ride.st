Object subclass: #Ride
	instanceVariableNames: 'rideID pickupLocation dropoffLocation distance fare'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RideSharing'.

!Ride methodsFor: 'initialization'!

initialize: anID from: aPickup to: aDropoff distance: aDistance
	"Initialize a new ride with its ID, pickup and dropoff locations, and distance."
	rideID := anID.
	pickupLocation := aPickup.
	dropoffLocation := aDropoff.
	distance := aDistance.
	fare := 0.0.

!Ride methodsFor: 'accessing'!

rideID
	"Return the unique identifier of the ride."
	^ rideID

pickupLocation
	"Return the pickup location of the ride."
	^ pickupLocation

dropoffLocation
	"Return the dropoff location of the ride."
	^ dropoffLocation

distance
	"Return the distance of the ride in miles."
	^ distance

fare
	"Return the calculated fare for the ride."
	^ fare

!Ride methodsFor: 'fare calculation'!

calculateFare
	"Calculate the fare for the ride. Subclasses should override this."
	fare := distance * 1.5. "Default fare per mile"

!Ride methodsFor: 'displaying'!

rideDetails
	"Return a string containing detailed information about the ride."
	^ 'Ride ID: ', rideID asString, ', Pickup: ', pickupLocation, ', Dropoff: ', dropoffLocation, ', Distance: ', distance asString, ' miles, Fare: $', (self fare) asString