//
//  SettingsVC.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var favMovieField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    
    let genres = ["Action", "Horror", "Comedy", "Drama", "Romance"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for picker
        picker.dataSource = self
        picker.delegate = self

        // Do any additional setup after loading the view.
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.right
        
        self.view.addGestureRecognizer(leftSwipe)
       // retrieveData()
    }
    
    func retrieveData(){
        let mydefaults: UserDefaults = UserDefaults.standard
        
        let strnamefound = mydefaults.string(forKey: "Name") ?? ""
        
        let strfavmovfound = mydefaults.string(forKey: "FavouriteMovie") ?? ""
        
        let strgenrefound = mydefaults.string(forKey: "Genre") ?? ""
        
        
        if(strnamefound != "")
        {
            print(strnamefound)
        }
        else{
            print("N/A")
        }
        
        if(strfavmovfound != "")
        {
            print(strfavmovfound)
        }
        else{
            print("N/A")
        }
        
        if(strgenrefound != "")
        {
            print(strgenrefound)
        }
        else{
            print("N/A")
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
     }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genres[row]
    }
    
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genres.count
     }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserDefaults.standard.set(genres[row], forKey: "Genre")
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
    
    
    @IBAction func doneBtn(_ sender: Any) {
        
        UserDefaults.standard.set(nameField.text, forKey: "Name")
        UserDefaults.standard.set(favMovieField.text, forKey: "FavouriteMovie")
        
       // retrieveData()
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
