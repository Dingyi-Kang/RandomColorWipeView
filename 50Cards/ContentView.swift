//
//  ContentView.swift
//  50Cards
//
//  Created by 定一康 on 4/16/21.
//

import SwiftUI



struct ContentView: View {
    
    var color:Color{
        return Color(
            .sRGB,
            red: Double.random(in: 0..<1),
            green: Double.random(in: 0..<1),
            blue: Double.random(in: 0..<1),
            opacity: 1
        )
        
    }
    
    var body: some View {
        
        TabView(){
            
            ForEach (1...10, id: \.self){ p in
                GeometryReader{ geo in
                    ZStack{
                        Rectangle()
                            .foregroundColor(color)
                            .cornerRadius(10.0)
                            .shadow(radius: 30)
                        Image(systemName: "\(p).circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }.frame(height: max(geo.size.height-50, 100))
                    
                    
                }
                
                
            }
            .padding()
            
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
