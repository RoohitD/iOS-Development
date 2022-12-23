//
//  Color Slider.swift
//  First App
//
//  Created by Rohit Deshmukh on 12/23/22.
//

import SwiftUI

struct Color_Slider: View {
    var titlé = "Color Slider"
    @State var red = 0.0
    @State var blue = 0.0
    @State var green = 0.0
    
    var body: some View {
        VStack {
            HStack{
                Text(titlé)
                    .padding()
                    .font(.largeTitle)
                Image(systemName: "gamecontroller.fill")
                    .foregroundColor(CustomColor.myColor)
                    .font(.largeTitle)
            }
            Image(systemName: "circle.fill")
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
                .font(.largeTitle)
            ColorSliderView(colorValue: $red, color: .red)
            ColorSliderView(colorValue: $green, color: .green)
            ColorSliderView(colorValue: $blue, color: .blue)
        }
    }
}

struct CustomColor {
    static let myColor = Color("Color")
}


struct Color_Slider_Previews: PreviewProvider {
    static var previews: some View {
        Color_Slider()
    }
}
