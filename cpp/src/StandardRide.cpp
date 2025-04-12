#include "include/StandardRide.h"
#include <iostream>

StandardRide::StandardRide(int rideID, const std::string& pickupLocation, const std::string& dropoffLocation, double baseFare)
    : Ride(rideID, pickupLocation, dropoffLocation, baseFare) {}

StandardRide::~StandardRide() {}

void StandardRide::calculateFare() {
    fare_ = baseFare_ * 1.0; // Standard fare multiplier
}

void StandardRide::rideDetails() const {
    Ride::rideDetails();
    std::cout << "Ride Type: Standard" << std::endl;
}