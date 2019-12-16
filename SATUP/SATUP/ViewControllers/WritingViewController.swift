//
//  WritingViewController.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

extension WritingViewController: WritingDataSourceDelegate {
    func writingListLoaded(writingList: [Writing]) {
        self.writingList = writingList
        self.writingTableView.reloadData()
    }
}

extension WritingViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return writingList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "writingCell") as! WritingCell
            cell.writingSelectionLabel.text = writingList[indexPath.row].title
        return cell
        
    }
}

class WritingViewController: UIViewController {

    @IBOutlet weak var writingTableView: UITableView!
    var writingList: [Writing] = []
    var writingSelection = [String] ()
    
    let writingDataSource = WritingDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        writingDataSource.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SectionDetailViewController
        destination.sectionTitle = "Writing"
    }
    
 /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! VocabCell
        if let indexPath = writingTableView.indexPath(for: cell){
            let vocab = writingList[indexPath.row]
            let destination = segue.destination as! <#type#>

        }
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
