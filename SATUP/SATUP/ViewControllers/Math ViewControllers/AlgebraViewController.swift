//
//  AlgebraViewController.swift
//  SATUP
//
//  Created by user on 18.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

extension AlgebraViewController: MathDataSourceDelegate{
    func mathLoaded(mathList: [Math]) {
        algebraList = mathList
        algebraTable.reloadData()
    }
}

extension AlgebraViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return algebraList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlgebraCell") as! MathCell
        let algebra = algebraList[indexPath.row]
        cell.subjectLabel.text = algebra.subject
        return cell
    }

}

class AlgebraViewController: UIViewController {

    @IBOutlet weak var tabBarView: UITabBarItem!
    @IBOutlet weak var algebraTable: UITableView!
    
    var mathSource = MathDataSource()
    var algebraList: [Math] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        mathSource.delegate = self
        setColors()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mathSource.loadMath(type: 0) //loading algebra filtered math data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mathToInfoView"{
        let destination = segue.destination as! SectionDetailViewController
            destination.sectionTitle = "Math"
            destination.info = infoData.getMathInfo()
        } else {
        let cell = sender as! MathCell
        if let indexPath = algebraTable.indexPath(for: cell){
            let destination = segue.destination as! MathItemViewController
            let algebra = algebraList[indexPath.row]
            if algebra.subject == "Graphing linear equations"{
                let image = UIImage(named: "alg-Graphing linear equations")
                destination.image = image
            }
            destination.subject = algebra.subject
            destination.subjectDescription = algebra.description
            destination.example = algebra.example
        }
        }}
    func setColors() {
        view.backgroundColor = Colors.primaryColor()
        algebraTable.backgroundColor = Colors.primaryColor()
    //    tabBarController?.tabBar.
        
    }

}
