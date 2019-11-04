//
//  ImmunisationProfileExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 04/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation


extension ImmunisationProfileViewController{
    
    
    
    
    func hideHpbDetails(){
        
        hepatitisFirstdoseDate.isEnabled = false
        hepatitisFirstdoseDate.text = ""
        hepatitisSeconddoseDate.text = ""
        hepatitisSeconddoseDate.isEnabled = false
        HepatitisSecondDoseYesOutlet.isEnabled = false
        HepatitisSecondDoseYesOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.isEnabled = false
        HepatitisSecondDoseNoOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = false
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = false
        
        hpbsecondLabel.isEnabled = false
        
    }
    
    func hideInfluenzaDetails(){
        
        influenzafirstLabel.isEnabled = false
        influenzasecondLabel.isEnabled  = false
        InfluenzaPregnantNoOutlet.isEnabled = false
        InfluenzaPregnantYesOutlet.isEnabled = false
        InfluenzaTrimesterFirstOutlet.isEnabled = false
        InfluenzaTrimesterSecondOutlet.isEnabled = false
        InfluenzaTrimesterThirdOutlet.isEnabled = false
        
        InfluenzaPregnantNoOutlet.isSelected = false
        InfluenzaPregnantYesOutlet.isSelected = false
        InfluenzaTrimesterFirstOutlet.isSelected = false
        InfluenzaTrimesterSecondOutlet.isSelected = false
        InfluenzaTrimesterThirdOutlet.isSelected = false
        
        
        InfluenzaPregnantNoOutlet.titleLabel?.isEnabled = false
        InfluenzaPregnantYesOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = false
        
        
        influenzaDosedate.isEnabled = false
        influenzaDosedate.text = ""
        
    }
    
    
    func hideVaricellaDetails(){
        
        varicellaFirstdoseDate.isEnabled = false
        varicellaSeconddoseDate.isEnabled = false
        
        varicellaFirstdoseDate.text = ""
        varicellaSeconddoseDate.text = ""
        
    }
    
    func hideTdapDetails(){
        
        tdapFirstdoseDate.isEnabled = false
        tdapFirstdoseDate.text = ""
        tdapsecondLabel.isEnabled = false
        tdapBoosterdoseDate.isEnabled = false
        tdapBoosterdoseDate.text = ""
        TdapBoosterNoOutlet.isEnabled = false
        TdapBoosterYesOutlet.isEnabled = false
        
        TdapBoosterNoOutlet.isSelected = false
        TdapBoosterYesOutlet.isSelected = false
        
        TdapBoosterNoOutlet.titleLabel?.isEnabled = false
        TdapBoosterYesOutlet.titleLabel?.isEnabled = false
        
        
    }
    
    func hideMeasleDetails(){
        
        measlesFirstdoseDate.isEnabled = false
        measlesSeconddoseDate.isEnabled = false
        
        measlesFirstdoseDate.text = ""
        measlesSeconddoseDate.text = ""
        
        
    }
    
    func hideMeningocoDetails(){
        
        meningocoFirstdoseDate.isEnabled = false
        meningocoSeconddoseDate.isEnabled = false
        
        meningocoFirstdoseDate.text = ""
        meningocoSeconddoseDate.text = ""
        
        
    }
    
    
    
    //************functions triggered by selected options*********************
    
    
    //**********hpb module********
    func hpbFirstYesSelected(){
        
        
        hepatitisFirstdoseDate.isEnabled = true
        
        HepatitisSecondDoseYesOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = true
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = true
        
        hpbsecondLabel.isEnabled = true
        
        
    }
    
    func hpbFirstPartiallySelected(){
        
        
        hepatitisFirstdoseDate.isEnabled = true
        
        HepatitisSecondDoseYesOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.isEnabled = true
        
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = true
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = true
        
        hpbsecondLabel.isEnabled = true
        
        
    }
    
    func hpbFirstNoSelected(){
        
        
        hepatitisFirstdoseDate.isEnabled = false
        hepatitisFirstdoseDate.text = ""
        hepatitisSeconddoseDate.text = ""
        hepatitisSeconddoseDate.isEnabled = false
        HepatitisSecondDoseYesOutlet.isEnabled = false
        HepatitisSecondDoseYesOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.isEnabled = false
        HepatitisSecondDoseNoOutlet.isSelected = false
        HepatitisSecondDoseNoOutlet.titleLabel?.isEnabled = false
        HepatitisSecondDoseYesOutlet.titleLabel?.isEnabled = false
        
        hpbsecondLabel.isEnabled = false
        
        
    }
    
    func hpbSecondNoSelected(){
        
        hepatitisSeconddoseDate.isEnabled = false
        hepatitisSeconddoseDate.text = ""
        
    }
    
    func hpbSecondYesSelected(){
        
        hepatitisSeconddoseDate.isEnabled = true
        
    }
    
    
    //***************influenza module*****************
    
    
    func influenzafirstYesSelected(){
        
        
        
        influenzasecondLabel.isEnabled  = true
        InfluenzaTrimesterFirstOutlet.isEnabled = true
        InfluenzaTrimesterSecondOutlet.isEnabled = true
        InfluenzaTrimesterThirdOutlet.isEnabled = true

        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = true
        
        
        
    }
    
    func influenzaEnablePregnantOptions(){
        
        influenzafirstLabel.isEnabled = true
        influenzasecondLabel.isEnabled  = true
        InfluenzaPregnantNoOutlet.isEnabled = true
        InfluenzaPregnantYesOutlet.isEnabled = true
        InfluenzaTrimesterFirstOutlet.isEnabled = true
        InfluenzaTrimesterSecondOutlet.isEnabled = true
        InfluenzaTrimesterThirdOutlet.isEnabled = true
       
        InfluenzaPregnantNoOutlet.titleLabel?.isEnabled = true
        InfluenzaPregnantYesOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = true
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = true
       
        
    }
    
    func influenzafirstNoSelected(){
        
       
        influenzasecondLabel.isEnabled  = false
        InfluenzaTrimesterFirstOutlet.isEnabled = false
        InfluenzaTrimesterSecondOutlet.isEnabled = false
        InfluenzaTrimesterThirdOutlet.isEnabled = false
        
        InfluenzaTrimesterFirstOutlet.isSelected = false
        InfluenzaTrimesterSecondOutlet.isSelected = false
        InfluenzaTrimesterThirdOutlet.isSelected = false
        
      
        InfluenzaTrimesterFirstOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterSecondOutlet.titleLabel?.isEnabled = false
        InfluenzaTrimesterThirdOutlet.titleLabel?.isEnabled = false
    
        
        
    }
    
    func influenzaFirstTrimesterSelected(){
    
        
        
    }
    
    func influenzaSecondTrimesterSelected(){
        
        
    }
    
    func influenzaThirdtrimesterSelected(){
        
        
    }
    
    func influenzaSecondYesSelected(){
       
        
        
        influenzaDosedate.isEnabled = true
        
        
        
    }
    
    func influenzaSecondNoselected(){
       
        influenzaDosedate.isEnabled = false
        influenzaDosedate.text = ""
        
        
    }
    
    
    
    //**********varicella module******************
    
    func varicellafirstYesSelected(){
        
        
        varicellaFirstdoseDate.isEnabled = true
        varicellaSeconddoseDate.isEnabled = true
    
        
        
    }
    
    func varicellafirstNoSelected(){
        
        varicellaFirstdoseDate.isEnabled = false
        varicellaSeconddoseDate.isEnabled = false
        
        varicellaFirstdoseDate.text = ""
        varicellaSeconddoseDate.text = ""
        
        
    }
    
    func varicellasecondYesSelected(){
        
        
    }
    
    func varicellasecondNoSelected(){
        
        
    }
    
    
    //********tdap module*************
    
    
    func tdapfirstYesSelected(){
        
        
        tdapFirstdoseDate.isEnabled = true
      
        tdapsecondLabel.isEnabled = true
        
        TdapBoosterNoOutlet.isEnabled = true
        TdapBoosterYesOutlet.isEnabled = true
        
        
        TdapBoosterNoOutlet.titleLabel?.isEnabled = true
        TdapBoosterYesOutlet.titleLabel?.isEnabled = true
        
        
        
    }
    
    func tdapfirstNoSelected(){
        
        tdapFirstdoseDate.isEnabled = false
        tdapFirstdoseDate.text = ""
        tdapsecondLabel.isEnabled = false
        tdapBoosterdoseDate.isEnabled = false
        tdapBoosterdoseDate.text = ""
        TdapBoosterNoOutlet.isEnabled = false
        TdapBoosterYesOutlet.isEnabled = false
        
        TdapBoosterNoOutlet.isSelected = false
        TdapBoosterYesOutlet.isSelected = false
        
        TdapBoosterNoOutlet.titleLabel?.isEnabled = false
        TdapBoosterYesOutlet.titleLabel?.isEnabled = false
        
        
        
    }
    
    func tdapsecondYesSelected(){
       
        tdapBoosterdoseDate.isEnabled = true
       
        
    }
    
    func tdapsecondNoSelected(){
        
        
        tdapBoosterdoseDate.isEnabled = false
        tdapBoosterdoseDate.text = ""
       
        
    }
    
    //********measles module************
    
    
    func measlesfirstYesSelected(){
        
        measlesFirstdoseDate.isEnabled = true
        measlesSeconddoseDate.isEnabled = true
       
        
        
    }
    
    func measlesfirstNoSelected(){
        
        measlesFirstdoseDate.isEnabled = false
        measlesSeconddoseDate.isEnabled = false
        
        measlesFirstdoseDate.text = ""
        measlesSeconddoseDate.text = ""
        
        
    }
 
    
    //********meningoco module*************
    
    
    
    func meningocofirstYesSelected(){
        
        meningocoFirstdoseDate.isEnabled = true
        meningocoSeconddoseDate.isEnabled = true
        
        
        
    }
    
    func meningocofirstNoSelected(){
        
        meningocoFirstdoseDate.isEnabled = false
        meningocoSeconddoseDate.isEnabled = false
        
        meningocoFirstdoseDate.text = ""
        meningocoSeconddoseDate.text = ""
        
        
    }
    
    
}
