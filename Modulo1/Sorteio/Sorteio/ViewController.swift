//
//  ViewController.swift
//  Sorteio
//
//  Created by Felipe Miranda on 13/08/20.
//  Copyright © 2020 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//MARK: IBOutlet
    @IBOutlet weak var nameTextField: UITextField!
    
    
    //MARK: GRUPO 1
        @IBOutlet weak var name1G1Label: UILabel!
        @IBOutlet weak var name2g1Label: UILabel!
        @IBOutlet weak var name3g1Label: UILabel!
        @IBOutlet weak var name4g1Label: UILabel!
        @IBOutlet weak var name5g1Label: UILabel!
        
    //MARK: GRUPO 2
        @IBOutlet weak var name1G2Label: UILabel!
        @IBOutlet weak var name2g2Label: UILabel!
        @IBOutlet weak var name3g2Label: UILabel!
        @IBOutlet weak var name4g2Label: UILabel!
        @IBOutlet weak var name5g2Label: UILabel!
        
    //MARK: GRUPO 3
        @IBOutlet weak var name1G3Label: UILabel!
        @IBOutlet weak var name2g3Label: UILabel!
        @IBOutlet weak var name3g3Label: UILabel!
        @IBOutlet weak var name4g3Label: UILabel!
      
//MARK: Arrays
    var arrayNomes:[String] = []
    var arrayG1:[String] = []
    var arrayG2:[String] = []
    var arrayG3:[String] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        self
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedSortButton(_ sender: UIButton) {
    
   
    
    }
    
}




















































