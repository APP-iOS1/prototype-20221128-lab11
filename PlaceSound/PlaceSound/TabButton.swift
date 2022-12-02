//
//  TabButton.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/29.
//

import SwiftUI

struct TabButton: View {
    @State private var isNearByShowingSheet = false
    @State private var isMyLogClicked = false
  
    var body: some View {
        //        NavigationStack {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.placeSoundWhite)
                    .frame(width: 350, height: 80)
                    .shadow(radius: 3)
                HStack {
                    Spacer()
                    Button(action: {
                        isNearByShowingSheet.toggle()
                    }, label: {
                        VStack{
                            VStack{
                                Image(systemName: "waveform.and.magnifyingglass")
                                    .font(.title)
                                Text("Nearby")
                                    .font(.caption)
                                    .padding(1)
                            }
                            // nearBy버튼이 눌리면 색상변경, 토글이 내려가면 다시 홈뷰로
                            .foregroundColor(self.isNearByShowingSheet ? .placeSoundPurple : .placeSoundGray)
                        }
                    })
                    .sheet(isPresented: $isNearByShowingSheet, content: {
                        NearbyView()
                            .presentationDetents([.medium, .large])
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
                        // 조건식에 || 마이로그뷰 조건 추가 예정
                        .foregroundColor(self.isNearByShowingSheet || isMyLogClicked  ? .placeSoundGray : .placeSoundPurple)
                    })
                    
                    Spacer()
                    //네비게이션 링크가 곧 버튼 역할을 하여 화면을 넘기는 것임
                    NavigationLink(destination: MyLogView()) {
//                        Button(action: {
//
//                        }, label: {
                            ZStack {
                                VStack{
                                    Image(systemName: "clock.arrow.circlepath")
                                        .font(.title)
                                    Text("MyLog")
                                        .font(.caption)
                                        .padding(1)
                                }
                                .foregroundColor(.placeSoundGray)
                                
                            }
//                        })
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
