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
    func setColors(){
        wordLabel.textColor = Colors.secondaryColor()
        upsideWordLabel.textColor = Colors.secondaryColor()
        typeLabel.textColor = Colors.tertiaryColor()
        meaningLabel.textColor = Colors.textColor()
        pronunciationButton.tintColor = Colors.secondaryColor()
    }
    
}
