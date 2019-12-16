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
    var sectionTitle: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let section = sectionTitle {
            titleLabel.text = "About the \(section) Part in the SAT"}
        else{
            titleLabel.text = "UNKNOWN SECTION"
            }
        }
        // Do any additional setup after loading the view.
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


