//
//  VocabPopupViewController.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class VocabPopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word
        // Do any additional setup after loading the view.
    }
    
 
    @IBOutlet weak var wordLabel: UILabel!
    var word: String?
    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
