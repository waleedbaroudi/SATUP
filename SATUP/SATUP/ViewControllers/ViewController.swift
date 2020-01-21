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
    @IBOutlet weak var readingButton: UIButton!
    @IBOutlet weak var writingButton: UIButton!
    @IBOutlet weak var mathButton: UIButton!
    @IBOutlet weak var vocabButton: UIButton!
    
    @IBOutlet weak var readingBackgroundView: UIView!
    @IBOutlet weak var writingBackgroundView: UIView!
    @IBOutlet weak var mathBackgroundView: UIView!
    @IBOutlet weak var vocabularyBackgroundView: UIView!
    let transition = SlideAction()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readingButton.designButton()
        writingButton.designButton()
        mathButton.designButton()
        vocabButton.designButton()
        BookmarksDataSource.loadBookmarks()
    }

    override func viewWillAppear(_ animated: Bool) {
//       setColors()
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
            button.layer.shadowRadius = 3
            button.layer.shadowOpacity = 0.3
            button.layer.shadowOffset = CGSize(width: 0, height: 3)
}
    
    func setColors()  {
        navigationController?.navigationBar.barTintColor = Colors.secondaryColor()
        view.backgroundColor = Colors.primaryColor()
        readingBackgroundView.backgroundColor = Colors.borderColor()
        writingBackgroundView.backgroundColor = Colors.borderColor()
        mathBackgroundView.backgroundColor = Colors.borderColor()
        vocabularyBackgroundView.backgroundColor = Colors.borderColor()
    }
}
extension UIButton{
    func designButton() {
        self.backgroundColor = #colorLiteral(red: 1, green: 0.7484453321, blue: 0, alpha: 1)
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 1
    }
}
