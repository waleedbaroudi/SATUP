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
    var image: UIImageView?
    var subjectDescription: String?
    var example: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        subjectLabel.text = subject
        descriptionLabel.text = subjectDescription
        exampleContent.text = example
        // Do any additional setup after loading the view.
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
