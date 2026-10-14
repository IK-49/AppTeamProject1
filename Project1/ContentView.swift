//
//  ContentView.swift
//  Project1
//
//  Created by ikhokhar on 10/5/26.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.green, Color.mint], startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @State private var state: Float = 50.0

    var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button {
                        
                    } label: { Image(systemName: "chevron.down")
                    }.padding(.leading)
                    
                    Spacer()
                    
                    Text("Luv Is Rage 2 (Deluxe)").font(.title3).bold()
                    
                    Spacer()
                    
                    Button {
                        
                    } label: { Image(systemName: "ellipsis")
                    }.padding(.trailing)
                    
                }.padding(.vertical)
                Image("album").resizable().scaledToFit().padding(16).clipShape(RoundedRectangle(cornerRadius: 5))
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("20 Min").bold()
                            HStack {
                                Button {
                                    
                                } label : {Image(systemName: "e.square.fill")}
                                Text("Lil Uzi Vert")
                            }
                            
                        }.padding()
                        Spacer()
                        Button { } label: {Image(systemName: "checkmark.circle.fill")}.padding(.trailing)
                    }
                    Slider(value: $state, in: 0...100).tint(.gray).padding(.horizontal).scaleEffect(0.95)
                    HStack {
                        Button {} label: {Image(systemName: "shuffle")}.padding(.horizontal)
                        HStack {
                            Button {} label: {Image(systemName: "backward.end.fill")}.padding(.horizontal)
                            Button {} label: {Image(systemName: "play.circle.fill")}.padding(.horizontal).font(.largeTitle)
                            Button {} label: {Image(systemName: "forward.end.fill")}.padding(.horizontal)
                        }.font(.title)
                        Button {} label: {Image(systemName: "repeat")}.padding(.horizontal)
                    }.padding(.top)
                    
                }
                
            }
            .foregroundStyle(.white)
            
        }
    }
}

#Preview {
    ContentView()
}
