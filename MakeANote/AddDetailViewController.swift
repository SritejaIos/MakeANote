//
//  AddDetailViewController.swift
//  MakeANote
//
//  Created by Sriteja Thuraka on 1/9/17.
//  Copyright © 2017 Sriteja Thuraka. All rights reserved.
//

import UIKit
import CoreData

class AddDetailViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var contactTextfield: UITextField!
    @IBOutlet weak var companyTextfield: UITextField!
    @IBOutlet weak var designationTextfield: UITextField!
    @IBOutlet weak var meetinglocationTextfield: UITextField!
    
   override func viewDidLoad() {
        super.viewDidLoad()
    
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
    
    view.addGestureRecognizer(tap)

    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
     @IBAction func saveButton(_ sender: Any) {
        
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
           let MakeAMeet = MakeAMeetmo(context:appDelegate.persistentContainer.viewContext)
           MakeAMeet.name = nameTextfield.text
           MakeAMeet.contact = contactTextfield.text
           MakeAMeet.company = companyTextfield.text
           MakeAMeet.desination = designationTextfield.text
           MakeAMeet.location = meetinglocationTextfield.text
           navigationController?.popViewController(animated: true)
           appDelegate.saveContext()
            
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
