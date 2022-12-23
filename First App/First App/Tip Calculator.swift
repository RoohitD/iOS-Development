//
//  Tip Calculator.swift
//  First App
//
//  Created by Rohit Deshmukh on 12/23/22.
//

import SwiftUI

struct Tip_Calculator: View {
    @State var total = ""
    @State var tipPercent = 15.0
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundColor(.yellow)
                    .font(.title)
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }.padding()
            HStack {
                TextField("$ Amount", text: $total).multilineTextAlignment(.center)
            }.padding()
            HStack {
                Slider(value: $tipPercent, in: 1 ... 15, step: 1.0)
                    .frame(width: 150.0, height: 100.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            HStack {
                if let totalPercent = Double(total) {
                    Text("Tip Amount: $\(totalPercent * (tipPercent / 100), specifier: "%0.2f")")
                } else {
                    Text("Please Enter a Numeric Value")
                }
            }
        }
        .padding()
    }
}

struct Tip_Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Tip_Calculator()
    }
}
