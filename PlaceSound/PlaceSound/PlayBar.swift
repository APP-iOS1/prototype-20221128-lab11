//
//  PlayBar.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/29.
//

import SwiftUI

struct PlayBar: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/110/74/309/11074309_20221011124306_500.jpg?2e6a5aeb88688050c32c0abddd5d999f/melon/resize/282/quality/80/optimize")) { image in
                image
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            } placeholder: {
                ProgressView()
            }
            .frame(width: 70, height: 70)
            VStack(alignment: .leading) {
                Text("ILLELLA")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                Text("Mamamoo")
                    .foregroundColor(.white)
            }
            .padding(.leading, 10)
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.horizontal, 20)
            })
 
            Button(action: {
                
            }, label: {
                Image(systemName: "forward.end.fill")
                    .foregroundColor(.white)
                    .font(.title)
            })
        }
        .padding(10)
        .background(Color.accentColor)
    }
}

struct PlayBar_Previews: PreviewProvider {
    static var previews: some View {
        PlayBar()
    }
}
