//
//  BookmarksViewController.swift
//  SATUP
//
//  Created by user on 24.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit


extension BookmarksViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookmarks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookmarkCell") as! VocabCell
         let vocab = bookmarks[indexPath.row]
         cell.word.text = vocab.word
         cell.type.text = vocab.type
         cell.vocab = vocab
         cell.setButton()
         return cell
    }
    
    
}

class BookmarksViewController: UIViewController {
    
    @IBOutlet weak var tv: UITableView!
    var bookmarks: [Vocab] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.reloadData()
        print(bookmarks.count)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        bookmarks = BookmarksDataSource.getBookmarks()
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
