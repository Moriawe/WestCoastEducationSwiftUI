//
//  ListView.swift
//  WestCoastEducationJennieLindahl1
//
//  Created by Jennie Lindahl on 2022-02-22.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var courseViewModel: CourseViewModel
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(courseViewModel.courses) { course in
                    ListRowView(course: course)
                        .onTapGesture {
                            withAnimation(.linear) {
                                courseViewModel.updateItem(course: course)
                            }
                        }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(courseViewModel)
            .navigationTitle("📚 List of Courses")
        }
    }
    
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(CourseViewModel())
    }
}




