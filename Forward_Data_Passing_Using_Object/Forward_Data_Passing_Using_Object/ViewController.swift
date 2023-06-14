//
//  ViewController.swift
//  Forward_Data_Passing_Using_Object
//
//  Created by Mac on 13/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    var student : [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func submitButton(_ sender: Any) {
        var name = nameTextField.text
        var lastName = lastNameTextField.text
        var rollNumber = rollNumberTextField.text?.codingKey.intValue
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier:"SecondViewController")as!SecondViewController
        let nameObject = Student(name: name!, LastName: lastName!, rollNumber: rollNumber!)
        self.student.append(nameObject)
        secondViewController.studentConatiner = student
        
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

