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
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func actionTapGesture(_ sender: UITapGestureRecognizer) {
        let tapLoc = sender.location(in: view)
        imagePlate.center = tapLoc
    }
    
    
    
    @IBAction func panEgg(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in:view)
        
        guard let gestureView = sender.view else{
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        sender.setTranslation(.zero, in: view)
    }
    
    
    @IBAction func panBacon(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in:view)
        
        guard let gestureView = sender.view else{
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        sender.setTranslation(.zero, in: view)
    }
    
    @IBAction func panWaffle(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in:view)
        
        guard let gestureView = sender.view else{
            return
        }
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        sender.setTranslation(.zero, in: view)
    }
    
    
    
}

