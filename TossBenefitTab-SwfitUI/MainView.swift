//
//  ContentView.swift
//  TossBenefitTab-SwfitUI
//
//  Created by Wodnd on 3/13/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            List(){
                HStack(spacing: 20){
                    Image("ic_point")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    VStack(alignment: .leading){
                        Text("내 포인트")
                            .foregroundColor(.gray)
                        Text("0원")
                    }
                    .font(.system(size: 16, weight: .bold))
                }
                .listRowSeparator(.hidden)
                
                VStack(spacing: 20){
                    Image(systemName: "sparkles")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    Text("10원 받기")
                        .font(.system(size: 20, weight: .bold))
                    Button(action: {
                        print("clicked")
                    }, label: {
                        Text("누르고 10원 받기")
                            .font(.system(size: 16, weight: .bold))
                    })
                    .frame(width:160, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                }
                .padding(EdgeInsets(top: 30, leading: 100, bottom: 30, trailing: 100))
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .listRowSeparator(.hidden)
                
                HStack(spacing: 20){
                    Image("ic_point")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    VStack(alignment: .leading){
                        Text("내 포인트")
                        Text("0원")
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("혜택")
        }
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}
