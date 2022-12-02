//
//  PlaceSoundApp.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/29.
//

import SwiftUI

@main
struct PlaceSoundApp: App {
    
    init() {
        Thread.sleep(forTimeInterval: 2)
    }
    
    var body: some Scene {
        WindowGroup {
            OnBoardingView()
        }
    }
}
