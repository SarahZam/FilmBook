//
//  UserDefaultVC.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class UserDefaultVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
               
               leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
               self.view.addGestureRecognizer(leftSwipe)
           
    }
    override func viewDidAppear(_ animated: Bool) {
        createAlert(title: "Settings", message: "Please swipe left to access Settings")
    }
    
    //ALERT 1
    func createAlert (title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {
            (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
   
    //SWIPE GESTURE
      // MARK: - Table view data source
      @objc func swipeAction(swipe: UISwipeGestureRecognizer){
          
          switch swipe.direction.rawValue {
          case 1:
            performSegue(withIdentifier: "swipeRight", sender: self)

          case 2:
              performSegue(withIdentifier: "swipeLeft", sender: self)
          default:
              break
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
}
