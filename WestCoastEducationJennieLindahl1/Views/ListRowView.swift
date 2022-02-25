//
//  ListRowView.swift
//  WestCoastEducationJennieLindahl1
//
//  Created by Jennie Lindahl on 2022-02-22.
//

import SwiftUI

struct ListRowView: View {
    
    let course: CourseModel
    
    var body: some View {
        HStack {
            Text(course.name)
            Spacer()
            Image(systemName: course.isFavorite ? "heart.fill" : "heart")
                .foregroundColor(course.isFavorite ? .red : .black)
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var course1 = CourseModel(id: 40, name: "Kurs 1", isFavorite: false)
    static var course2 = CourseModel(id: 41, name: "Kurs 2", isFavorite: true)
    
    static var previews: some View {
        Group {
            ListRowView(course: course1)
            ListRowView(course: course2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}

