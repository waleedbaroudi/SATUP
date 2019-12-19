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
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    //Questions views
    @IBOutlet weak var q1A1: UIView!
    @IBOutlet weak var q1A2: UIView!
    @IBOutlet weak var q1A3: UIView!
    @IBOutlet weak var q1A4: UIView!
    @IBOutlet weak var q1A5: UIView!
    
    @IBOutlet weak var q2A1: UIView!
    @IBOutlet weak var q2A2: UIView!
    @IBOutlet weak var q2A3: UIView!
    @IBOutlet weak var q2A4: UIView!
    @IBOutlet weak var q2A5: UIView!
    
    @IBOutlet weak var q3A1: UIView!
    @IBOutlet weak var q3A2: UIView!
    @IBOutlet weak var q3A3: UIView!
    @IBOutlet weak var q3A4: UIView!
    @IBOutlet weak var q3A5: UIView!
    
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
    
    var correctAnswers : [Int] = []
    
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
    
    //Choices indicies
    private let questionOneIndex : Int = 0
    private let questionTwoIndex : Int = 1
    private let questionThreeIndex : Int = 2

    private var submittedAnswers : [Int] = [-1, -1 ,-1]
    
    @IBAction func choiceAQuestion1Action(_ sender: Any) {
        submittedAnswers[questionOneIndex] = choiceA
        answerSelected(question: questionOneIndex)
        q1A1.backgroundColor = Colors.questionaSelectedColor()
       
      }
    @IBAction func choiceBQuestion1Action(_ sender: Any) {
        submittedAnswers[questionOneIndex] = choiceB
        answerSelected(question: questionOneIndex)
        q1A2.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceCQuestion1Action(_ sender: Any) {
        submittedAnswers[questionOneIndex] = choiceC
        answerSelected(question: questionOneIndex)
        q1A3.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceDQuestion1Action(_ sender: Any) {
        submittedAnswers[questionOneIndex] = choiceD
        answerSelected(question: questionOneIndex)
        q1A4.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceEQuestion1Action(_ sender: Any) {
        submittedAnswers[questionOneIndex] = choiceE
        answerSelected(question: questionOneIndex)
        q1A5.backgroundColor = Colors.questionaSelectedColor()
      }
    
    
    @IBAction func choiceAQuestion2Action(_ sender: Any) {
        submittedAnswers[questionTwoIndex] = choiceA
        answerSelected(question: questionTwoIndex)
        q2A1.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceBQuestion2Action(_ sender: Any) {
        submittedAnswers[questionTwoIndex] = choiceB
        answerSelected(question: questionTwoIndex)
        q2A2.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceCQuestion2Action(_ sender: Any) {
        submittedAnswers[questionTwoIndex] = choiceC
        answerSelected(question: questionTwoIndex)
        q2A3.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceDQuestion2Action(_ sender: Any) {
        submittedAnswers[questionTwoIndex] = choiceD
        answerSelected(question: questionTwoIndex)
        q2A4.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceEQuestion2Action(_ sender: Any) {
        submittedAnswers[questionTwoIndex] = choiceE
        answerSelected(question: questionTwoIndex)
        q2A5.backgroundColor = Colors.questionaSelectedColor()
      }
    
    @IBAction func choiceAQuestion3Action(_ sender: Any) {
        submittedAnswers[questionThreeIndex] = choiceA
        answerSelected(question: questionThreeIndex)
        q3A1.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceBQuestion3Action(_ sender: Any) {
        submittedAnswers[questionThreeIndex] = choiceB
        answerSelected(question: questionThreeIndex)
        q3A2.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceCQuestion3Action(_ sender: Any) {
        submittedAnswers[questionThreeIndex] = choiceC
        answerSelected(question: questionThreeIndex)
        q3A3.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceDQuestion3Action(_ sender: Any) {
        submittedAnswers[questionThreeIndex] = choiceD
        answerSelected(question: questionThreeIndex)
        q3A4.backgroundColor = Colors.questionaSelectedColor()
      }
    @IBAction func choiceEQuestion3Action(_ sender: Any) {
        submittedAnswers[questionThreeIndex] = choiceE
        answerSelected(question: questionThreeIndex)
        q3A5.backgroundColor = Colors.questionaSelectedColor()
      }
    
    @IBAction func submitAction(_ sender: Any) {
         print("\(correctAnswers[0]) and \(correctAnswers[1]) and \(correctAnswers[2])")
        
        if correctAnswers[questionOneIndex] == submittedAnswers[questionOneIndex]{
            question1ViewMap[submittedAnswers[questionOneIndex]]?.backgroundColor = Colors.answerIsCorrect()
          } else {
              question1ViewMap[submittedAnswers[questionOneIndex]]?.backgroundColor = Colors.answerIsWrong()
          }
          if correctAnswers[questionTwoIndex] == submittedAnswers[questionTwoIndex]{
              question2ViewMap[submittedAnswers[questionTwoIndex]]?.backgroundColor = Colors.answerIsCorrect()
          } else {
              question2ViewMap[submittedAnswers[questionTwoIndex]]?.backgroundColor = Colors.answerIsWrong()
          }
          if correctAnswers[questionThreeIndex] == submittedAnswers[questionThreeIndex]{
              question3ViewMap[submittedAnswers[questionThreeIndex]]?.backgroundColor = Colors.answerIsCorrect()
          } else {
              question3ViewMap[submittedAnswers[questionThreeIndex]]?.backgroundColor = Colors.answerIsWrong()
          }
    }
    
    private var choiceViewArray : [UIView] = []
    private var question1ViewArray : [UIView] = []
    private var question2ViewArray : [UIView] = []
    private var question3ViewArray : [UIView] = []
    
    private var question1ViewMap : [Int: UIView] = [:]
    private var question2ViewMap : [Int: UIView] = [:]
    private var question3ViewMap : [Int: UIView] = [:]
     
    override func viewDidLoad() {
        super.viewDidLoad()
        setComponents()
        //Setting the colors
        scrollView.backgroundColor = Colors.primaryColor()
        contentView.backgroundColor = Colors.primaryColor()
        titleLabel.textColor = Colors.textColor()
        firstQuestion.textColor = Colors.textColor()
        secondQuestion.textColor = Colors.textColor()
        thirdQuestion.textColor = Colors.textColor()
        
        
        //_________________________________________________
        choiceViewArray = [q1A1, q1A2, q1A3, q1A4, q1A5, q2A1, q2A2, q2A3, q2A4, q2A5, q3A1, q3A2, q3A3, q3A4, q3A5]
        loadOrResetChoices(viewList: choiceViewArray)
        
        question1ViewArray = [q1A1, q1A2, q1A3, q1A4, q1A5]
        question2ViewArray = [q2A1, q2A2, q2A3, q2A4, q2A5]
        question3ViewArray = [q3A1, q3A2, q3A3, q3A4, q3A5]
        
        question1ViewMap = [choiceA:q1A1, choiceB:q1A2, choiceC:q1A3, choiceD:q1A4, choiceE:q1A5]
        question2ViewMap = [choiceA:q2A1, choiceB:q2A2, choiceC:q2A3, choiceD:q2A4, choiceE:q2A5]
        question3ViewMap = [choiceA:q3A1, choiceB:q3A2, choiceC:q3A3, choiceD:q3A4, choiceE:q3A5]
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
    
    func loadOrResetChoices(viewList: [UIView]){
        for view in viewList {
            view.layer.shadowColor = UIColor.black.cgColor
            view.layer.shadowRadius = 2
            view.layer.shadowOpacity = 0.2
            view.layer.shadowOffset = CGSize(width: 0, height: 2)
            view.backgroundColor = Colors.borderColor()
        }
    }
    //Reset all other selected answers of a certain question.
    func answerSelected(question: Int){
        switch question {
        case 0:
            loadOrResetChoices(viewList: question1ViewArray)
        case 1:
            loadOrResetChoices(viewList: question2ViewArray)
        case 2:
            loadOrResetChoices(viewList: question3ViewArray)
        default:
            loadOrResetChoices(viewList: choiceViewArray)
        }
    }
}
