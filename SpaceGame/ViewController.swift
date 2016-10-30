//
//  ViewController.swift
//  SpaceGame
//
//  Created by SpencerWagner on 10/12/16.
//  Copyright © 2016 SpencerWagner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerShip: UIImageView!
    @IBOutlet weak var playerShot: UIImageView!
    
    @IBOutlet weak var enemyShip: UIImageView!
    @IBOutlet weak var enemyShot: UIImageView!
    
    @IBOutlet weak var topBar: UIProgressView!
    @IBOutlet weak var bottomBar: UIProgressView!
    
    //var timeElapsed: Double = 0
    //var timer: Timer?
    //var enemyDistance: CGFloat = 1
    //var enemyMove: Bool = true
    
    //@IBAction func startButton(_ sender: AnyObject) {
    //    timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.whileRunning), userInfo: nil, repeats: true)
    //}
    
    //func whileRunning(){
    //    timeElapsed = self.timeElapsed + 0.1
    //
    //    if ((enemyShip.frame.minX >= self.view.frame.minX) && enemyMove == true){
    //        self.enemyShip.center.x = enemyShip.center.x + enemyDistance
    //        if (enemyShip.frame.maxX >= self.view.frame.maxX){
    //            enemyMove = false
    //        }
    //    }else if ((enemyShip.frame.maxX <= self.view.frame.maxX) && enemyMove == false){
    //        self.enemyShip.center.x = enemyShip.center.x - enemyDistance
    //        if (enemyShip.frame.minX <= self.view.frame.minX){
    //            enemyMove = true
    //        }
    //    }
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(enemyShip.center.x)")
        print("\(enemyShip.frame.minX)")
        print("(enemyShip.leading)")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func moveLeft(_ sender: AnyObject) {
        if (playerShip.frame.minX > self.view.frame.minX){
            self.playerShip.center.x = playerShip.center.x - 5
        }
    }
    
    @IBAction func fireButton(_ sender: AnyObject) {
        if (playerShot.frame.maxY > self.topBar.frame.minY){
            
        }
    }
    
    @IBAction func moveRight(_ sender: AnyObject) {
        if (playerShip.frame.maxX < self.view.frame.maxX){
            self.playerShip.center.x = playerShip.center.x + 5
        }
    }
}
