//
//  AadharNumberViewController.swift
//  KhataFrameworkDemo
//
//  Created by Sagar  Dhavare on 05/10/18.
//  Copyright © 2018 Sagar  Dhavare. All rights reserved.
//

import UIKit

open class AadharNumberViewController: UIViewController {
    
    
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var aadharNumberTextFeild: UITextField!
    @IBOutlet weak var aadharNumberErrorLabel: UILabel!
    public var khataAppDelegate:KhataAppDelegate?
    
    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        print("button click")
        if(aadharNumberTextFeild.text == ""){
            aadharNumberErrorLabel.isHidden = false
        }else{
            khataAppDelegate?.reponseData(response: aadharNumberTextFeild.text!)
        }
    }
    
}

public protocol KhataAppDelegate {
    
    func reponseData(response:String)
}
