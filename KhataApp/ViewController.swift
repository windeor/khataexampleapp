//
//  ViewController.swift
//  KhataApp
//
//  Created by Sagar  Dhavare on 04/10/18.
//  Copyright © 2018 Sagar  Dhavare. All rights reserved.
//

import UIKit
import khataframework



class ViewController: UIViewController,KhataAppDelegate {
    
    @IBOutlet weak var aadharNumberLabel: UILabel!
    
    @IBOutlet weak var aadaharNumberTextLabel: UILabel!
    
    @IBOutlet weak var khataAppBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Service.doSomething())
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func openKhataApp(_ sender: Any) {
        
        let bundel = Bundle(for: AadharNumberViewController.self)
        if let viewController = UIStoryboard(name: "khataapp", bundle: bundel).instantiateViewController(withIdentifier: "AadharNumberVC") as? AadharNumberViewController {
            viewController.khataAppDelegate = self
            self.present(viewController, animated: true, completion: nil)
            
        }
    }
    
    func reponseData(response: String) {
        self.khataAppBtn.setTitle("Bal: 5000", for: .normal)
        self.aadaharNumberTextLabel.isHidden = false
        self.aadharNumberLabel.isHidden = false
        self.aadharNumberLabel.text = response
        self.dismiss(animated: true, completion: nil)
    }
    

}

