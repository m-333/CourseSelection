//
//  ViewController.swift
//  CourseSelection
//
//  Created by melek türüdi on 23.08.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var stackview122: UIStackView!
    @IBOutlet weak var stackview132: UIStackView!
    @IBOutlet weak var stackview145: UIStackView!
    @IBOutlet weak var stackview150: UIStackView!
    @IBOutlet weak var stackview290: UIStackView!
    @IBOutlet weak var stackview345: UIStackView!
    @IBOutlet weak var stackview177: UIStackView!
    @IBOutlet weak var btnOutlet122: UIButton!
    @IBOutlet weak var btnOutlet132: UIButton!
    @IBOutlet weak var btnOutlet145: UIButton!
    @IBOutlet weak var btnOutlet150: UIButton!
    @IBOutlet weak var btnOutlet290: UIButton!
    @IBOutlet weak var btnOutlet345: UIButton!
    @IBOutlet weak var btnOutlet177: UIButton!
    @IBOutlet weak var labelCredit: UILabel!
    public var credit = 0
    public var lesson = 0
   
    
    @IBOutlet weak var labelLesson: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCredit.text = String(credit)
        labelLesson.text = String(lesson)
        
        
    }
    @IBAction func btnLesson122(_ sender: Any) {
        if btnOutlet122.tag == 0 {
            credit += 3
            lesson += 1
            labelCredit.text = String(credit)
            labelLesson.text = String(lesson)
            stackview122.isHidden = true
        }
        else if btnOutlet132.tag ==  1 {
            btnOutlet122.tag = 1
            stackview122.isHidden = false
        }
        
       
    }
    @IBAction func btnLesson132(_ sender: Any) {
        if btnOutlet132.tag == 0 {
            credit += 5
            lesson += 1
            labelCredit.text = String(credit)
            labelLesson.text = String(lesson)
            stackview132.isHidden = true
        }
        else if btnOutlet132.tag == 1 {
            btnOutlet132.tag = 1
            stackview132.isHidden = false
        }
        
    }
    @IBAction func btnLesson145(_ sender: Any) {
        if btnOutlet145.tag == 0{
            credit += 5
            lesson += 1
            labelCredit.text = String(credit)
            labelLesson.text = String(lesson)
            stackview145.isHidden = true
        }
        else if btnOutlet145.tag == 1 {
            btnOutlet145.tag = 1
            stackview145.isHidden = false
        }
        
    }
    @IBAction func btnLesson150(_ sender: Any) {
        if btnOutlet150.tag == 0 {
            credit += 5
            lesson += 1
            labelCredit.text = String(credit)
            labelLesson.text = String(lesson)
            stackview150.isHidden = true
        }
        else if btnOutlet150.tag == 1 {
            btnOutlet150.tag = 1
            stackview150.isHidden = false
        }
    }
    @IBAction func btnLesson290(_ sender: Any) {
        if btnOutlet290.tag == 0 {
            credit += 4
            lesson += 1
            labelCredit.text = String(credit)
            labelLesson.text = String(lesson)
            stackview290.isHidden = true
        }
        else if btnOutlet290.tag == 1 {
            btnOutlet290.tag = 1
            stackview290.isHidden = false
        }
    }
    @IBAction func btnLesson345(_ sender: Any) {
        if btnOutlet345.tag == 0{
            credit += 4
            lesson += 1
            labelCredit.text = String(credit)
            labelLesson.text = String(lesson)
            stackview345.isHidden = true
        }
        else if btnOutlet345.tag == 1 {
            btnOutlet345.tag = 1
            stackview345.isHidden = false
        }
    }
    @IBAction func btnLesson177(_ sender: Any) {
        if btnOutlet177.tag == 0 {
            credit += 10
            lesson += 1
            labelCredit.text = String(credit)
            labelLesson.text = String(lesson)
            stackview177.isHidden = true
        }
        else if btnOutlet177.tag == 1 {
            btnOutlet177.tag = 1
            stackview177.isHidden = false
        }
    }
    @IBAction func btnAcceptLesson(_ sender: Any) {
        if lesson == 0 {
            let alertController = UIAlertController(title: "Hata", message: "En az bir ders seçmek zorundasınız", preferredStyle: .actionSheet )
           
            let iptalAction = UIAlertAction(title: "iptal", style: .cancel ){
                action in print("iptal secildi")
            }
            alertController.addAction(iptalAction)
            
            
            let tamamAction = UIAlertAction(title: "tamam", style: .destructive ){
                 action in print("tamam secildi")
             }
             alertController.addAction(tamamAction)
            
            self.present(alertController,animated: true)
            
        }
       else if credit > 30{
            performSegue(withIdentifier: "limitasimi", sender: nil)
        }
        else  {
            performSegue(withIdentifier: "secmeliDers", sender: nil)
        }
            
    }
    
}

