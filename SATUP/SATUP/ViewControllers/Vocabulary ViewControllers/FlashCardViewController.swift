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
    @IBOutlet weak var upsideWordLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var meaningLabel: UILabel!
    @IBOutlet weak var pronunciationButton: UIButton!
    @IBOutlet weak var card: UIView!
    var word: Vocab?
    var vocabList: [Vocab] = []
    var upside: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word?.word
        upsideWordLabel.text = word?.word
        typeLabel.text = word?.type
        meaningLabel.text = word?.meaning
        // Do any additional setup after loading the view.
    }
    @IBAction func flip(_ sender: Any) {
        toggleVisibility()
        upside = !upside
        if(upside){
            word = vocabList[Int.random(in: 0...vocabList.count-1)]
            wordLabel.text = word?.word
            UIView.transition(with: card, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        } else{
            upsideWordLabel.text = word?.word
            typeLabel.text = word?.type
            meaningLabel.text = word?.meaning
            UIView.transition(with: card, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    
    func toggleVisibility(){
        wordLabel.isHidden = !wordLabel.isHidden
        upsideWordLabel.isHidden = !upsideWordLabel.isHidden
        typeLabel.isHidden = !typeLabel.isHidden
        pronunciationButton.isHidden = !pronunciationButton.isHidden
        meaningLabel.isHidden = !meaningLabel.isHidden
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
