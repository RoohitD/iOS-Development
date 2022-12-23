//
//  Colorswatch.swift
//  First App
//
//  Created by Rohit Deshmukh on 12/23/22.
//

import SwiftUI

struct Colorswatch: View {
    var color: Color
    var body: some View {
        Circle()
            .frame(width: 20, height: 20, alignment: .center).padding()
            .foregroundColor(color).padding()
    }
}

struct Colorswatch_Previews: PreviewProvider {
    static var previews: some View {
        Colorswatch(color: .red)
    }
}
