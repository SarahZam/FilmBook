//
//  WebMoviesCell.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class WebMoviesCell: UITableViewCell {
    @IBOutlet weak var synopsis: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var dateReleased: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //Localization
        languageLabel.text = NSLocalizedString("Language:", comment: "")
        dateReleased.text = NSLocalizedString("Date released:", comment: "")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
