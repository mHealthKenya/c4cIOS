//
//  FAQuestionsViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 07/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class FAQuestionsViewController: ViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var mtitle:[String] = []
    var content:[String]=[]
    
    var selectedIndex = -1
    var isCollapsible = false
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mtitle.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if self.selectedIndex == indexPath.row && self.isCollapsible == true{
            
            return 200
            
        }
        else{
            
            return 50
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if(selectedIndex == indexPath.row){
            
            if (self.isCollapsible == false){
                
                self.isCollapsible = true
                
            }
            else{
                
                self.isCollapsible = false
            }
        }
        else{
            
            self.isCollapsible = true
        }
        
        self.selectedIndex = indexPath.row
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "faqTableViewCell") as! FaqTableViewCell
        
        
        
        cell.labelTitle.lineBreakMode = NSLineBreakMode.byWordWrapping
       
        cell.labelTitle.sizeToFit()
        
        cell.labelTitle.text = mtitle[indexPath.row]
        cell.labelContent.text = content[indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var tblTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setFaqContent()
        
        tblTableView.estimatedRowHeight = 200
        tblTableView.rowHeight = UITableView.automaticDimension

        // Do any additional setup after loading the view.
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
