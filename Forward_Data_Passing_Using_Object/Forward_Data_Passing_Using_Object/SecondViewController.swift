//
//  SecondViewController.swift
//  Forward_Data_Passing_Using_Object
//
//  Created by Mac on 13/06/23.
//

import UIKit

class SecondViewController: UIViewController {
    var studentConatiner : [Student] = []
    @IBOutlet weak var studentTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
            studentTableView.dataSource = self
            studentTableView.delegate = self
            studentTableView.reloadData()
            registrationStudentTableViewCell()
    }
    
    func registrationStudentTableViewCell(){
        let uiNib = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(uiNib, forCellReuseIdentifier: "StudentTableViewCell")
    }
}
extension SecondViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200.0
    }
}
extension SecondViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentConatiner.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath)as! StudentTableViewCell
        studentTableViewCell.nameLabel.text = studentConatiner[indexPath.row].name
        studentTableViewCell.lastNameLabel.text = studentConatiner[indexPath.row].LastName
        studentTableViewCell.rollNumberLabel.text = String(studentConatiner[indexPath.row].rollNumber)
        studentTableViewCell.layer.cornerRadius = 20
        studentTableViewCell.layer.borderColor = UIColor.black.cgColor
        studentTableViewCell.layer.borderWidth = 4
        return studentTableViewCell
    }
}
