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
    userData(mainImage: "musicImg2", title: "아이유", description: "Palette"),
    userData(mainImage: "musicImg", title: "아이유", description: "꽃갈피 둘"),
    userData(mainImage: "musicImg3", title: "아이유", description: "이 지금"),
    userData(mainImage: "musicImg2", title: "아이유", description: "밤편지"),
]

struct MyLogView: View {
    
    @State private var selctedDate: String = ""
    @State private var userDate: [String] = [ "전체기간" ,"오늘", "어제", "3개월전", "6개월전"]
    
    @State private var userDataArray: [String:String] = ["전체기간":"압구정 로데오거리", "오늘":"강남역 뱅뱅사거리", "어제":"애플 가로수길", "3개월전":"신촌 포장마차"]
    
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
            
            // 날짜 필터 Picker
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
                        VStack(alignment: .leading) {
                            Image(item.mainImage)
                                .resizable()
                                .frame(width: 150, height: 150)
                            Text(item.title)
                                .font(.headline)
                                .foregroundColor(.black)
                                .offset(x: 5)
                            Text(item.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .offset(x: 5)
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
