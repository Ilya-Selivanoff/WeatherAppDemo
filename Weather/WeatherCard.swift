//
//  WeatherCard.swift
//  Weather
//
//  Created by Илья Селиванов  on 14.12.2020.
//

import SwiftUI

struct WeatherCard: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center) {
                    // 1st Card
                    VStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("cardColor"))
                            .frame(width: 280, height: 200)
                            .shadow(color: Color("shadow"), radius: 5, x: 3, y: 3)
                            .overlay(VStack(alignment: .leading) {
                                Text("Samara")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(Color("textColor"))
                                    .padding(.top, 25)
                                    .padding(.trailing, 40)
                                HStack(spacing: 15) {
                                    Text("-15º")
                                        .font(.system(size: 65, weight: .medium))
                                        .foregroundColor(Color("darkText"))
                                        .padding(.trailing, 40)
                                    Image(systemName: "cloud.sun.bolt.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 65, height: 65)
                                        .foregroundColor(Color("imageColor"))
                                }
                                Spacer()
                            }.padding(.bottom, 15))
                            .overlay(VStack(alignment: .leading) {
                                Spacer()
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 230, height: 50)
                                    .padding(.bottom, 10)
                                    .overlay(VStack(alignment: .leading) {
                                        HStack(alignment: .center, spacing: 25) {
                                            VStack(spacing: 0) {
                                                Text("12")
                                                    .font(.system(size: 23))
                                                    .foregroundColor(Color("textColor"))
                                                Text("Hour")
                                                    .font(.system(size: 8))
                                                    .foregroundColor(Color("textColor"))}
                                            
                                            VStack(spacing: 0) {
                                                Text("35")
                                                    .font(.system(size: 23))
                                                    .foregroundColor(Color("textColor"))
                                                Text("Min")
                                                    .font(.system(size: 8))
                                                    .foregroundColor(Color("textColor"))}
                                            
                                            VStack(spacing: 0) {
                                                Text("53")
                                                    .font(.system(size: 23))
                                                    .foregroundColor(Color("textColor"))
                                                Text("Sec")
                                                    .font(.system(size: 8))
                                                    .foregroundColor(Color("textColor"))}
                                        }.padding(.bottom, 10)
                            })
                        })
                        Spacer()
                    }
                    // 2nd Card
                    VStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color("cardColor"))
                            .frame(width: 280, height: 200)
                            .shadow(color: Color("shadow"), radius: 5, x: 3, y: 3)
                            .overlay(VStack(alignment: .leading) {
                                Text("Dimitrovgrad")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(Color("textColor"))
                                    .padding(.top, 25)
                                    .padding(.trailing, 40)
                                HStack(spacing: 15) {
                                    Text("-13º")
                                        .font(.system(size: 65, weight: .medium))
                                        .foregroundColor(Color("darkText"))
                                        .padding(.trailing, 40)
                                    Image(systemName: "cloud.sun.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 65, height: 65)
                                        .foregroundColor(Color("imageColor"))
                                }
                                Spacer()
                            }.padding(.bottom, 15))
                            .overlay(VStack(alignment: .leading) {
                                Spacer()
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 230, height: 50)
                                    .padding(.bottom, 10)
                                    .overlay(VStack(alignment: .leading) {
                                        HStack(alignment: .center, spacing: 25) {
                                            VStack(spacing: 0) {
                                                Text("10")
                                                    .font(.system(size: 23))
                                                    .foregroundColor(Color("textColor"))
                                                Text("Hour")
                                                    .font(.system(size: 8))
                                                    .foregroundColor(Color("textColor"))}
                                            
                                            VStack(spacing: 0) {
                                                Text("45")
                                                    .font(.system(size: 23))
                                                    .foregroundColor(Color("textColor"))
                                                Text("Min")
                                                    .font(.system(size: 8))
                                                    .foregroundColor(Color("textColor"))}
                                            
                                            VStack(spacing: 0) {
                                                Text("36")
                                                    .font(.system(size: 23))
                                                    .foregroundColor(Color("textColor"))
                                                Text("Sec")
                                                    .font(.system(size: 8))
                                                    .foregroundColor(Color("textColor"))}
                                        }.padding(.bottom, 10)
                            })
                        })
                        Spacer()
                    }
                    
                }
            }
        }
    }
}

struct WeatherCard_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCard()
    }
}
