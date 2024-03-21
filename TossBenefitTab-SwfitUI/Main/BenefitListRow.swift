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
        HStack{
            Image(benefit.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            VStack{
                Text(benefit.description)
                Text(benefit.title)
            }
        }
    }
}

#Preview {
    BenefitListRow(benefit: .constant(Benefit.others[0]))
}
