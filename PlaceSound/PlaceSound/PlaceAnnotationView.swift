//
//  PlaceAnnotationView.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/30.
//

import SwiftUI

struct PlaceAnnotationView: View {
    @State private var showingPlayList = false
    @State private var showTitle = true
    
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                .foregroundColor(.white)
                .font(.callout)
                .padding(5)
                .background(Color.placeSoundPurple)
                .cornerRadius(10)
                .opacity(showTitle ? 0 : 1)
                .padding(.bottom, 5)
            
            Image("mapMarker")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35)
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
              showTitle.toggle()
            }
            showingPlayList.toggle()
        }
        .sheet(isPresented: $showingPlayList, content: {
            AddedListView()
                .presentationDetents([.fraction(0.3), .fraction(1)])
        })
      }
}

struct PlaceAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceAnnotationView(title: "Seoul")
    }
}
