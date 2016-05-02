//
//  GenreModalViewController.swift
//  Dr.Alea
//
//  Created by chocoffee on 2016/04/24.
//  Copyright © 2016年 chocoffee. All rights reserved.
//

import UIKit

class GenreModalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let ganreList = ["バーベキュー", "デイキャンプ", "ハードキャンプ", "ハイキング", "登山", "釣り", "スポーツ"]
    var selected = 0
    @IBOutlet weak var ganrePicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ganrePicker.delegate = self
        ganrePicker.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ganreList.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ganreList[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = row
        print(selected)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "byGanre" {
            let nextViewController = segue.destinationViewController as! SearchResultViewController
            nextViewController.selectedId = selected
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
