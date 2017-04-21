//
//  ViewController.swift
//  Project15
//
//  Created by Macbook on 21/04/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     var imageView: UIImageView!
     var currentAnimation = 0
     
     @IBOutlet weak var tap: UIButton!
     
     
     override func viewDidLoad() {
          super.viewDidLoad()
          
          imageView = UIImageView(image: UIImage(named: "penguin"))
          imageView.center = CGPoint(x: 512, y: 384)
          view.addSubview(imageView)
          
     
     
     }
     
     @IBAction func tapped(_ sender: Any) {
          
          tap.isHidden = true
          
          UIView.animate(withDuration: 1,  delay: 0, options: [],
          animations: { [unowned self] in
          
               switch self.currentAnimation {
                    case 0:
                         break
               
               
                    default:
                         break
         
          }
          
     }) { [unowned self] (finished: Bool) in
          self.tap.isHidden = false
     }
          
          currentAnimation += 1
          
          if currentAnimation > 7 {
               currentAnimation = 0
          }
     }

}

