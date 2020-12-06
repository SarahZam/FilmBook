//
//  InfoVC.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class InfoVC: UIViewController {
    @IBOutlet weak var appinfo: UILabel!
    @IBOutlet weak var appname: UILabel!
    @IBOutlet weak var appversion: UILabel!
    @IBOutlet weak var build: UILabel!
    @IBOutlet weak var swipedown: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var buildLabel: UILabel!
    @IBOutlet weak var copyrightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       //Localization
        appinfo.text = NSLocalizedString("App Information", comment: "")
        appname.text = NSLocalizedString("App Name", comment: "")
        appversion.text = NSLocalizedString("App Version", comment: "")
        build.text = NSLocalizedString("Build", comment: "")
        swipedown.text = NSLocalizedString("Swipe Down to Exit", comment: "")
        
        nameLabel?.text = Bundle.main.displayName
        versionLabel?.text = Bundle.main.version
        buildLabel?.text = Bundle.main.build
        copyrightLabel?.text = Bundle.main.copyright
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
