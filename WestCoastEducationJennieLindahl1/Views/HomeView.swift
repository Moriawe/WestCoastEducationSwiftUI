//
//  HomeView.swift
//  WestCoastEducationJennieLindahl1
//
//  Created by Jennie Lindahl on 2022-02-24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
            
            ZStack {
                
                Image("coastSummer")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Text("Westcoast Education")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        
                    Text("Lär dig något nytt!")
                        .font(.subheadline)
                        .foregroundColor(.black)
                    
                    //NavigationLink("Till våra kurser", destination: ListView())
                    
                    Spacer()
                    
                }
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
