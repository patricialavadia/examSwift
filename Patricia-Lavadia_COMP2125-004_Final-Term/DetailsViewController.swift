//
//  DetailsViewController.swift
//  Patricia-Lavadia_COMP2125-004_Final-Term
//
//  Created by Patricia Anjelica Lavadia on 2020-07-26.
//  Copyright © 2020 Patricia Anjelica Lavadia. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var orderId: UITextField!//display for oreder ID
    @IBOutlet weak var customerName: UITextField! //display for customer name
    @IBOutlet weak var total: UITextField!//display for total
    
    @IBOutlet weak var output: UILabel! //display the complete greetings
    
    @IBAction func CompleteButton(_ sender: Any) {//if complete button is clicked
        output.text="Thanks for shopping with us!"//update the output label
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let id = Int.random(in: 100 ..< 999)//generate random number in order id
        orderId.text = String(id)//set order id textfield to random id

        // Do any additional setup after loading the view.
    }
    

}
