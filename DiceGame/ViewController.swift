//
//  ViewController.swift
//  DiceGame
//
//  Created by ddukk9 on 21/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var Score: UILabel!
    var score = 0
    var images = ["Image 1","Image 2","Image 3","Image 4","Image 5","Image"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "Image")
         image1.image = UIImage(named: "Image 1")
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1(_ sender: Any) {
        let a = Int.random(in: 0...5)
        let b = Int.random(in: 0...5)
       image.image = UIImage(named: images[a])
        image1.image = UIImage(named: images[b])
        Score.text=String("score : \(score)")
        if(image.image == image1.image){
            score+=1
        }
    }
    }
    



