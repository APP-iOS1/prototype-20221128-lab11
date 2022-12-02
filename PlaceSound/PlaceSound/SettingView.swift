//
//  SettingView.swift
//  PlaceSound
//
//  Created by 윤예린 on 2022/11/29.
//

import SwiftUI

struct SettingView: View {
    @State private var onStart: Bool = false
    @State private var haptic: Bool = true
    @State private var onSync: Bool = false
    //@State private var onStart = false
    
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .foregroundColor(Color("lightgray"))
                    .edgesIgnoringSafeArea(.top)
                StreamingList(onSync: $onSync)
            }
            SetList(onStart: $onStart, haptic: $haptic)
        }
    }
}

struct SetList: View {
    @Binding var onStart: Bool
    @Binding var haptic: Bool
    
    var body: some View {
        HStack {
            Text("PREFERENCES")
                .font(.callout)
                .foregroundColor(.gray)
                .fontWeight(.bold)
            Spacer()
        }
        .offset(y: 8)
        .padding()
        Divider()
        List {
            HStack {
                Text("iCloud Sync")
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack {
                Text("Notifications")
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack {
                Text("Location")
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Toggle(isOn: $onStart) {
                Text("PlaceSound on app start")
            }
            Toggle(isOn: $haptic) {
                Text("Haptic Feedback")
            } //toggle
        }
        .listStyle(.plain)
    }
}

struct StreamingList: View {
    @Binding var onSync: Bool
    
    var body: some View {
        VStack {
            Text("SETTINGS")
                .fontWeight(.bold)
            HStack {
                Text("STREAMING")
                    .font(.callout)
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 350, height: 220)
                    .cornerRadius(7)
                    .shadow(radius: 5)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("applemusic")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("APPLE MUSIC")
                            .fontWeight(.bold)
                    }
                    Text("Play full songs in PlaceSound. Add songs to your log.")
                        .font(.callout)
                        .foregroundColor(.gray)
                    Divider()
                    Toggle(isOn: $onSync) {
                        Text("Sync PlaceSound to Apple Music")
                            .font(.title3)
                    }
                    Text("Learn More")
                        .foregroundColor(.blue)
                }
                .padding(EdgeInsets(top: 5, leading: 40, bottom: 5, trailing: 40))
            }
            
        }
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
