//
//  ContentView.swift
//  Weather
//
//  Created by Илья Селиванов  on 14.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("bg"))
            .ignoresSafeArea(.all, edges: .all)
            RoundedRectangle(cornerRadius: 55, style: .circular)
                .fill(Color("blue"))
                .frame(width: 420, height: 400)
                .padding(.bottom, 530)
            
            VStack(alignment: .leading) {
                Home().padding(.top, 100)
                Spacer()
            }
                
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
