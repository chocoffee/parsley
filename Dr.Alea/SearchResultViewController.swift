//
//  SearchResultViewController.swift
//  Dr.Alea
//
//  Created by chocoffee on 2016/04/24.
//  Copyright © 2016年 chocoffee. All rights reserved.
//

import UIKit

class SearchResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var testTitles: [String] = []
    var selectedId = 0
    var enterdKeyword = ""
    var selectedPrefacture = "北海道"

    @IBOutlet weak var searchResult: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTitles.append("渡邉")
        testTitles.append("米倉")
        testTitles.append("丸山")
        testTitles.append("\(selectedId)")
        testTitles.append(enterdKeyword)
        testTitles.append(selectedPrefacture)
        
        searchResult.delegate = self
        searchResult.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(table: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testTitles.count
    }
    
    func tableView(table: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCellWithIdentifier("resultCell") as? SearchResultTableViewCell
        cell?.label1.text = testTitles[indexPath.row]
        cell?.label2.text = "わあい"
        
        return cell!
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("detailSegue", sender: nil)
    }
    //  セルが選択された時の動き。View自体につけたSegueを呼び出す感じ
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "detailSegue" {
//            let nextViewController = segue.destinationViewController as! DetailViewController
//            
//
//        }
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
