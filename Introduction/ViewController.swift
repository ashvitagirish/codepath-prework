//
//  ViewController.swift
//  Introduction
//
//  Created by ashvita girish on 1/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var yearInScool: UISegmentedControl!
    @IBOutlet weak var numOfPets: UILabel!
    @IBOutlet weak var addPets: UIStepper!
    @IBOutlet weak var morePets: UISwitch!
    
    @IBAction func changeNumPets(_ sender: UIStepper) {
        numOfPets.text = "\(Int(addPets.value))"
    }
    
    var introduction = ""
    
    
    @IBAction func introIsPressed(_ sender: UIButton) {
        let year = yearInScool.titleForSegment(at: yearInScool.selectedSegmentIndex)
        
        introduction =  "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!). I am currently in my \(year!) year and I have \(numOfPets.text!) pets. It is \(morePets.isOn) that I want more pets."
        
        let vc = IntroPage()
        vc.intro = introduction
        navigationController?.pushViewController(vc, animated: true)
        
        
        
        
        //alert that notifies you of the introduction.
//        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
//        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
//        alertController.addAction(action)
//        present(alertController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let fullname = "\(firstName.text!) \(lastName.text!)"
//        segue.destination.navigationItem.title = fullname
//    }
//    
//    func sendIntro() -> String{
//        return introduction
//    }


}

