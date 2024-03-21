//
//  BenefitListView.swift
//  TossBenefitTab-SwfitUI
//
//  Created by Wodnd on 3/20/24.
//

import SwiftUI

struct BenefitListRow: View {
    
    @Binding var benefit: Benefit
    var body: some View {
        HStack(spacing: 20){
            Image(benefit.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            VStack(alignment: .leading){
                Text(benefit.description)
                    .foregroundColor(.gray)
                Text(benefit.title)
                    .foregroundColor(.blue)
            }
            .font(.system(size: 16, weight: .bold))
        }
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    BenefitListRow(benefit: .constant(Benefit.others[0]))
}
