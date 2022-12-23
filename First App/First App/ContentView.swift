//
//  ContentView.swift
//  First App
//
//  Created by Rohit Deshmukh on 12/21/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self){ object in
                NavigationLink(object.title, destination: Tip_Calculator())
                NavigationLink(object.title, destination: Color_Slider())
            }.navigationTitle("Choose an Option")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
