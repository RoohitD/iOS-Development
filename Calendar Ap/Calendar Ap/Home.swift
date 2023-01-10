//
//  Home.swift
//  Calendar Ap
//
//  Created by Rohit Deshmukh on 1/10/23.
//

import SwiftUI



struct Home: View {
    @State var currentDate: Date = Date()
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 20){
                DatePicker(currentDate: $currentDate)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
