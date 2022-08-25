//
//  CheckLesson.swift
//  CourseSelection
//
//  Created by melek türüdi on 25.08.2022.
//

import UIKit

class CheckLesson: UIViewController {

    @IBOutlet weak var btnOutlet150: UIButton!
    @IBOutlet weak var btnOutlet122: UIButton!
    @IBOutlet weak var stackview122: UIStackView!
    @IBOutlet weak var stackview150: UIStackView!
    
    public var credit = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }
    @IBAction func btn122(_ sender: Any) {
        if btnOutlet122.tag == 0 {
            credit += 3
            stackview122.isHidden = true
        }
        else if btnOutlet122.tag == 1 {
            btnOutlet122.tag = 1
            stackview122.isHidden = false
        }
        
    }
    @IBAction func btn150(_ sender: Any) {
        if btnOutlet150.tag == 0 {
            credit += 5
            stackview150.isHidden = true
        }
        else if btnOutlet150.tag == 1 {
            btnOutlet150.tag = 1
            stackview150.isHidden = false
        }
        
        
    }
    
    @IBAction func btnOnay(_ sender: Any) {
        if credit > 7 {
            performSegue(withIdentifier: "onay", sender: nil)
        }
    }
    @IBAction func btnonay(_ sender: Any) {
        if credit > 5 {
            performSegue(withIdentifier: "danismanonay", sender: nil)
            
        }
        
    }
}
