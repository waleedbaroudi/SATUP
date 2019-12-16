//
//  ViewController.swift
//  SATUP
//
//  Created by user on 13.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit
extension ViewController : UIViewControllerTransitioningDelegate {

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source:
        UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        transition.isPresenting = true
        return transition
    }
    func animationController(forDismissed dismissed: UIViewController)
        -> UIViewControllerAnimatedTransitioning? {
            
        transition.isPresenting = false
        return transition
    }
}

class ViewController: UIViewController {
    let transition = SlideAction()
    @IBOutlet weak var readingButton: UIButton!
    @IBOutlet weak var writingButton: UIButton!
    @IBOutlet weak var mathButton: UIButton!
    @IBOutlet weak var vocabularyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = Colors.borderColor()
        view.backgroundColor = Colors.borderColor()
        setButtonShadow(button: readingButton)
        setButtonShadow(button: writingButton)
        setButtonShadow(button: mathButton)
        setButtonShadow(button: vocabularyButton)
    }
    @IBAction func didTapSideMenu(_ sender: UIBarButtonItem) {
        guard let sideMenuViewController = storyboard?.instantiateViewController(withIdentifier:
                "SideMenuViewController") else { return }
            sideMenuViewController.modalPresentationStyle = .overCurrentContext
            sideMenuViewController.transitioningDelegate = self
            present(sideMenuViewController, animated: true)
            
    }
    
    func setButtonShadow (button: UIButton) {
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowRadius = 4
            button.layer.shadowOpacity = 0.5
            button.layer.shadowOffset = CGSize(width: 0, height: 4)
}
    
}

