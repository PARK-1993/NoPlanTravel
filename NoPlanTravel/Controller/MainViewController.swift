//
//  ViewController.swift
//  NoPlanTravel
//
//  Created by Joonhyun park on 2021/02/25.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var imgRandomPlace: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func randomPlaceTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "ToRandomPlaceVC", sender: self)
    }
}

