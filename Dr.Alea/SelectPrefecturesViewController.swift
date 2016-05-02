//
//  SelectPrefecturesViewController.swift
//  Dr.Alea
//
//  Created by guest on 2016/04/25.
//  Copyright © 2016年 chocoffee. All rights reserved.
//

import UIKit

class SelectPrefecturesViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var prefacturesPicker: UIPickerView!
    
    let prefactures = ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県",
        "茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県",
        "新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県",
        "三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県",
        "鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県",
        "福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"]
    
    var selectedPrefacture = "北海道"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prefacturesPicker.delegate = self
        prefacturesPicker.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return prefactures.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return prefactures[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPrefacture = prefactures[row]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "byPrefacture" {
            let nextViewController = segue.destinationViewController as! SearchResultViewController
            nextViewController.selectedPrefacture = selectedPrefacture
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
