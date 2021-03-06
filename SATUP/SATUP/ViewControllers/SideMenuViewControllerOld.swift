//
//  SideMenuViewController.swift
//  SATUP
//
//  Created by user on 13.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class SideMenuViewControllerOld: UITableViewController {
    
    @IBOutlet weak var dismissSideMenu: UIButton!
    
    @IBOutlet var sideMenuTable: UITableView!
    
    @IBOutlet weak var themeToggle: UISwitch!
    @IBOutlet weak var themeToggleCell: UITableViewCell!
    @IBOutlet weak var bookmarksCell: UITableViewCell!
    @IBOutlet weak var aboutCell: UITableViewCell!
    
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
    
    @IBAction func dismissSideMenu(_ sender: Any) {
         dismiss(animated: true){}
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true){}
        
    }
    
    @IBOutlet weak var sideMenubutton: UIView!
    @IBOutlet weak var toggleview: UIView!
    func setColors() {
        toggleview.backgroundColor = Colors.primaryColor()
        sideMenubutton.backgroundColor = Colors.primaryColor()
        themeToggleCell.backgroundColor = Colors.primaryColor()
        aboutCell.backgroundColor = Colors.primaryColor()
        sideMenuTable.backgroundColor = Colors.primaryColor()
        self.view.backgroundColor = Colors.primaryColor()
    }
}



