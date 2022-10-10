//
//  ViewController.swift
//  GestureRecognizerMiniApp
//
//  Created by Temporary on 10/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imagePlate: UIImageView!
    
    @IBOutlet weak var imageWaffle: UIImageView!
    @IBOutlet weak var imageBacon: UIImageView!
    @IBOutlet weak var imageEgg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func actionTapGesture(_ sender: UITapGestureRecognizer) {
        let tapLoc = sender.location(in: view)
        imagePlate.center = tapLoc
    }
    
    
    
    @IBAction func panView(_ sender: UIPanGestureRecognizer) {
        let panLoc = sender.location(in: view)
    sender.center = panLoc
     
    }
    
    
}

