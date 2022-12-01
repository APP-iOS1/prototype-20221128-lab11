//
//  AddedListView.swift
//  PlaceSound
//
//  Created by TEDDY on 11/30/22.
//

import SwiftUI

struct AddedListView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    Text("Heard From")
                    Text("Haymarket")
                        .fontWeight(.bold)
                        .foregroundColor(.placeSoundPurple)
                    Spacer()
                }
                .font(.title2)
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
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
                            .frame(width: 60, height: 60)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            HStack {
                                Text("WANTED")
                                    .font(.title3)
                                    .fontWeight(.medium)
                            }
                            Text("TED")
                                .font(.headline)
                                .foregroundColor(.gray)
                            HStack {
                                Spacer()
                                Button(action: {
                                }, label: {
                                    Label("more", systemImage: "ellipsis")
                                        .labelStyle(.iconOnly)
                                        .foregroundColor(.gray)
                                        .offset(y: -20)
                                })
                            }
                        }
                    }
                    .frame(height: 60)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/110/78/496/11078496_20221014153848_500.jpg?90c93d5c7f38394169a4c5c70683eb0b")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 60, height: 60)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Antifragile")
                                    .font(.title3)
                                    .fontWeight(.medium)
                            }
                            Text("Le Serrafim")
                                .font(.headline)
                                .foregroundColor(.gray)
                            HStack {
                                Spacer()
                                Button(action: {
                                }, label: {
                                    Label("more", systemImage: "ellipsis")
                                        .labelStyle(.iconOnly)
                                        .foregroundColor(.gray)
                                        .offset(y: -20)
                                })
                            }
                        }
                    }
                    .frame(height: 60)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://img.hiphople.com/files/attach/images/6005854/659/423/023/0564c3d44e5544c9e9ec829e509c82c7.jpg")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 60, height: 60)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            HStack {
                                Text("2022 Fr33style3")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                Image(systemName: "e.square.fill")
                            }
                            Text("JUSTHIS")
                                .font(.headline)
                                .foregroundColor(.gray)
                            HStack {
                                Spacer()
                                Button(action: {
                                }, label: {
                                    Label("more", systemImage: "ellipsis")
                                        .labelStyle(.iconOnly)
                                        .foregroundColor(.gray)
                                        .offset(y: -20)
                                })
                            }
                        }
                    }
                    .frame(height: 60)
                    .padding(.horizontal)
                    
                    Divider()
                    
                    HStack {
                        ZStack {
                            AsyncImage(url: URL(string: "https://image.bugsm.co.kr/album/images/500/40782/4078284.jpg")) { image in
                                image
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 60, height: 60)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            HStack {
                                Text("BENZO")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                Image(systemName: "e.square.fill")
                            }
                            Text("Kid Milli")
                                .font(.headline)
                                .foregroundColor(.gray)
                            HStack {
                                Spacer()
                                Button(action: {
                                }, label: {
                                    Label("more", systemImage: "ellipsis")
                                        .labelStyle(.iconOnly)
                                        .foregroundColor(.gray)
                                        .offset(y: -20)
                                })
                            }
                        }
                    }
                    .frame(height: 60)
                    .padding(.horizontal)
                    
                    Divider()
//
//                    HStack {
//                        ZStack {
//                            AsyncImage(url: URL(string: "https://cdnimg.melon.co.kr/cm2/album/images/110/34/298/11034298_20220822101843_500.jpg/melon/optimize/90")) { image in
//                                image
//                                    .resizable()
//                                    .clipShape(RoundedRectangle(cornerRadius: 5))
//                            } placeholder: {
//                                ProgressView()
//                            }
//                            .frame(width: 60, height: 60)
//                        }
//                        Spacer()
//                        VStack(alignment: .leading) {
//                            HStack {
//                                Text("After Like")
//                                    .font(.title3)
//                                    .fontWeight(.medium)
//                                    .offset(y: 7)
//                            }
//                            Text("IVE")
//                                .font(.headline)
//                                .foregroundColor(.gray)
//                                .offset(y: 7)
//                            HStack {
//                                Spacer()
//                                Button(action: {
//                                }, label: {
//                                    Label("more", systemImage: "")
//                                        .labelStyle(.iconOnly)
//                                        .foregroundColor(.gray)
//                                        .offset(y: -20)
//                                })
//                                Image(systemName: "play.fill")
//                                    .offset(x: -50, y: -30)
//                                Image(systemName: "pause.fill")
//                                    .offset(x: -40, y: -30)
//                                Image(systemName: "forward.fill")
//                                    .offset(x: -30, y: -30)
//                            }
//                        }
//                    }
//                    .frame(height: 60)
//                    .padding(.horizontal)
//                    .offset(y:350)
//
//                    Divider()
//                        .offset(y:260)
                    
                }
            }
        }
    }
}

struct AddedListView_Previews: PreviewProvider {
    static var previews: some View {
        AddedListView()
    }
}
