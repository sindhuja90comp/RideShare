#include "include/PremiumRide.h"
#include <iostream>

PremiumRide::PremiumRide(int rideID, const std::string& pickupLocation, const std::string& dropoffLocation, double baseFare)
    : Ride(rideID, pickupLocation, dropoffLocation, baseFare) {}

PremiumRide::~PremiumRide() {}

void PremiumRide::calculateFare() {
    fare_ = baseFare_ * 1.5; // Premium fare multiplier
}

void PremiumRide::rideDetails() const {
    Ride::rideDetails();
    std::cout << "Ride Type: Premium" << std::endl;
}