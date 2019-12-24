//
//  MathItemViewController.swift
//  SATUP
//
//  Created by user on 18.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class MathItemViewController: UIViewController {
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var exampleLabel: UILabel!
    @IBOutlet weak var exampleContent: UILabel!
    @IBOutlet weak var videoButton: UIButton!
    
    var subject: String?
    var image: UIImage?
    var subjectDescription: String?
    var example: String?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        subjectLabel.text = subject
        descriptionLabel.text = subjectDescription
        exampleContent.text = example
        imageView.image = image
        
        // Do any additional setup after loading the view.
    }
    
    func setColors() {
        self.view.backgroundColor = Colors.primaryColor()
        
        
    }


}
