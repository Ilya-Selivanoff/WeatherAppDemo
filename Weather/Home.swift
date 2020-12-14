//
//  Home.swift
//  Weather
//
//  Created by Илья Селиванов  on 14.12.2020.
//

import SwiftUI

struct Home: View {
    
    @State var search = ""
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(spacing: 10) {
                searchView(search: $search)
                ButtonView()
            }.padding(.leading, 20).padding(.bottom, 20)
            VStack(alignment: .leading, spacing: 10) {
                Text("Good Morning")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.white)
                
                Text("15 December, Monday")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.white)
            }.padding(.trailing, 90)
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 10) {
                        
                        WeatherView().padding(.top, 20)
                        WeatherCard().padding(.top, 25).padding(.leading, 40)
                        VStack {
                            VStack(alignment: .leading) {
                                Text("Weather with Week")
                                    .font(.system(size: 35, weight: .bold))
                                    .foregroundColor(Color("textColor"))
                                    .padding(.trailing, 50)
                                    .padding(.top, 20)
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    WeekView(weeklyData: weeklyData).tag(0)
                                        .padding(.leading, 45)
                                        .frame(height: 170)
                                }
                                .padding(.bottom, 35)
                                .shadow(color: Color("shadow"), radius: 5, x: 3, y: 3 )
                            }
                        }
                    }
                }
            }
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct searchView: View {
    
    @Binding var search : String
    
    var body: some View {
        VStack(spacing: 0) {
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("textColor"))
                    .padding(5)
                TextField("Search for place", text: $search)
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color("textColor"))
            }
            .frame(width: 250, height: 50, alignment: .leading)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color("darkBlue").opacity(0.6), radius: 4, x: 3, y: 3)
        }
    }
}


struct ButtonView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Button(action: {}) {
                 Image(systemName: "location")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("textColor"))
                    .padding(10)
                    .frame(width: 50, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color("darkBlue").opacity(0.6), radius: 4, x: 3, y: 3)
                }
                
                Button(action: {}) {
                 Image(systemName: "person")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("textColor"))
                    .padding(10)
                    .frame(width: 50, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color("darkBlue").opacity(0.6), radius: 4, x: 3, y: 3)
                }
            }
        }
    }
}

struct WeatherView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack(spacing: 10) {
                VStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color("cardColor"))
                        .frame(width: 330, height: 160)
                        .shadow(color: Color("shadow"), radius: 5, x: 3, y: 3)
                        .overlay( VStack(alignment: .leading) {
                            Text("Toglyatti")
                                .font(.system(size: 25, weight: .medium))
                                .foregroundColor(Color("textColor"))
                                .padding(.top, 13)
                                .padding(.trailing, 140)
                            HStack(spacing: 15) {
                                Text("-18º")
                                    .font(.system(size: 65, weight: .medium))
                                    .foregroundColor(Color("darkText"))
                                    .padding(.trailing, 80)
                                Image(systemName: "cloud.rain.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 65, height:65)
                                    .foregroundColor(Color("imageColor"))
                        }
                            Spacer()
                    }.padding(.bottom, 13))
                }
            }
        }
    }
}
