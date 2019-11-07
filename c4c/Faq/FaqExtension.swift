//
//  FaqExtension.swift
//  c4c
//
//  Created by MHEALTH KENYA on 07/11/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation
import UIKit

extension FaqViewController{
    
    
    func setFaqContent(){
        
        
        sectionNames = [ "Security and Confidentiality?", "What constitutes an occupational exposure ?", "What body fluids are potentially infectious during an occupational exposure ?","What is the risk of infection after an occupational exposure;,<b>Hepatitis B Virus (HBV)</b>?","What should be done following an occupational exposure ?","What information should I provide in case of an exposure at work ?","What factors must qualified health care professionals consider when assessing the need for follow-up of occupational exposures ?","What are some measures to reduce the risk of blood contact ?" ];
        sectionItems = [ ["All data shared within this application is safe and secure. "],
                         ["an exposure can be defined as a percutaneous injury (e.g., needle stick or cut with a sharp object) or contact of mucous membrane or non-intact skin (e.g., exposed skin that is chapped, abraded, or with dermatitis) with blood, saliva, tissue, or other body fluids that are potentially infectious. Exposure incidents might place dental health care personnel at risk for hepatitis B virus (HBV), hepatitis C virus (HCV), or human immunodeficiency virus (HIV) infection, and therefore should be evaluated immediately following treatment of the exposure site by a qualified health care professional "],
                         ["when evaluating occupational exposures to fluids that might contain hepatitis B virus (HBV), hepatitis C virus (HCV), or human immunodeficiency virus (HIV), health care workers should consider that all blood, body fluids, secretions, and excretions except sweat, may contain transmissible infectious agents. Blood contains the greatest proportion of infectious blood-borne virus particle titers of all body fluids and is the most critical transmission vehicle in the health-care setting. During dental procedures it is predictable that saliva will become contaminated with blood. If blood is not visible, it is still likely that very small quantities of blood are present, but the risk for transmitting HBV, HCV, or HIV is extremely small. Despite this small transmission risk, a qualified health care professional1 should evaluate any occupational exposure2 to saliva in dental settings, regardless of visible blood ?"],
                         ["Health care workers who have received hepatitis B vaccine and have developed immunity to the virus are at virtually no risk for infection. For an unvaccinated person, the risk from a single needlestick or a cut exposure to HBV-infected blood ranges from 6%–30% and depends on the hepatitis B e antigen (HBeAg) status of the source individual. Individuals who are both hepatitis B surface antigen (HBsAg) positive and HBeAg positive have more viruses in their blood and are more likely to transmit HBV.<br/><br/>\n<b>Hepatitis C Virus (HCV) </b>: Based on limited studies, the estimated risk for infection after a needle-stick or cut exposure to HCV-infected blood is approximately 1.8%. The risk following a blood splash is unknown but is believed to be very small; however, HCV infection from such an exposure has been reported.<br/><br/>\n<b>Human Immunodeficiency Virus (HIV)</b>: The average risk for HIV infection after a needlestick or cut exposure to HlV-infected blood is 0.3% (about 1 in 300). Stated another way, 99.7% of needlestick/cut exposures to HIV-contaminated blood do not lead to infection. The risk after exposure of the eye, nose, or mouth to HIV-infected blood is estimated to be, on average, 0.1% (1 in 1,000).The risk after exposure of the skin to HlV-infected blood is estimated to be less than 0.1%. A small amount of blood on intact skin probably poses no risk at all. There have been no documented cases of HIV transmission due to an exposure involving a small amount of blood on intact skin (a few drops of blood on skin for a short period of time). The risk may be higher if the skin is damaged (for example, by a recent cut), if the contact involves a large area of skin, or if the contact is prolonged.<br/><br/>"],
                         ["Wounds and skin sites that have been in contact with blood or body fluids should be washed with soap and water; mucous membranes should be flushed with water. Immediate evaluation must be performed by a qualified health care professional.1 Health care providers who evaluate exposed dental health care professionals should be"],
                         ["Date and time of exposure; <br/><br/><b>Details of the procedure being performed;</b>: ncluding where and how the exposure occurred, whether the exposure involved a sharp device, the type of device, whether there was visible blood on the device, and how and when during its handling the exposure occurred.<br/><br/> <b>Details of the exposure;</b>: including the type and amount of fluid or material and the severity of the exposure to the site. For a percutaneous injury, details would include the depth of the wound, the gauge of the needle, and whether fluid was injected; for a skin or mucous membrane exposure they would include the estimated volume of material, the duration of contact, and the condition of the skin (e.g., chapped, abraded, or intact).<br/><br/> <b>Details about the exposure source; </b>: whether the patient was infected with hepatitis B virus (HBV) and his or her hepatitis B e antigen (HBeAg) status; hepatitis C virus (HCV); or human immunodeficiency virus (HIV); and, if the source was infected with HIV, the stage of disease, history of antiretroviral therapy, and viral load, if known. If this information is not known from the medical record, then the source patient should be asked to obtain serologic testing for HBV, HCV, and HIV<br/><br/> <b>Details about the exposed person;</b>: e.g. hepatitis B vaccination and vaccine-response status."],
                         ["The evaluation must include the following factors to determine the need for further follow-up:<br/><br/>Type of exposure, percutaneous injury (e.g., depth, extent), Mucous membrane exposure, non-intact skin exposure, Bites resulting in blood exposure to either person involved, Type and amount of fluid/tissue, Blood, Fluids containing blood, Infectious status of source, Presence of hepatitis B surface antigen (HBsAg) and hepatitis B e antigen (HBeAg), Presence of hepatitis C virus (HCV) antibody, Presence of human immunodeficiency virus (HIV) antibody, Susceptibility of exposed person, Hepatitis B vaccine and vaccine response status, HBV, HCV, or HIV immune status<br/><br/>After conducting this initial evaluation of the occupational exposure, a qualified health care professional must decide whether to conduct further follow-up on an individual basis using all of the information obtained"],
                         ["Avoiding occupational exposures to blood is the primary way to prevent transmission of HBV, HCV, and HIV in health care settings. Methods used to reduce such exposures in include engineering and work practice controls and the use of personal protective equipment (PPE).<br/><br/>Engineering controls isolate or remove the blood borne pathogens hazard from the workplace. These controls are frequently technology-based and often incorporate safer designs of instruments and devices. Examples include sharps disposal containers, rubber dams, and self-sheathing needles. Whenever possible, engineering controls should be used as the primary method to reduce exposures to blood borne pathogens following skin penetration with sharp instruments or needles. <br/><br/>Work practice controls are behavior-based and are intended to reduce the risk of blood exposure by changing the manner in which a task is performed. Personal protective equipment consists of specialized clothing or equipment worn to protect against hazards. Examples include gloves, masks, protective eyewear with side shields, and gowns to prevent skin and mucous membrane exposures."]
        ];
    }
    
    
    
    
    
    
    
    func sizeHeaderToFit() {
        if let headerView = tableView.tableHeaderView {
            
            headerView.setNeedsLayout()
            headerView.layoutIfNeeded()
            
            let height = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = headerView.frame
            frame.size.height = height
            headerView.frame = frame
            
            tableView.tableHeaderView = headerView
        }
    }
    
    func sizeFooterToFit() {
        if let footerView = tableView.tableFooterView {
            footerView.setNeedsLayout()
            footerView.layoutIfNeeded()
            
            let height = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = footerView.frame
            frame.size.height = height
            footerView.frame = frame
            
            tableView.tableFooterView = footerView
        }
    }
    
    
}

extension FAQuestionsViewController{
    
    
    func setFaqContent(){
        
        
        mtitle = [ "Security and Confidentiality?", "What constitutes an occupational exposure ?", "What body fluids are potentially infectious during an occupational exposure ?","What is the risk of infection after an occupational exposure;,<b>Hepatitis B Virus (HBV)</b>?","What should be done following an occupational exposure ?","What information should I provide in case of an exposure at work ?","What factors must qualified health care professionals consider when assessing the need for follow-up of occupational exposures ?","What are some measures to reduce the risk of blood contact ?" ];
        content = [ "All data shared within this application is safe and secure. ",
                         "an exposure can be defined as a percutaneous injury (e.g., needle stick or cut with a sharp object) or contact of mucous membrane or non-intact skin (e.g., exposed skin that is chapped, abraded, or with dermatitis) with blood, saliva, tissue, or other body fluids that are potentially infectious. Exposure incidents might place dental health care personnel at risk for hepatitis B virus (HBV), hepatitis C virus (HCV), or human immunodeficiency virus (HIV) infection, and therefore should be evaluated immediately following treatment of the exposure site by a qualified health care professional ",
                         "when evaluating occupational exposures to fluids that might contain hepatitis B virus (HBV), hepatitis C virus (HCV), or human immunodeficiency virus (HIV), health care workers should consider that all blood, body fluids, secretions, and excretions except sweat, may contain transmissible infectious agents. Blood contains the greatest proportion of infectious blood-borne virus particle titers of all body fluids and is the most critical transmission vehicle in the health-care setting. During dental procedures it is predictable that saliva will become contaminated with blood. If blood is not visible, it is still likely that very small quantities of blood are present, but the risk for transmitting HBV, HCV, or HIV is extremely small. Despite this small transmission risk, a qualified health care professional1 should evaluate any occupational exposure2 to saliva in dental settings, regardless of visible blood ?",
                         "Health care workers who have received hepatitis B vaccine and have developed immunity to the virus are at virtually no risk for infection. For an unvaccinated person, the risk from a single needlestick or a cut exposure to HBV-infected blood ranges from 6%–30% and depends on the hepatitis B e antigen (HBeAg) status of the source individual. Individuals who are both hepatitis B surface antigen (HBsAg) positive and HBeAg positive have more viruses in their blood and are more likely to transmit HBV.<br/><br/>\n<b>Hepatitis C Virus (HCV) </b>: Based on limited studies, the estimated risk for infection after a needle-stick or cut exposure to HCV-infected blood is approximately 1.8%. The risk following a blood splash is unknown but is believed to be very small; however, HCV infection from such an exposure has been reported.<br/><br/>\n<b>Human Immunodeficiency Virus (HIV)</b>: The average risk for HIV infection after a needlestick or cut exposure to HlV-infected blood is 0.3% (about 1 in 300). Stated another way, 99.7% of needlestick/cut exposures to HIV-contaminated blood do not lead to infection. The risk after exposure of the eye, nose, or mouth to HIV-infected blood is estimated to be, on average, 0.1% (1 in 1,000).The risk after exposure of the skin to HlV-infected blood is estimated to be less than 0.1%. A small amount of blood on intact skin probably poses no risk at all. There have been no documented cases of HIV transmission due to an exposure involving a small amount of blood on intact skin (a few drops of blood on skin for a short period of time). The risk may be higher if the skin is damaged (for example, by a recent cut), if the contact involves a large area of skin, or if the contact is prolonged.<br/><br/>",
                         "Wounds and skin sites that have been in contact with blood or body fluids should be washed with soap and water; mucous membranes should be flushed with water. Immediate evaluation must be performed by a qualified health care professional.1 Health care providers who evaluate exposed dental health care professionals should be",
                         "Date and time of exposure; <br/><br/><b>Details of the procedure being performed;</b>: ncluding where and how the exposure occurred, whether the exposure involved a sharp device, the type of device, whether there was visible blood on the device, and how and when during its handling the exposure occurred.<br/><br/> <b>Details of the exposure;</b>: including the type and amount of fluid or material and the severity of the exposure to the site. For a percutaneous injury, details would include the depth of the wound, the gauge of the needle, and whether fluid was injected; for a skin or mucous membrane exposure they would include the estimated volume of material, the duration of contact, and the condition of the skin (e.g., chapped, abraded, or intact).<br/><br/> <b>Details about the exposure source; </b>: whether the patient was infected with hepatitis B virus (HBV) and his or her hepatitis B e antigen (HBeAg) status; hepatitis C virus (HCV); or human immunodeficiency virus (HIV); and, if the source was infected with HIV, the stage of disease, history of antiretroviral therapy, and viral load, if known. If this information is not known from the medical record, then the source patient should be asked to obtain serologic testing for HBV, HCV, and HIV<br/><br/> <b>Details about the exposed person;</b>: e.g. hepatitis B vaccination and vaccine-response status.",
                         "The evaluation must include the following factors to determine the need for further follow-up:<br/><br/>Type of exposure, percutaneous injury (e.g., depth, extent), Mucous membrane exposure, non-intact skin exposure, Bites resulting in blood exposure to either person involved, Type and amount of fluid/tissue, Blood, Fluids containing blood, Infectious status of source, Presence of hepatitis B surface antigen (HBsAg) and hepatitis B e antigen (HBeAg), Presence of hepatitis C virus (HCV) antibody, Presence of human immunodeficiency virus (HIV) antibody, Susceptibility of exposed person, Hepatitis B vaccine and vaccine response status, HBV, HCV, or HIV immune status<br/><br/>After conducting this initial evaluation of the occupational exposure, a qualified health care professional must decide whether to conduct further follow-up on an individual basis using all of the information obtained",
                         "Avoiding occupational exposures to blood is the primary way to prevent transmission of HBV, HCV, and HIV in health care settings. Methods used to reduce such exposures in include engineering and work practice controls and the use of personal protective equipment (PPE).<br/><br/>Engineering controls isolate or remove the blood borne pathogens hazard from the workplace. These controls are frequently technology-based and often incorporate safer designs of instruments and devices. Examples include sharps disposal containers, rubber dams, and self-sheathing needles. Whenever possible, engineering controls should be used as the primary method to reduce exposures to blood borne pathogens following skin penetration with sharp instruments or needles. <br/><br/>Work practice controls are behavior-based and are intended to reduce the risk of blood exposure by changing the manner in which a task is performed. Personal protective equipment consists of specialized clothing or equipment worn to protect against hazards. Examples include gloves, masks, protective eyewear with side shields, and gowns to prevent skin and mucous membrane exposures."
        ];
    }
}
