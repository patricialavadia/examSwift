//
//  ViewController.swift
//  Patricia-Lavadia_COMP2125-004_Final-Term
//
//  Created by Patricia Anjelica Lavadia on 2020-07-26.
//  Copyright © 2020 Patricia Anjelica Lavadia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prod_id: UITextField!//textfield for product id
 
    @IBOutlet weak var product_name: UITextField!//textfield for product name
    @IBOutlet weak var product_price: UITextField!//textfield for price
    @IBOutlet weak var product_quantity: UITextField!//textfield for qty

    @IBAction func submit(_ sender: Any) {//perform segue pass data to customer controller
         performSegue(withIdentifier: "segueToCustomer", sender: self)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //pass the data to customer View Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var passData = segue.destination as! CustomerViewController

        passData.productName = product_name.text! //as string to customer view
        passData.productPrice = product_price.text! //as string to customer view
        passData.productQuantity = product_quantity.text!//as string to customer view




    }
}
