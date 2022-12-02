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
    
    userData(mainImage: "musicImg2", title: "IU", description: "Palette"),
    userData(mainImage: "musicImg", title: "IU", description: "꽃갈피 둘"),
    userData(mainImage: "musicImg3", title: "IU", description: "이 지금"),
    userData(mainImage: "musicImg2", title: "IU", description: "밤편지"),
]


struct MyLogView: View {
    
    @State private var selctedDate: String = ""
    @State private var isMyPageActive: Bool = false
    @State private var userDate: [String] = [ "All" ,"Today", "Yesterday", "3months ago", "6months ago"]
    
    @State private var userDataArray: [String:String] = ["All":"Apgujeong Rodeo Street", "Today":"Gangnam Station", "Yesterday":"Apple garosu-gil", "3monthes ago":"Sinchon"]
    
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
                    //                                                .offset(y: -30)
                        .padding(.top, -15)
                        .padding(.trailing)
                }
            }
            
            
            //            NavigationView {
            //                VStack {
            //
            //
            //
            //                }.navigationBarItems(trailing:
            //                                        NavigationLink(destination: SettingView(), isActive: $isMyPageActive) {
            //                    Image(systemName: "gearshape")
            //
            //                })
            //
            //            }
            
            
            // user 프로필
            Image("mylog_profileimg")
                .resizable()
                .cornerRadius(100)
                .frame(width: 90, height: 90)
            Text("ILOVEU🧸")
                .font(.title3)
                .bold()
            Divider()
            
            // 날짜 필터 Picker
            HStack {
                Text("All \(15)")
                    .bold()
                Picker("All", selection: $selctedDate) {
                    ForEach(userDate, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                
                Spacer()
                Button {
                    // 새로 연결할 뷰 (준비중 입니다...)
                } label: {
                    Text("Edit")
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
