//
//  CourseModel.swift
//  WestCoastEducationJennieLindahl1
//
//  Created by Jennie Lindahl on 2022-02-22.
//

import Foundation

struct CourseModel: Identifiable, Codable {
    
    let id: Int
    let name: String
    let length: String
    let online: Bool
    let teacher: String
    let grade: Double
    var isFavorite: Bool
    
    let info: String
    let image: String
    
    // Initializer for testing (just need to fill in id and name of course)
    init(id: Int, name: String, isFavorite: Bool) {
        
        self.id = id
        self.name = name
        length = "unknown hours"
        online = true
        teacher = "unknown teacher"
        grade = 0.0
        self.isFavorite = isFavorite
        info = "Info text about the course"
        image = "html"
        
    }
    
    // Initializer for a course. Favorite is always set to false at init. Should be changed by user.
    init(id: Int, name: String, length: String, online: Bool, teacher: String, grade: Double, info: String, image: String){
        
        self.id = id
        self.name = name
        self.length = length
        self.online = online
        self.teacher = teacher
        self.grade = grade
        isFavorite = false
        self.info = info
        self.image = image
        
    }
    
    func updateCompletion() -> CourseModel {
        return CourseModel(id: id, name: name, isFavorite: !isFavorite)
    }
    
}


