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
    @IBOutlet weak var mathItemView: UIView!
    
    var subject: String?
    var image: UIImage?
    var subjectDescription: String?
    var example: String?
    var videoLink: String?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        subjectLabel.text = subject
        descriptionLabel.text = subjectDescription
        exampleContent.text = example
        if let subjectImage = image{
        imageView.image = subjectImage
        } else {
            imageView.removeFromSuperview()
        }
        setColors()
    }
    @IBAction func videoClicked(_ sender: Any) {
                UIApplication.shared.open(URL(string: videoLink!)! as URL, options: [:], completionHandler: nil)
                print("Clicked")
    }
    func setColors() {
        self.view.backgroundColor = Colors.primaryColor()
        descriptionLabel.textColor = Colors.textColor()
        exampleContent.textColor = Colors.textColor()
        mathItemView.backgroundColor = Colors.primaryColor()
    }

}
