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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func didTapSideMenu(_ sender: UIBarButtonItem) {
        
        guard let sideMenuViewController = storyboard?.instantiateViewController(withIdentifier:
                "SideMenuViewController") else { return }
            
            sideMenuViewController.modalPresentationStyle = .overCurrentContext
            sideMenuViewController.transitioningDelegate = self
            present(sideMenuViewController, animated: true)
            
    }

    
}


