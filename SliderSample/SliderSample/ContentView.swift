//
//  ContentView.swift
//  SliderSample
//
//  Created by 大西玲音 on 2021/06/27.
//

import SwiftUI

struct ContentView: View {
    @State var R: Double = 0
    @State var G: Double = 0
    @State var B: Double = 0
    @State var A: Double = 1
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                Image(systemName: "ladybug")
                    .scaleEffect(3)
                Circle()
                    .frame(width: 100, height: 100)
                    .padding()
                    .foregroundColor(Color(red: R/255,
                                           green: G/255,
                                           blue: B/255,
                                           opacity: A)
                    )
            }
            
            HStack {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 20)
                Text(String(Int(R)))
                    .frame(width: 40)
                Slider(value: $R, in: 0...255).frame(width: 200)
            }
            
            HStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 20, height: 20)
                Text(String(Int(G)))
                    .frame(width: 40)
                Slider(value: $G, in: 0...255).frame(width: 200)
            }
            
            HStack {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 20, height: 20)
                Text(String(Int(B)))
                    .frame(width: 40)
                Slider(value: $B, in: 0...255).frame(width: 200)
            }
            
            HStack {
                Rectangle()
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
                    .frame(width: 18, height: 18)
                Text(String(round(A*10)/10)).frame(width: 40)
                Slider(value: $A).frame(width: 200)
            }
            
        }
    }
}

func format(_ num: Double) -> String {
    let result = String(round(num*100)/100)
    return result
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
