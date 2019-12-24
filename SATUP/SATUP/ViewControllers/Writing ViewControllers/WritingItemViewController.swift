//
//  WritingItemViewController.swift
//  SATUP
//
//  Created by user on 16.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class WritingItemViewController: UIViewController {
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var videoButton: UIView!
    
    var text: String?
    var subject: String?
    override func viewDidLoad() {
        super.viewDidLoad()
//        textLabel.text = text
        subjectLabel.text = subject
        let data = Data(text!.utf8)
        if let attString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil){
            textLabel.attributedText = attString
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Setting colors
        setColors()
    }
    func setColors() {
        self.view.backgroundColor = Colors.primaryColor()
        backView.backgroundColor = Colors.primaryColor()
        textLabel.textColor = Colors.textColor()
        videoButton.tintColor = Colors.secondaryColor()
    }
        }
    

