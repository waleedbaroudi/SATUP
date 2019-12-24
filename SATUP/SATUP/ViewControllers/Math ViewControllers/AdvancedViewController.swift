//
//  AdvancedViewController.swift
//  SATUP
//
//  Created by user on 19.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

extension AdvancedViewController: MathDataSourceDelegate{
    func mathLoaded(mathList: [Math]) {
        advancedList = mathList
        advancedTable.reloadData()
    }
}

extension AdvancedViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(advancedList.count)
        return advancedList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedCell") as! MathCell
        let advanced = advancedList[indexPath.row]
        cell.subjectLabel.text = advanced.subject
        return cell
    }
}

class AdvancedViewController: UIViewController {
    @IBOutlet weak var advancedTable: UITableView!
    var mathSource = MathDataSource()
    var advancedList: [Math] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        mathSource.delegate = self
        setColors()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mathSource.loadMath(type: 1) //loading advanced filtered math data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! MathCell
        if let indexPath = advancedTable.indexPath(for: cell){
            let destination = segue.destination as! MathItemViewController
            let advanced = advancedList[indexPath.row]
            if advanced.subject == "Linear and quadratic systems"{
                      let image = UIImage(named: "adv-Linear and quadratic systems")
                      destination.image = image
                  }
            destination.subject = advanced.subject
            destination.subjectDescription = advanced.description
            destination.example = advanced.example
        }
    }

    func setColors() {
        self.view.backgroundColor = Colors.primaryColor()
        advancedTable.backgroundColor = Colors.primaryColor()
    }

}
