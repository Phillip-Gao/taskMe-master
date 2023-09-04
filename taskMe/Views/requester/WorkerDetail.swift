//
//  WorkerDetail.swift
//  taskMe
//
//  Created by Phillip Gao on 4/14/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import SwiftUI

struct WorkerDetail: View {
    
    @Binding var worker : Worker
    @Binding var workers : [Worker]
    @Environment(\.presentationMode) var presentation
    var isAddContact : Bool = true
        
    
    var body: some View {
        VStack{
            Image(worker.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 300, height: 300, alignment: .center)
            Text(worker.name).font(.largeTitle)
            Text(worker.email)
            Text("Price: $" + worker.price)
            Text("Task: " + worker.request)
            Text(worker.description)
            
            }

        }
    }


struct ContactDetail_Previews: PreviewProvider {
    static var previews: some View {
       WorkerDetail(worker: Binding.constant(Worker(image: "user", name: "Ben", email: "ben@ben.ben")), workers: Binding.constant([Worker(image: "ben", name: "Ben", email: "ben@ben.ben")]))
    }
}

