//
//  MyPointViewController.swift
//  TossBenefitTab
//
//  Created by Wodnd on 3/10/24.
//

import UIKit

class MyPointViewController: UIViewController {

    @IBOutlet weak var pointLabel: UILabel!
    
    var point: MyPoint = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
       
    }
}
