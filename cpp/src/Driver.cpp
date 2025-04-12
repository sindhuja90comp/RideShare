#include "include/Driver.h"
#include "include/Ride.h"
#include <iostream>

Driver::Driver(int driverID, const std::string& name, double rating) : driverID_(driverID), name_(name), rating_(rating) {}

Driver::~Driver() {
    for (Ride* ride : assignedRides_) {
        delete ride;
    }
    assignedRides_.clear();
}

void Driver::addRide(Ride* ride) {
    assignedRides_.push_back(ride);
    std::cout << "Ride with ID: " << ride->getRideID() << " assigned to driver " << name_ << std::endl;
}

void Driver::getDriverInfo() const {
    std::cout << "Driver ID: " << driverID_ << std::endl;
    std::cout << "Name: " << name_ << std::endl;
    std::cout << "Rating: " << rating_ << std::endl;
    std::cout << "Assigned Rides:" << std::endl;
    if (assignedRides_.empty()) {
        std::cout << "No rides assigned yet." << std::endl;
    } else {
        for (const Ride* ride : assignedRides_) {
            std::cout << "- Ride ID: " << ride->getRideID() << std::endl;
        }
    }
}