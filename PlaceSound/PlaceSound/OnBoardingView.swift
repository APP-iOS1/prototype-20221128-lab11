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
        ZStack {
            Color.placeSoundOnboardingPurple
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    //                    Color.placeSoundPurple
                    //                        .edgesIgnoringSafeArea(.all)
                    TabView(selection: $currentStep) {
                        ForEach(0..<onBoardingSteps.count, id: \.self) { it in
                            VStack {
                                Image(onBoardingSteps[it].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 450)
                                
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
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.highlightYellow)
                                .frame(width: 20, height: 10)
                            //                                .cornerRadius(10)
                        } else {
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.lightGray)
                        }
                    }
                }
                .padding(.bottom)
                Button {
                    if self.currentStep < onBoardingSteps.count - 1 {
                        self.currentStep += 1
                    } else {
                        showLoginView = true
                        
                    }
                    
                } label: {
                    Text(currentStep < onBoardingSteps.count - 1 ? "Next" : "Start")
                        .fontWeight(.semibold)
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(14)
                        .font(.title)
                        .background(Color.white)
                        .foregroundColor(.placeSoundOnboardingPurple)
                }
                .fullScreenCover(isPresented: $showLoginView) {
                    ContentView()
                }
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
