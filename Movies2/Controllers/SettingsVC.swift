//
//  SettingsVC.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.right
        
        self.view.addGestureRecognizer(leftSwipe)
    }
    
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   
    @IBAction func doneBtn(_ sender: Any) {
        
       showActionSheet()
        
    }
    func showAlert(){
           let alert = UIAlertController(title: "Changes", message: "Your changes are updated.", preferredStyle: .alert)
           
           alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in
               print("tapped miss")
           }))
           
           present(alert, animated: true, completion: nil)
       }
       
       func showActionSheet(){
           let actionSheet = UIAlertController(title: "Changes", message: "Your changes are updated", preferredStyle: .actionSheet)
                    
            actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { action in
                        print("tapped miss")
                    }))
                    
            present(actionSheet, animated: true, completion: nil)
       }
       
    
}
