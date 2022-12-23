//
//  ColorSliderView.swift
//  First App
//
//  Created by Rohit Deshmukh on 12/23/22.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var colorValue: Double
    var color: Color
    var body: some View {
        HStack{
            Colorswatch(color: color)
            Slider(value: $colorValue, in: 0 ... 1.0, step: 0.01).frame(width: 250.0)
        }
    }
}


