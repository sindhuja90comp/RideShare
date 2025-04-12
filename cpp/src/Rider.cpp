#include "include/Rider.h"
#include "include/Ride.h"
#include <iostream>

Rider::Rider(int riderID, const std::string& name) : riderID_(riderID), name_(name) {}

Rider::~Rider() {
    for (Ride* ride : requestedRides_) {
        delete ride;
    }
    requestedRides_.clear();
}

void Rider::requestRide(Ride* ride) {
    requestedRides_.push_back(ride);
    std::cout << "Ride requested with ID: " << ride->getRideID() << std::endl;
}

void Rider::viewRides() const {
    std::cout << "Rider " << name_ << "'s requested rides:" << std::endl;
    if (requestedRides_.empty()) {
        std::cout << "No rides requested yet." << std::endl;
    } else {
        for (const Ride* ride : requestedRides_) {
            std::cout << "- Ride ID: " << ride->getRideID() << std::endl;
        }
    }
}