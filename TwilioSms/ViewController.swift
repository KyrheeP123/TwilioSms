//
//  ViewController.swift
//  TwilioSms
//
//  Created by Megan Speir on 9/23/16.
//  Copyright © 2016 Twilio. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet var phoneNumberField: UITextField!
    @IBOutlet var messageField: UITextField!
    
    @IBAction func sendData(sender: AnyObject) {
        let  headers = ["Content-Type": "application/x-www-form-urlencoded"]

        let parameters: Parameters = ["To": phoneNumberField.text ?? "","Body": messageField.text ?? ""]

        Alamofire.request("http://381a7463.ngrok.io/", method: .post, parameters: parameters, headers: headers).response
        { response in
            print(response)
        }

        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
