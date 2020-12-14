//
//  WeekView.swift
//  Weather
//
//  Created by Илья Селиванов  on 14.12.2020.
//

import SwiftUI

struct WeekView: View {
    // Call Data
    var weeklyData : [Weeks]
    var columns = Array(repeating: GridItem(.flexible()), count: 1)
    
    var body: some View {
        LazyHGrid(rows: columns) {
            ForEach(weeklyData) { week in
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color("cardColor"))
                        .frame(width: 100, height: 150)
                        .cornerRadius(5)
                        .overlay(VStack(alignment: .center) {
                            Text(week.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("textColor"))
                            Image(week.image)
                                .resizable()
                                .renderingMode(.original)
                                .foregroundColor(Color("imageColor"))
                                .frame(width: 40, height: 40)
                            Text(week.data)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("darkText"))
                    })
                }
            }
        }
    }
}

struct Weeks : Identifiable {
    var id: Int
    var title: String
    var image: String
    var data: String
}

var weeklyData = [
    Weeks(id: 0, title: "Sun", image: "cloud.heavyrain.fill", data: "-15º"),
    Weeks(id: 1, title: "Mon", image: "cloud.heavyrain.fill", data: "-13º"),
    Weeks(id: 2, title: "Tue", image: "cloud.bolt.fill", data: "-12º"),
    Weeks(id: 3, title: "Wed", image: "cloud.heavyrain.fill", data: "5º"),
    Weeks(id: 4, title: "Thr", image: "cloud.bolt.fill", data: "-3º"),
    Weeks(id: 5, title: "Fri", image: "cloud.heavyrain.fill", data: "-1º"),
    Weeks(id: 6, title: "Sat", image: "cloud.bolt.fill", data: "2º"),
]
