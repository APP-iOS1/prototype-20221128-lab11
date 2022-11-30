//
//  TabButton.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/29.
//

import SwiftUI

struct TabButton: View {
    @State private var showingSheet = false
    
    var body: some View {
//        NavigationStack {
            VStack {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 80)
                        .shadow(radius: 3)
                    HStack {
                        Spacer()
                        Button(action: {
                            showingSheet.toggle()
                        }, label: {
                            VStack{
                                VStack{
                                    Image(systemName: "star.fill")
                                        .font(.title)
                                    Text("Nearby")
                                        .font(.caption)
                                        .padding(1)
                                }
                            }
                        })
                        .sheet(isPresented: $showingSheet, content: {
                            NearbyView()
                                .presentationDetents([.fraction(0.3), .fraction(1)])
                        })
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "music.note.house.fill")
                                    .font(.title)
                                Text("Home")
                                    .font(.caption)
                                    .padding(1)
                            }
                        })
                        
                        Spacer()
                        NavigationLink(destination: MyLogView()) {
//                            Button(action: {
//                            }, label: {
                                ZStack {
                                    VStack{
                                        Image(systemName: "clock.arrow.circlepath")
                                            .font(.title)
                                        Text("MyLog")
                                            .font(.caption)
                                            .padding(1)
                                    }
                                }
//                            })
                        }
                        Spacer()
                    }
                }
            }
//        }
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        TabButton()
    }
}
