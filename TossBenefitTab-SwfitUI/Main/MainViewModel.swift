//
//  MainViewModel.swift
//  TossBenefitTab-SwfitUI
//
//  Created by Wodnd on 3/20/24.
//

import Foundation

final class MainViewModel: ObservableObject{
    @Published var models: [Benefit] = Benefit.others
}
