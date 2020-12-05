//
//  UserDefaultVC.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class UserDefaultVC: UIViewController {

    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var favmovField: UILabel!
    @IBOutlet weak var genreField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
               
               leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
               self.view.addGestureRecognizer(leftSwipe)
        
        
        let mydefaults: UserDefaults = UserDefaults.standard
              
              let strnamefound = mydefaults.string(forKey: "Name") ?? ""
              
              let strfavmovfound = mydefaults.string(forKey: "FavouriteMovie") ?? ""
              
              let strgenrefound = mydefaults.string(forKey: "Genre") ?? ""
              
              
              if(strnamefound != "")
              {
                nameField.text = strnamefound
              }
              else{
                  print("N/A")
              }
              
              if(strfavmovfound != "")
              {
                favmovField.text = strfavmovfound
              }
              else{
                  print("N/A")
              }
              
              if(strgenrefound != "")
              {
                genreField.text = strgenrefound
              }
              else{
                  print("N/A")
              }
              
    
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil)
        { notification in
            
            if mydefaults.string(forKey: "Genre") == "Comedy" {
                self.showActionSheet(title: "For your Genre", message: "Check out Fatman!")
            }
            
        }
        
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil)
        { notification in
            
            if mydefaults.string(forKey: "Genre") == "Action" {
                self.showActionSheet(title: "For your Genre", message: "Check out Tenet!")
            }
            
        }
        
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil)
        { notification in
            
            if mydefaults.string(forKey: "Genre") == "Drama" {
                self.showActionSheet(title: "For your Genre", message: "Check out Bronx!")
            }
            
        }
        
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil)
               { notification in
                   
                   if mydefaults.string(forKey: "Genre") == "Romance" {
                       self.showActionSheet(title: "For your Genre", message: "Check out Enola Holmes!")
                   }
                   
               }
        
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil)
               { notification in
                   
                   if mydefaults.string(forKey: "Genre") == "Horror" {
                       self.showActionSheet(title: "For your Genre", message: "Check out Haunting of Hill House!")
                   }
                   
               }
        
    }
    override func viewDidAppear(_ animated: Bool) {
       
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
    
    func showActionSheet( title: String, message: String){
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
                 
         actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in
                     print("tapped miss")
                 }))
                 
         present(actionSheet, animated: true, completion: nil)
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
        
    }
    
    @IBAction func acessSettingsBtn(_ sender: Any) {
         createAlert(title: "Settings", message: "Please swipe left to access Settings")
    }
}
