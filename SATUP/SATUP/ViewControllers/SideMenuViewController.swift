//
//  SideMenuViewController.swift
//  SATUP
//
//  Created by user on 13.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class SideMenuViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func aboutIsClicked(_ sender: Any) {

    }
    @IBAction func dismissSideMenu(_ sender: Any) {
         dismiss(animated: true){}
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true){}
        
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


