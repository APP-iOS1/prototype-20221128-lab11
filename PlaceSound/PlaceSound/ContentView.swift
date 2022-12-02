//
//  ContentView.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/29.
//

import SwiftUI

// 커스텀 컬러를 불러오기 위한 익스텐션
extension Color{
    static let placeSoundPurple = Color("PlaceSoundPurple")
    static let placeSoundTextPurple = Color("PlaceSoundTextPurple")
    static let placeSoundOnboardingPurple = Color("PlaceSoundOnboardingPurple")
    static let placeSoundWhitetoBlack = Color("PlaceSoundWhitetoBlack")
    static let placeSoundGray = Color("PlaceSoundGray")
    static let placeSoundBlack = Color("PlaceSoundBlack")
    static let placeSoundWhite = Color("PlaceSoundWhite")
    static let lightGray = Color("lightgray")
    static let highlightYellow = Color("HighlightYellow")
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // 지도를 보여주는 홈 뷰를 가져옴
                HomeView()
                // 탭뷰 대신 사용할 탭 버튼을 불러옴
                TabButton()
                SearchBar()
                    .shadow(radius: 3)
                    .offset(y: -320)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
