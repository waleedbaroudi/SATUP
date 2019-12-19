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
    
    @IBOutlet weak var submitButton: UIButton!
    
    var readingTitle: String?
    var passageText: String?
    var question1: String?
    var question2: String?
    var question3: String?
    
    var question1Choice1 : String?
    var question1Choice2 : String?
    var question1Choice3 : String?
    var question1Choice4 : String?
    var question1Choice5 : String?
    
    var question2Choice1 : String?
    var question2Choice2 : String?
    var question2Choice3 : String?
    var question2Choice4 : String?
    var question2Choice5 : String?
    
    var question3Choice1 : String?
    var question3Choice2 : String?
    var question3Choice3 : String?
    var question3Choice4 : String?
    var question3Choice5 : String?
 
    //Choices constants
    private let choiceA : Int = 0
    private let choiceB : Int = 1
    private let choiceC : Int = 2
    private let choiceD : Int = 3
    private let choiceE : Int = 4
    
    
    
    private var submittedAnswers : [Int] = [-1, -1 ,-1]

    @IBAction func choiceAQuestion1Action(_ sender: Any) {
      }
    @IBAction func choiceBQuestion1Action(_ sender: Any) {
      }
    @IBAction func choiceCQuestion1Action(_ sender: Any) {
      }
    @IBAction func choiceDQuestion1Action(_ sender: Any) {
      }
    @IBAction func choiceEQuestion1Action(_ sender: Any) {
      }
    
    @IBAction func choiceAQuestion2Action(_ sender: Any) {
      }
    @IBAction func choiceBQuestion2Action(_ sender: Any) {
      }
    @IBAction func choiceCQuestion2Action(_ sender: Any) {
      }
    @IBAction func choiceDQuestion2Action(_ sender: Any) {
      }
    @IBAction func choiceEQuestion2Action(_ sender: Any) {
      }
    
    @IBAction func choiceAQuestion3Action(_ sender: Any) {
      }
    @IBAction func choiceBQuestion3Action(_ sender: Any) {
      }
    @IBAction func choiceCQuestion3Action(_ sender: Any) {
      }
    @IBAction func choiceDQuestion3Action(_ sender: Any) {
      }
    @IBAction func choiceEQuestion3Action(_ sender: Any) {
      }
    
    @IBAction func submitAction(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setComponents()
    }
    
    func setComponents(){
        titleLabel.text = readingTitle
        passage.text = passageText
        firstQuestion.text = question1
        secondQuestion.text = question2
        thirdQuestion.text = question3
        //Choices of first question
        firstQuestionFirstChoice.text = question1Choice1
        firstQuestionSecondChoice.text = question1Choice2
        firstQuestionThirdChoice.text = question1Choice3
        firstQuestionFourthChoice.text = question1Choice4
        firstQuestionFifthChoice.text = question1Choice5
        //Choices of second question
        secondQuestionFirstChoice.text = question2Choice1
        secondQuestionSecondChoice.text = question2Choice2
        secondQuestionThirdChoice.text = question2Choice3
        secondQuestionFourthChoice.text = question2Choice4
        secondQuestionFifthChoice.text = question2Choice5
        //Choices of third question
        thirdQuestionFirstChoice.text = question3Choice1
        thirdQuestionSecondChoice.text = question3Choice2
        thirdQuestionThirdChoice.text = question3Choice3
        thirdQuestionFourthChoice.text = question3Choice4
        thirdQuestionFifthChoice.text = question3Choice5
    }
}
