//
//  CourseViewModel.swift
//  WestCoastEducationJennieLindahl1
//
//  Created by Jennie Lindahl on 2022-02-22.
//

import Foundation

class CourseViewModel: ObservableObject {
    
    @Published var courses: [CourseModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newCourses = [
                CourseModel(id: 1, name: "Google Flutter", length: "15 hours", online: true, teacher: "Cecilia", grade: 4.5, info: "Flutter course info text", image: "javascript"),
                CourseModel(id: 2, name: "Android Development", length: "10 hours", online: false, teacher: "Anna", grade: 3.5, info: "Android course info text", image: "android"),
                CourseModel(id: 3, name: "iOS Development", length: "4 weeks", online: true, teacher: "Sofia", grade: 5.0, info: "iOS bla bla", image: "iOS"),
                CourseModel(id: 4, name: "Swift", length: "2 weeks", online: true, teacher: "Therese", grade: 4.5, info: "SwiftISTHASHIT", image: "swift"),
                CourseModel(id: 5, name: "React Native", length: "15 hours", online: true, teacher: "Ulrika", grade: 4.5, info: "React going strong", image: "react"),
                CourseModel(id: 6, name: "Kotlin", length: "25 hours", online: true, teacher: "Susanne", grade: 4.5, info: "Kotlin is Android", image: "kotlin"),
                CourseModel(id: 7, name: "Swift UI", length: "5 hours", online: true, teacher: "Therese", grade: 4.5, info: "UI has never been easier", image: "swift"),
                CourseModel(id: 8, name: "JavaScript", length: "15 hours", online: true, teacher: "Olivia", grade: 4.5, info: "Webpages Bla, bla, bla", image: "javascript"),
                CourseModel(id: 9, name: "React", length: "5 weeks", online: false, teacher: "Henrietta", grade: 4.5, info: "React la la lalala", image: "react"),
                CourseModel(id: 10, name: "CSS", length: "10 hours", online: true, teacher: "Paula", grade: 4.5, info: "CSS is pretty", image: "css"),
                CourseModel(id: 11, name: "Angular", length: "10 weeks", online: true, teacher: "Kristina", grade: 4.5, info: "Sounds tricky", image: "angular"),
                CourseModel(id: 12, name: "Node JS", length: "5 hours", online: true, teacher: "Lisa", grade: 4.5, info: "Node nod nod", image: "nodejs"),
                CourseModel(id: 13, name: "PHP", length: "10 weeks", online: false, teacher: "Malva", grade: 4.5, info: "PHP is something", image: "php"),
                CourseModel(id: 14, name: "HTML5", length: "8 hours", online: true, teacher: "Lisa", grade: 4.5, info: "Make your own webpage", image: "html"),
                CourseModel(id: 15, name: "Django", length: "3 weeks", online: true, teacher: "Cecilia", grade: 4.5, info: "Django Fett", image: "django"),
                CourseModel(id: 16, name: "Python", isFavorite: false),
                CourseModel(id: 17, name: "Machine Learning", isFavorite: false),
                CourseModel(id: 18, name: "Deep learning", isFavorite: false),
                CourseModel(id: 19, name: "Data Analysis", isFavorite: false),
                CourseModel(id: 20, name: "Artificial Intelligence", isFavorite: false),
                CourseModel(id: 21, name: "Statistics", isFavorite: false),
                CourseModel(id: 22, name: "R", isFavorite: false),
                CourseModel(id: 23, name: "Neural Networks", isFavorite: false),
                CourseModel(id: 24, name: "Python", isFavorite: false),
                CourseModel(id: 25, name: "Java", isFavorite: false),
                CourseModel(id: 26, name: "C#", isFavorite: false),
                CourseModel(id: 27, name: "React", isFavorite: false),
                CourseModel(id: 28, name: "C++", isFavorite: false),
                CourseModel(id: 29, name: "JavaScript", isFavorite: false),
                CourseModel(id: 30, name: "C", isFavorite: false),
                CourseModel(id: 31, name: "Go", isFavorite: false),
                CourseModel(id: 32, name: "Data Structure", isFavorite: false),
                CourseModel(id: 33, name: "Coding interview", isFavorite: false),
                CourseModel(id: 34, name: "Algorithms", isFavorite: false),
                CourseModel(id: 35, name: "Kubernetes", isFavorite: false),
                CourseModel(id: 36, name: "Microservices", isFavorite: false),
                CourseModel(id: 37, name: "Software Architecture", isFavorite: false),
                CourseModel(id: 38, name: "Blockchain", isFavorite: false),
                CourseModel(id: 39, name: "Python", isFavorite: false)
        ]
        courses.append(contentsOf: newCourses)
    }
    
    func updateItem(course: CourseModel) {
        if let index = courses.firstIndex(where: { $0.id == course.id }) {
            courses[index] = course.updateCompletion()
        }
    }
    
}

