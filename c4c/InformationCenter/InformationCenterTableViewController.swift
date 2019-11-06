//
//  InformationCenterTableViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 06/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

struct Headline {
    
    var id : Int
    var title : String
    var text : String
    var image : String
    
}

class InformationCenterTableViewController: UITableViewController {
    
    
    
    var headlines = [
        Headline(id: 1, title: "FAQ", text: "", image: "rightarrow"),
        Headline(id: 2, title: "ART GUIDELINES", text: "", image: "rightarrow"),
        Headline(id: 3, title: "NASCOP WEBSITE", text: "", image: "rightarrow"),
        Headline(id: 4, title: "NASCOP HIV Services M&E tools training course", text: "", image: "rightarrow"),
        Headline(id: 5, title: "RESOURCE LINKS", text: "", image: "rightarrow"),
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Information center"


    }

 


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return headlines.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        cell.detailTextLabel?.text = headline.text
      
        cell.accessoryView = UIImageView(image:UIImage(named:headline.image)!)
        cell.accessoryView!.frame = CGRect(x: 0, y: 20, width: 15, height: 15)
       
        return cell

    }
    
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section \(section)"
//    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return nil
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected \(headlines[indexPath.row].title)")
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section == 0) {
            return CGFloat.leastNormalMagnitude //Now section 0's header is hidden regardless of the new behaviour in iOS11.
        }
        
        return tableView.sectionHeaderHeight
    }
    

 


}
