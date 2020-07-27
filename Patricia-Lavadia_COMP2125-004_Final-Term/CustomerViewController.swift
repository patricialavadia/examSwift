//
//  CustomerViewController.swift
//  Patricia-Lavadia_COMP2125-004_Final-Term
//
//  Created by Patricia Anjelica Lavadia on 2020-07-26.
//  Copyright © 2020 Patricia Anjelica Lavadia. All rights reserved.
//

import UIKit

class CustomerViewController: UIViewController {
     var productName:String = "" //init product name
     var productPrice:String = "" // init product price
     var productQuantity:String = "" // init qty
     var subTotal = 0.0 //init subtotal
     var num1 = 0.0 , num2 = 0.0 // init qty and price
     var error:String = "" //error message
    @IBOutlet weak var cust_name: UITextField! //textfield for customer name
    @IBOutlet weak var cust_email: UITextField! //textfield for cust email
    @IBOutlet weak var cust_address: UITextField! //textfield for cust address

    @IBOutlet weak var product: UILabel! //display product name
    @IBOutlet weak var price: UILabel! //display price
    @IBOutlet weak var quantity: UILabel! //display qty
    @IBOutlet weak var subtotal: UILabel! //display subtotal
    @IBOutlet weak var errorMessage: UILabel! //display error message
    
    @IBAction func `continue`(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

         product.text = "Product: " + productName
         price.text = "Price: " + productPrice
        
        
        num1 = Double (productPrice) as! Double;//cast num1 to double as price
        num2 = Double (productQuantity) as! Double //cast num2 to double as qty
        if(num2 > 2 || num2 < 1){//qty should be morethan 0 and max of 2
            num2 = 1 //set to default
            error = " [Qty should only have max of 2 and not 0! Value set to 1] "
        }
        quantity.text = "Quantity: " + productQuantity // display qty
        errorMessage.text = error //display error
        subTotal = num1 * num2 //compute the subtotal
        subtotal.text = "Sub-total: " + String(subTotal)//displat subtotal
    }
    

}
