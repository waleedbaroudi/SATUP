//
//  ReadingSubViewController.swift
//  SATUP
//
//  Created by user on 17.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class ReadingSubViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var passage: UILabel!
    
    //First question
    @IBOutlet weak var firstQuestion: UILabel!
    //First question choices' labels
    @IBOutlet weak var firstQuestionFirstChoice: UILabel!
    @IBOutlet weak var firstQuestionSecondChoice: UILabel!
    @IBOutlet weak var firstQuestionThirdChoice: UILabel!
    @IBOutlet weak var firstQuestionFourthChoice: UILabel!
    @IBOutlet weak var firstQuestionFifthChoice: UILabel!
    
    //Buttons of first question
    @IBOutlet weak var firstQuestionChoiceA: UIButton!
    @IBOutlet weak var firstQuestionChoiceB: UIButton!
    @IBOutlet weak var firstQuestionChoiceC: UIButton!
    @IBOutlet weak var firstQuestionChoiceD: UIButton!
    @IBOutlet weak var firstQuestionChoiceE: UIButton!
    
    //Second question
    @IBOutlet weak var secondQuestion: UILabel!
    //Second question choices' labels
    @IBOutlet weak var secondQuestionFirstChoice: UILabel!
    @IBOutlet weak var secondQuestionSecondChoice: UILabel!
    @IBOutlet weak var secondQuestionThirdChoice: UILabel!
    @IBOutlet weak var secondQuestionFourthChoice: UILabel!
    @IBOutlet weak var secondQuestionFifthChoice: UILabel!
    
    //Buttons of second question
    @IBOutlet weak var secondQuestionChoiceA: UIButton!
    @IBOutlet weak var secondQuestionChoiceB: UIButton!
    @IBOutlet weak var secondQuestionChoiceC: UIButton!
    @IBOutlet weak var secondQuestionChoiceD: UIButton!
    @IBOutlet weak var secondQuestionChoiceE: UIButton!

    //Third question
    @IBOutlet weak var thirdQuestion: UILabel!
    //Third question choices' labels
    @IBOutlet weak var thirdQuestionFirstChoice: UILabel!
    @IBOutlet weak var thirdQuestionSecondChoice: UILabel!
    @IBOutlet weak var thirdQuestionThirdChoice: UILabel!
    @IBOutlet weak var thirdQuestionFourthChoice: UILabel!
    @IBOutlet weak var thirdQuestionFifthChoice: UILabel!
    
    //Buttons of third question
    @IBOutlet weak var thirdQuestionChoiceA: UIButton!
    @IBOutlet weak var thirdQuestionChoiceB: UIButton!
    @IBOutlet weak var thirdQuestionChoiceC: UIButton!
    @IBOutlet weak var thirdQuestionChoiceD: UIButton!
    @IBOutlet weak var thirdQuestionChoiceE: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setComponents()
        // Do any additional setup after loading the view.
    }
    
    
    func setComponents(){
        titleLabel.text = readingTitle
        passage.text = passageText
        firstQuestion.text = question1
        secondQuestion.text = question2
        thirdQuestion.text = question3
    }
    
    var readingTitle: String?
    var passageText: String?
    var question1: String?
    var question2: String?
    var question3: String?

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
