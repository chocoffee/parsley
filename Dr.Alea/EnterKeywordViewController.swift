//
//  EnterKeywordViewController.swift
//  Dr.Alea
//
//  Created by guest on 2016/04/25.
//  Copyright © 2016年 chocoffee. All rights reserved.
//

import UIKit

class EnterKeywordViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var keywordField: UITextField!
    var Keyword = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        keywordField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        Keyword = textField.text ?? "nil"
        textField.resignFirstResponder()
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "byKeyword" {
            let nextViewController = segue.destinationViewController as! SearchResultViewController
            nextViewController.enterdKeyword = Keyword
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
