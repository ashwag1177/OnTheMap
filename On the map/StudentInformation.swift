//
//  FileStudentInformation.swift
//  On the map
//
//  Created by  ashwaq marzouq on 27/09/1444 AH.
//

import Foundation

struct StudentInformation {
    
    var createdAt: String
    var firstName: String
    var lastName: String
    var latitude: Double
    var longitude: Double
    var mapString: String
    var mediaURL: String
    var objectId: String
    var uniqueKey: String
    var updatedAt: String
    
    mutating func initWithValues(_ currentStudent : StudentInformation) {
        self.createdAt = currentStudent.createdAt
        self.firstName = currentStudent.firstName
        self.lastName = currentStudent.lastName
        self.latitude = currentStudent.latitude
        self.longitude = currentStudent.longitude
        self.mapString = currentStudent.mapString
        self.mediaURL = currentStudent.mediaURL
        self.objectId = currentStudent.objectId
        self.uniqueKey = currentStudent.uniqueKey
        self.updatedAt = currentStudent.updatedAt
    }
}

