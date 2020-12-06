//
//  WebMoviesTVC.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class WebMoviesTVC: UITableViewController {

    let parser = Parser()

    var results = [Result]()

   
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = NSLocalizedString("Now Playing", comment: "")
        parser.parse{
            data in
            self.results = data
            DispatchQueue.main.async {
                
                self.tableView.reloadData()
            }
        }
        tableView.dataSource = self
        
        
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return results.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WebMoviesCell", for: indexPath)  as! WebMoviesCell

        // Configure the cell...

        cell.title?.text = results[indexPath.row].originalTitle
        
        cell.date?.text = results[indexPath.row].releaseDate
        cell.language?.text = results[indexPath.row].originalLanguage
        cell.synopsis?.text = results[indexPath.row].overview
        
        return cell
    }
    
}
