//
//  FlashCardViewController.swift
//  SATUP
//
//  Created by user on 17.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class FlashCardViewController: UIViewController {
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var card: UIView!
    var word: String?
    var flipped: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word
        // Do any additional setup after loading the view.
    }
    @IBAction func flip(_ sender: Any) {
//        wordLabel.isHidden = !wordLabel.isHidden
//        if(flipped)
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
