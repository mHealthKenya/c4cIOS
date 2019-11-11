

import UIKit

import SCLAlertView
import SafariServices

struct ResourceHeadline {
    
    var id : Int
    var title : String
    var text : String
    var link : String
    var image : String
    
}


class ResourceLinksTableViewController: UITableViewController {

    var headlines = [
        ResourceHeadline(id: 1, title: "National", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/national.pdf", image: "rightarrow"),
        ResourceHeadline(id: 2, title: "Cardiovascular-guidelines", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/Cardiovascular-guidelines-2018.pdf", image: "rightarrow"),
        ResourceHeadline(id: 3, title: "clinical guidelines diagnosis", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/clinical guidelines diagnosis and treatment.pdf", image: "rightarrow"),
        ResourceHeadline(id: 4, title: "Health Act No 21 of 2017", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/HealthActNo.21of2017.pdf", image: "rightarrow"),
        ResourceHeadline(id: 5, title: "Kenya strategy ncds 2015", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/kenya-strategy-ncds-2015-2020.pdf", image: "rightarrow"),
        ResourceHeadline(id: 6, title: "Kenya Health policy 2014", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/kenya_health_policy_2014_to_2030.pdf", image: "rightarrow"),
        ResourceHeadline(id: 7, title: "National Cancer Screening Guidelines", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/National-Cancer-Screening-Guidelines-2018.pdf", image: "rightarrow"),
        ResourceHeadline(id: 8, title: "National Cancer Treatment Guidelines", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/National-Cancer-Treatment-Guidelines.pdf", image: "rightarrow"),
        ResourceHeadline(id: 9, title: "National Gudelines for healthy diets", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/NATIONAL-GUIDELINES-FOR-HEALTHY-DIETS-AND-PHYSICAL-ACTIVITY-2017-NEW-EDIT.pdf", image: "rightarrow"),
        ResourceHeadline(id: 10, title: "National Palliative Care", text: "",link: "https://c4c.mhealthkenya.co.ke/assets/IPC/National-Palliative-Care-Guidelines.pdf", image: "rightarrow"),
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Resource Links"
        
        
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
   
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return nil
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected \(headlines[indexPath.row].title)")
        
            guard let url = URL(string: headlines[indexPath.row].link) else { return }
            
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)

        
        
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section == 0) {
            return CGFloat.leastNormalMagnitude //Now section 0's header is hidden regardless of the new behaviour in iOS11.
        }
        
        return tableView.sectionHeaderHeight
    }

}
