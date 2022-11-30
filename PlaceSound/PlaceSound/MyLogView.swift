//
//  MyLogView.swift
//  PlaceSound
//
//  Created by 윤예린, 박훈종 on 2022/11/29.
//

import SwiftUI

struct userData: Identifiable {
    var id = UUID()
    var mainImage: String
    var title: String
    var description: String
}

var listData: [userData] = [
    userData(mainImage: "musicImg", title: "아이유", description: "나는 가나의 안드레아이유가 아니유"),
    userData(mainImage: "musicImg2", title: "아이유", description: "아이유님의 상큼한 노래입니다"),
    userData(mainImage: "musicImg", title: "아이유", description: "아이유 짱짱짱짱짱"),
    userData(mainImage: "musicImg2", title: "아이유", description: "아이유님의 상콤달콤한 노래입니다"),
]

struct MyLogView: View {
    
    @State private var selctedDate: String = ""
    @State private var userDate: [String] = ["어제", "그저께", "3일전"]
    
    @State private var userDataArray: [String:String] = ["어제":"압구정 로데오거리", "그저께":"강남역 뱅뱅사거리", "3일전":"애플 가로수길"]
    
    var userName: String = "아이유"
    
    var body: some View {
        VStack {
    
            // 세팅뷰 연결
            HStack {
                NavigationLink {
                    SettingView()
                } label: {
                    Spacer()
                    Image(systemName: "gearshape")
                        .font(.title2)
//                        .resizable()
                        .foregroundColor(.placeSoundPurple)
//                        .frame(width: 30, height: 30)
//                        .offset(y: -30)
                        .padding(.top, -15)
                        .padding(.trailing)
                }
            }
            // user 프로필
            Image("mylog_profileimg")
                .resizable()
                .cornerRadius(100)
                .frame(width: 90, height: 90)
            Text("아이유베프테디팍🧸")
                .font(.title3)
                .bold()
            Divider()
            
            HStack {
                Text("전체 \(15)")
                    .bold()
                Picker("기간전체", selection: $selctedDate) {
                    ForEach(userDate, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                
                Spacer()
                Button {
                    // 새로 연결할 뷰 (준비중 입니다...)
                } label: {
                    Text("편집")
                }
                
            }.padding(.horizontal)
                .padding(.bottom, -5)
            
            List {
                LogListData(userDataArray: $userDataArray)
            }.listStyle(.plain)
        }
    }
}


struct LogListData: View {
    
    @Binding var userDataArray: [String:String]
    
    var body: some View {
        
        ForEach(userDataArray.sorted(by: >), id: \.key) { key, value in
            HStack {
                VStack(alignment: .leading) {
                    Text("\(key)")
                        .font(.headline)
                        .foregroundColor(.black)
                    Text("\(value)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            ScrollView(.horizontal) {
                HStack {
                    ForEach(listData) { item in
                        VStack {
                            
                            Image(item.mainImage)
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text(item.title)
                                .font(.headline)
                                .foregroundColor(.black)
                            Text(item.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
    }
}


struct MyLogView_Previews: PreviewProvider {
    static var previews: some View {
        MyLogView()
    }
}
