//
//  RequesterDefaultView.swift
//  taskMe
//
//  Created by Phillip Gao on 4/30/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import SwiftUI

struct WorkerDefaultView: View {
    var body: some View{
        TabView{
            MyTasksView()
                .tabItem{
                Image(systemName: "house")
            }
            WorkerHomeView()
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



struct WorkerDefaultView_Previews: PreviewProvider {
    static var previews: some View {
        WorkerDefaultView()
    }
}
