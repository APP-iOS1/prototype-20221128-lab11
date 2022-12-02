//
//  NearbyView.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/29.
//

import SwiftUI

struct NearbyView: View {
    
    // 거리 범위를 정하는 Picker에 사용할 목록
    var rangeList: [String] = ["500m", "1Km", "2Km", "4Km", "6Km"]
    
    // Picker에서 기본 인덱스를 지정해줄 상태 프로퍼티
    @State private var rangeListIndex = 0
    @State private var isRecommended_01: Bool = false
    @State private var isRecommended_02: Bool = false
    @State private var isRecommended_03: Bool = false
    @State private var isRecommended_04: Bool = false
    @State private var isRecommended_05: Bool = false
    @State private var isRecommended_06: Bool = false
    @State private var isRecommended_07: Bool = false
    
//    for index in 0...7 {
//        @State private var isRecom("\(index)"): Bool = false
//    }
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    Text("New York, NY")
                        .foregroundColor(.placeSoundPurple)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("")
                        .font(.title2)
                    // 범위를 지정해줄 Picker 선언
                    Picker(selection: $rangeListIndex, label: Text("Distance")) {
                        ForEach (0..<rangeList.count, id:\.self) {
                            Text(self.rangeList[$0])
                        }
                    }
                    Spacer()
                }
                .fontWeight(.semibold)
            }
            .padding(.horizontal)
            
            Divider()
            ScrollView {
                Group {
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/108/17/044/10817044_20211217151902_500.jpg?b245793ef63884f30ea5aa0315cb7b1e/melon/resize/282/quality/80/optimize")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.black)
                                        .opacity(0.6)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                }
                            })
                        }
                        VStack(alignment: .leading) {
                            Text("WANTED")
                                .fontWeight(.semibold)
                            Text("TED")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Image("AppleMusicBadge")
                                Spacer()
                                Button(action: {
                                    isRecommended_01.toggle()
                                }, label: {
                                    switch isRecommended_01 {
                                    case true:
                                        Label("remove", systemImage: "hand.thumbsup.fill")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.yellow)
                                    default:
                                        Label("remove", systemImage: "hand.thumbsup")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(10)
                    }
                    .frame(height: 130)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/110/74/452/11074452_20221011143552_500.jpg?99eda98baf5a99ac53768ea741f81c2a/melon/resize/282/sharpen/0x1")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.black)
                                        .opacity(0.6)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                }
                            })
                        }
                        VStack(alignment: .leading) {
                            Text("VISION")
                                .fontWeight(.semibold)
                            Text("Dreamcatcher")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Image("AppleMusicBadge")
                                Spacer()
                                Button(action: {
                                    isRecommended_02.toggle()
                                }, label: {
                                    switch isRecommended_02 {
                                    case true:
                                        Label("remove", systemImage: "hand.thumbsup.fill")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.yellow)
                                    default:
                                        Label("remove", systemImage: "hand.thumbsup")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(10)
                    }
                    .frame(height: 130)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/104/06/889/10406889_20200323160252_500.jpg?e33039a2858161fc3f20ed66bb28fb44/melon/resize/282/quality/80/optimize")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.black)
                                        .opacity(0.6)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                }
                            })
                        }
                        VStack(alignment: .leading) {
                            Text("GONE (Feat. Paloalto) (Prod. TOIL)")
                                .fontWeight(.semibold)
                            Text("Leellamarz, TOIL")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Image("AppleMusicBadge")
                                Spacer()
                                Button(action: {
                                    isRecommended_03.toggle()
                                }, label: {
                                    switch isRecommended_03 {
                                    case true:
                                        Label("remove", systemImage: "hand.thumbsup.fill")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.yellow)
                                    default:
                                        Label("remove", systemImage: "hand.thumbsup")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(10)
                    }
                    .frame(height: 130)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/110/78/496/11078496_20221014153848_500.jpg?90c93d5c7f38394169a4c5c70683eb0b/melon/resize/282/quality/80/optimize")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.black)
                                        .opacity(0.6)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                }
                            })
                        }
                        VStack(alignment: .leading) {
                            Text("ANTIFRAGILE")
                                .fontWeight(.semibold)
                            Text("LE SSERAFIM")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Image("AppleMusicBadge")
                                Spacer()
                                Button(action: {
                                    isRecommended_04.toggle()
                                }, label: {
                                    switch isRecommended_04 {
                                    case true:
                                        Label("remove", systemImage: "hand.thumbsup.fill")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.yellow)
                                    default:
                                        Label("remove", systemImage: "hand.thumbsup")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(10)
                    }
                    .frame(height: 130)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/105/54/246/10554246_20210325161233_500.jpg?304eb9ed9c07a16ec6d6e000dc0e7d91/melon/resize/282/quality/80/optimize")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.black)
                                        .opacity(0.6)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                }
                            })
                        }
                        VStack(alignment: .leading) {
                            Text("라일락")
                                .fontWeight(.semibold)
                            Text("아이유")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Image("AppleMusicBadge")
                                Spacer()
                                Button(action: {
                                    isRecommended_05.toggle()
                                }, label: {
                                    switch isRecommended_05 {
                                    case true:
                                        Label("remove", systemImage: "hand.thumbsup.fill")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.yellow)
                                    default:
                                        Label("remove", systemImage: "hand.thumbsup")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(10)
                    }
                    .frame(height: 130)
                    .padding(.horizontal)
                    
                    Divider()
                }
                Group {
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm/album/images/026/50/433/2650433_500.jpg?490bdcf53adce5304ac279dac9f832e3/melon/resize/282/quality/80/optimize")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.black)
                                        .opacity(0.6)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                }
                            })
                        }
                        VStack(alignment: .leading) {
                            Text("HEAVEN")
                                .fontWeight(.semibold)
                            Text("Troye Sivan")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Image("AppleMusicBadge")
                                Spacer()
                                Button(action: {
                                    isRecommended_06.toggle()
                                }, label: {
                                    switch isRecommended_06 {
                                    case true:
                                        Label("remove", systemImage: "hand.thumbsup.fill")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.yellow)
                                    default:
                                        Label("remove", systemImage: "hand.thumbsup")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(10)
                    }
                    .frame(height: 130)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm/album/images/101/00/191/10100191_500.jpg?0e733ba07eeb0fd8a39f04a8eb6291fd/melon/resize/282/quality/80/optimize")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 120, height: 120)
                            Button(action: {
                                
                            }, label: {
                                ZStack {
                                    Circle()
                                        .foregroundColor(.black)
                                        .opacity(0.6)
                                        .frame(width: 60, height: 60)
                                    Image(systemName: "play.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                }
                            })
                        }
                        VStack(alignment: .leading) {
                            Text("나의 사춘기에게")
                                .fontWeight(.semibold)
                            Text("볼빨간사춘기")
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Image("AppleMusicBadge")
                                Spacer()
                                Button(action: {
                                    isRecommended_07.toggle()
                                }, label: {
                                    switch isRecommended_07 {
                                    case true:
                                        Label("remove", systemImage: "hand.thumbsup.fill")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.yellow)
                                    default:
                                        Label("remove", systemImage: "hand.thumbsup")
                                            .labelStyle(.iconOnly)
                                            .foregroundColor(.gray)
                                    }
                                })
                            }
                        }
                        .padding(10)
                    }
                    .frame(height: 130)
                    .padding(.horizontal)
                    
                    Divider()
                }
            }
        }
    }
}

struct NearbyView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyView()
    }
}
