//
//  SectionDetailViewController.swift
//  SATUP
//
//  Created by user on 16.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class SectionDetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    var info: String?
    var sectionTitle: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let section = sectionTitle {
            titleLabel.text = "About the \(section) Part in the SAT"
            infoLabel.text = info
        }
        else{
            titleLabel.text = "UNKNOWN SECTION"
            infoLabel.text = ""
            }
        }
        // Do any additional setup after loading the view.
    }
    



