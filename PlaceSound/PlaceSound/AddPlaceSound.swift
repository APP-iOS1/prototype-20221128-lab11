//
//  AddPlaceSound.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/30.
//

import SwiftUI

struct AddPlaceSound: View {
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                AddPlaceSound_Header()
                Spacer()
                ScrollView {
                    PlaceSearch()
                    SongSearch()
                    //                    Spacer()
                    //                    SaveButton()
                }
            }
            VStack {
                Spacer()
                SaveButton()
            }
        }
    }
}

struct AddPlaceSound_Header: View {
    var body: some View {
        Text("Add Songs")
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.leading, 15.0)
        Divider()
    }
}

struct PlaceSearch: View {
    @State var inputPlace: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Place")
                .font(.title3)
                .fontWeight(.medium)
                .padding(.leading, 15.0)
                .foregroundColor(.placeSoundPurple)
            VStack {
                HStack {
//                    Text("Enter Place")
                    TextField("Enter Place", text: $inputPlace)
                        .padding(.leading, 15.0)
                    Spacer()
                }
                Divider()
            }
        }
        .padding(.bottom, 20.0)
    }
}

struct SongSearch: View {
    @State var searchSong: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Search Songs")
                .font(.title3)
                .fontWeight(.medium)
                .padding(.leading, 15.0)
                .foregroundColor(.placeSoundPurple)
            VStack {
                HStack {
                    TextField("Search Song", text: $searchSong)
                        .padding(.leading, 15.0)
                    Spacer()
                }
                Divider()
            }
            .padding(.bottom, 20.0)
//                .padding()
            AddedListView()
        }
    }
}

struct SaveButton: View {
    var body: some View {
        VStack {
            Button {
            } label: {
                ZStack {
                    Rectangle()
                        .cornerRadius(40)
                        .frame(width: 310, height: 50)
                    Text("Save")
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
        .frame(width: 390)
        .background(Color.white)
        .shadow(radius: 3)
    }
}

struct AddPlaceSound_Previews: PreviewProvider {
    static var previews: some View {
        AddPlaceSound()
    }
}
