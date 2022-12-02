//
//  OnBoardingView.swift
//  PlaceSound
//
//  Created by 박훈종 on 2022/12/01.
//

import SwiftUI

private let onBoardingSteps = [
    OnBoardingStep(image: "onboarding1"),
    OnBoardingStep(image: "onboarding2"),
    OnBoardingStep(image: "onboarding3"),
    OnBoardingStep(image: "onboarding4")
]

struct OnBoardingStep: Identifiable {
    let id = UUID()
    let image: String
    //    let description: String
}

struct OnBoardingView: View {
    @State private var showLoginView: Bool = false
    @State private var currentStep = 0
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        VStack {
            ZStack {
                Color.placeSoundPurple
                    .edgesIgnoringSafeArea(.all)
                TabView(selection: $currentStep) {
                    ForEach(0..<onBoardingSteps.count, id: \.self) { it in
                        VStack {
                            Image(onBoardingSteps[it].image)
                                .resizable()
                                .frame(width: 250, height: 250)
                            
                            //                        Text(onBoardingSteps[it].description)
                            //                            .font(.title)
                            //                            .bold()
                        }
                        .tag(it)
                    }
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
                HStack {
                    ForEach(0..<onBoardingSteps.count, id: \.self) { it in
                        if it == currentStep {
                            Rectangle()
                                .frame(width: 20, height: 10)
                                .cornerRadius(10)
                                .background(Color.placeSoundPurple)
                        } else {
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.gray)
                        }
                    }
                }
          
            Button {
                if self.currentStep < onBoardingSteps.count - 1 {
                    self.currentStep += 1
                } else {
                    showLoginView = true
                    
                }
                
            } label: {
                Text(currentStep < onBoardingSteps.count - 1 ? "다음으로" : "시작하기")
                    .padding(15)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(14)
                    .font(.title)
                    .background(Color.placeSoundPurple)
                    .foregroundColor(.white)
            }
            .fullScreenCover(isPresented: $showLoginView) {
                ContentView()
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
