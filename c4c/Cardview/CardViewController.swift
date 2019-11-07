//
//  CardViewController.swift
//  c4c
//
//  Created by MHEALTH KENYA on 07/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import UIKit

class CardViewController: ViewController ,UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    let titleNames=["one","two","three"]
    
    let imageNames = [UIImage(named: "stethoscope"),UIImage(named: "stethoscope"),UIImage(named: "stethoscope")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleNames.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cel.thetitle.text = titleNames[indexPath.row]
        cel.image.image = imageNames[indexPath.row]
        
        return cel
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
