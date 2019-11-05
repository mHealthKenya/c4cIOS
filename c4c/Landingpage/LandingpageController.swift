//
//  LandingpageController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 15/04/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit
import SCLAlertView

class LandingpageController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var tableViewOptions: UITableView!
    
    var options = [Options]()
    
    func populateOptions(){
        
        self.options.append(Options(name: "Report Exposure", imageurl: "stetho3"))
        self.options.append(Options(name: "Immunisation Profile", imageurl: "stetho3"))
        self.options.append(Options(name: "Annual Checkup & Vaccination Schedule", imageurl: "stetho3"))
        self.options.append(Options(name: "Information Center", imageurl: "stetho3"))
        
        self.tableViewOptions.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OptionsCell
        
        let myoptions=options[indexPath.row]
        
        cell.thelabel.text = myoptions.name
        cell.theimage.image = UIImage(named: myoptions.imageurl!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedOption=options[indexPath.row]
        print("selected \(selectedOption.name)")
        
        if((selectedOption.name?.contains("Report Exposure"))!){
            
            performSegue(withIdentifier: "reportexposureSegue", sender: self)
            
        }
        else if((selectedOption.name?.contains("Immunisation Profile"))!){
            
            performSegue(withIdentifier: "immunisationProfileSegue", sender: self)
            
        }
        else{
            
            SCLAlertView().showInfo("Status", subTitle: "Work in progress") // Info
            
        }
        
        

        
       
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
               let backItem = UIBarButtonItem()
                backItem.title = ""
                navigationItem.backBarButtonItem = backItem
    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let backItem = UIBarButtonItem()
//        backItem.title = "Something Else"
//        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
//    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        populateOptions()
        navigationItem.hidesBackButton = true
        
        
        let logoutbut = UIBarButtonItem(image: UIImage(named: "logout"), style: .done, target: self, action: #selector(logout))
        
        
        
        self.navigationItem.rightBarButtonItems = [logoutbut]
    }
    
    
    @objc func logout(){
        
        print("logging out")
        self.navigationController?.popToRootViewController(animated: true)
        //    performSegue(withIdentifier: "selectedcategorylogoutsegue", sender: self)
        
    }
    


}
