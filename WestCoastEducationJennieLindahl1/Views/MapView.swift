//
//  MapView.swift
//  WestCoastEducationJennieLindahl1
//
//  Created by Jennie Lindahl on 2022-02-24.
//

import SwiftUI

struct MapView: View {
    
    @StateObject var courseViewModel: CourseViewModel = CourseViewModel()
    
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Start")
                }
            
            ListView()
                .tabItem{
                    Image(systemName: "books.vertical")
                    Text("Våra kurser")
                }
        }
        .accentColor(.white)
        .environmentObject(courseViewModel)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
