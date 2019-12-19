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
        typeLabel.text = type
        meaningLabel.text = meaning
        exampleLabel.text = example
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setColors()
    }
    @IBOutlet weak var bookmarkButton: UIButton!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var meaningLabel: UILabel!
    @IBOutlet weak var exampleLabel: UILabel!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var meaningHeaderLabel: UILabel!
    @IBOutlet weak var exampleHeaderLabel: UILabel!
    
    var word: String?
    var type: String?
    var meaning: String?
    var example: String?
    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    func setColors(){
        wordLabel.textColor = Colors.secondaryColor()
        typeLabel.textColor = Colors.tertiaryColor()
        typeLabel.textColor = Colors.tertiaryColor()
        meaningLabel.textColor = Colors.textColor()
        card.backgroundColor = Colors.primaryColor()
        divider.backgroundColor = Colors.secondaryColor()
        divider.alpha = 0.35
        meaningHeaderLabel.textColor = Colors.secondaryColor()
        exampleHeaderLabel.textColor = Colors.secondaryColor()
    }
    @IBAction func bookmark(_ sender: Any) {
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
