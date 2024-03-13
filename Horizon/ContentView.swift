//
//  ContentView.swift
//  Horizon
//
//  Created by Tariq Almazyad on 12/03/2024.
//

import SwiftUI
import Vortex

struct ContentView: View {
     let snow: VortexSystem = {
        VortexSystem(
            tags: ["circle"],
            position: [0.5, 0],
            shape: .box(width: 1, height: 0),
            birthRate: 20,
            lifespan: 10,
            speed: 0.1,
            speedVariation: 0.1,
            angle: .degrees(180),
            angleRange: .degrees(20),
            size: 0.25,
            sizeVariation: 0.4
        )
    }()
    var body: some View {
        VStack{
            HStack{
                Text("Horizon")
                    .font(.largeTitle.bold())
                Spacer()
            }.padding(.top, 60)
                .padding()
            HStack {
                TextField("", text: .constant(""))
                Spacer()
                Divider()
                    .frame(height: 10)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title.bold())
                        .foregroundColor(Color(.label))
                })
            }.padding()
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal)
                
            Spacer()
            Text("18")
                .font(.system(size: 100))
            HStack{
                Image(systemName: "snowflake")
                Text("Snow")
            }
            .font(.title.bold())
            .frame(width: 140, height: 40)
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .offset(y: -60)
           
            Spacer()
            HStack{
                Button(action: {}, label: {
                    HStack{
                        Image(systemName: "paperplane.fill")
                        Text("Al-Qassim")
                    }
                    .font(.title.bold())
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                }).foregroundColor(Color(.label))
                Spacer()
            }.padding()
                .padding(.bottom, 40)
        }.ignoresSafeArea()
            .background(
                VortexView(snow) {
                    Circle()
                        .fill(.white)
                        .frame(width: 10)
                        .tag("circle")
                }
            )
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
