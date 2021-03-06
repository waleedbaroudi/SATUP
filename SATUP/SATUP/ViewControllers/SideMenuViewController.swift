//
//  SideMenuViewController.swift
//  SATUP
//
//  Created by user on 22.01.2020.
//  Copyright © 2020 wab. All rights reserved.
//

import UIKit

class SideMenuViewController: UITableViewController {

    @IBOutlet var sideMenuTable: UITableView!
    
    @IBOutlet weak var themeToggle: UISwitch!
    @IBOutlet weak var themeToggleCell: UITableViewCell!
    @IBOutlet weak var bookmarksCell: UITableViewCell!
    @IBOutlet weak var aboutCell: UITableViewCell!
    @IBOutlet weak var resourcesCell: UITableViewCell!
    
    @IBOutlet weak var bookmarksLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var resourcesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        setColors()
        themeToggle.isOn = !Colors.isDark
    }
    
    @IBAction func modeToggle(_ sender: Any) {
        if themeToggle.isOn {
            Colors.isDark = false
        }
        else{
            Colors.isDark = true
        }
    }
    
    func setColors() {
        bookmarksLabel.textColor = Colors.textColor()
        aboutLabel.textColor = Colors.textColor()
        resourcesLabel.textColor = Colors.textColor()
        
        themeToggleCell.backgroundColor = Colors.primaryColor()
        aboutCell.backgroundColor = Colors.primaryColor()
        bookmarksCell.backgroundColor = Colors.primaryColor()
        resourcesCell.backgroundColor = Colors.primaryColor()
        sideMenuTable.backgroundColor = Colors.primaryColor()
        
        self.view.backgroundColor = Colors.primaryColor()
    }

}
