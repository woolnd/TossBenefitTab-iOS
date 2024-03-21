//
//  ContentView.swift
//  TossBenefitTab-SwfitUI
//
//  Created by Wodnd on 3/13/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var vm =  MainViewModel()
    
    var body: some View {
        NavigationView{

            ScrollView{
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
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 0))
                .frame(maxWidth: .infinity, alignment: .leading)
                
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
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .frame(maxWidth: .infinity, minHeight: 250)
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                
                ForEach($vm.models){ $item in
                    BenefitListRow(benefit: $item)
                }
            }
            .navigationTitle("혜택")
        }
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}
