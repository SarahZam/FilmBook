//
//  RandomVC.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//

import UIKit

class RandomVC: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var ratingStack: UIStackView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //ADDING ANIMATIONS
             UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, animations: {
                 self.ratingStack.center = CGPoint(x: 100, y: 40+200)
             }, completion: nil)
             
             UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, animations: {
                 self.button.center = CGPoint(x: 100+200, y: 40)
             }, completion: nil)
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func spinButton(_ sender: Any) {
        
          spinAndAssignImage()
    }
    
    
    func spinAndAssignImage(){
           let movieImageNum = Int.random(in: 1...8)
           
           assignImage(num: movieImageNum, image: movieImage)
           assignRating(num: movieImageNum, rating: ratingLabel)
           
           //ADDING TRANSITIONS
           UIView.transition(with: movieImage, duration: 0.3, options: .transitionFlipFromTop, animations: nil, completion: nil)
           
           UIView.transition(with: ratingLabel, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
       }

       func assignImage(num: Int, image:UIImageView){
           
           switch num {
           case 1:
               image.image = UIImage(named: "1")
           case 2:
               image.image = UIImage(named: "2")
           case 3:
               image.image = UIImage(named: "3")
           case 4:
               image.image = UIImage(named: "4")
           case 5:
               image.image = UIImage(named: "5")
           case 6:
               image.image = UIImage(named: "6")
           case 7:
               image.image = UIImage(named: "7")
           case 8:
               image.image = UIImage(named: "8")
           default:
               print("error")
           }
       }
       
       func assignRating(num: Int, rating:UILabel){
           
           switch num {
           case 1:
               rating.text = "4"
           case 2:
               rating.text = "4.5"
           case 3:
               rating.text = "5"
           case 4:
               rating.text = "3"
           case 5:
              rating.text = "4"
           case 6:
               rating.text = "4.5"
           case 7:
               rating.text = "5"
           case 8:
               rating.text = "4"
           default:
               print("error")
           }
       }
}
