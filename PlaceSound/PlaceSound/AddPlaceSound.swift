//
//  AddPlaceSound.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/30.
//

import SwiftUI

struct AddPlaceSound: View {
    //    @State private var isClicked: Bool = false
    
    var body: some View {
//        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                Group {
                    Text("Place Sound 추가하기")
                        .fontWeight(.bold)
                        .padding(.leading, 15.0)
                    Divider()
                    //                        .padding(0)
                }
                Spacer()
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("place")
                            .padding(.leading, 15.0)
                        VStack {
                            HStack {
                                Text("장소를 입력해주세요")
                                    .padding(.leading, 15.0)
                                Spacer()
                            }
                            Divider()
                        }
                        .foregroundColor(.gray)
                    }
                    .padding(.bottom, 20.0)
                    
                    VStack {
                        HStack {
                            Text("Sound")
                            Spacer()
                        }
                            .padding(.leading, 15.0)
                        SearchBar()
                            .padding()
                        AddedListView()
                    }
                    //                .padding()
                    
                    Spacer()
                    VStack {
                        Spacer()
                        Button {
                            //                isClicked = true
                        } label: {
                            ZStack {
                                Rectangle()
                                    .cornerRadius(40)
                                    .frame(width: 310, height: 50)
                                Text("저장하기")
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                    }
                }
                
            }
         
//        }
    }
}

struct AddPlaceSound_Previews: PreviewProvider {
    static var previews: some View {
        AddPlaceSound()
    }
}
