//
//  ViewController.swift
//  secondApp
//
//  Created by Gulnaz Kaztayeva on 27.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var annotation: UILabel!
    var book = Books()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: book.cover)
        titleLabel.text = book.title
        annotation.text = book.annotation
    }


}

