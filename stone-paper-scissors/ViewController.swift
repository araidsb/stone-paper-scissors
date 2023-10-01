//
//  ViewController.swift
//  stone-paper-scissors
//
//  Created by Арай Дуйсебекова on 16.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var versusImage: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    
    let imagesArray = [
        UIImage(named: "paper"),
        UIImage(named: "scissors"),
        UIImage(named: "rock")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        imageView1.image = imagesArray[randomImage()]
        imageView2.image = imagesArray[randomImage()]
    }
    
    func randomImage() -> Int {
        return Int.random(in: 0..<imagesArray.count)
    }
}

