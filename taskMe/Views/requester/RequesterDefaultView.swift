//
//  RequesterDefaultView.swift
//  taskMe
//
//  Created by Phillip Gao on 4/30/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import SwiftUI

struct RequesterDefaultView: View {
    var body: some View{
        TabView{
            RequesterHomeView()
            .tabItem{
                Image(systemName: "house")
            }
            MakeRequestsView()
                .tabItem{
                    Image(systemName: "plus")
            }
            ProfileView()
                           .tabItem{
                               Image(systemName: "person")
                       }
            
        }
        
    }
    
}



struct RequesterDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        RequesterDefaultView()
    }
}
