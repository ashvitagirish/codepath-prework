//
//  IntroPage.swift
//  Introduction
//
//  Created by ashvita girish on 1/12/23.
//

import UIKit

class IntroPage: UIViewController {
    
    
    var intro: String = "Does not work"
    
    @IBOutlet weak var pfp: UIImageView!
    
    @IBOutlet weak var intoPara: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let alertController = UIAlertController(title: "My Introduction", message: intro, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        
        print(intro)
                        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
