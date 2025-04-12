#include "include/Ride.h"
#include <iostream>

Ride::Ride(int rideID, const std::string& pickupLocation, const std::string& dropoffLocation, double baseFare)
    : rideID_(rideID), pickupLocation_(pickupLocation), dropoffLocation_(dropoffLocation), baseFare_(baseFare), fare_(0.0) {}

Ride::~Ride() {}

int Ride::getRideID() const {
    return rideID_;
}

void Ride::rideDetails() const {
    std::cout << "Ride ID: " << rideID_ << std::endl;
    std::cout << "Pickup: " << pickupLocation_ << std::endl;
    std::cout << "Dropoff: " << dropoffLocation_ << std::endl;
    std::cout << "Base Fare: $" << baseFare_ << std::endl;
    std::cout << "Total Fare: $" << fare_ << std::endl;
}