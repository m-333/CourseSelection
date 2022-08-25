//
//  EndPage.swift
//  CourseSelection
//
//  Created by melek türüdi on 25.08.2022.
//

import UIKit

class EndPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func btnBack(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: nil)
    }
    
    @IBAction func btnFinish(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
