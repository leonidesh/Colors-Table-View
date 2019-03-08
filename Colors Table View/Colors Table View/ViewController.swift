//
//  ViewController.swift
//  Colors Table View
//
//  Created by 刘洋 on 2019/3/8.
//  Copyright © 2019年 Yang Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate,UITableViewDataSource {
    var colors = ["red", "orange", "yello", "green", "blue", "pruple", "brown"]
    var colorsforrow: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = colorsforrow[indexPath.row]
        
        return cell
    }
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
