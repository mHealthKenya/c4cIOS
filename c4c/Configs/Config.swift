//
//  Config.swift
//  c4c
//
//  Created by MHEALTH KENYA on 16/10/2019.
//  Copyright © 2019 MHEALTH. All rights reserved.
//

import Foundation

let URL_VERIFY_NUMBER="https://c4c.mhealthkenya.co.ke/index.php/Core/chkMobile";

let GETCOUNTY_URL = "https://c4c.mhealthkenya.co.ke/index.php/core/CountySearch";

let GETSUBCOUNTY_URL = "https://c4c.mhealthkenya.co.ke/index.php/core/SubCountySearch";

let GETFACILITY_URL = "https://c4c.mhealthkenya.co.ke/index.php/core/FacSearch";

let SIGNUP_URL = "https://c4c.mhealthkenya.co.ke/index.php/Core/AppReg";

let CREATPROFILE_URL = "https://c4c.mhealthkenya.co.ke/Core/SignUp";

let REPORTEXPOSURE_URL = "https://c4c.mhealthkenya.co.ke/Core/RptExp";

let BROADCAST_URL = "https://c4c.mhealthkenya.co.ke/Core/bSMS";


let mycadre:[String]=[ "Student", "Doctor", "Nurse", "Clinical Officer", "Laboratory Technologist", "Cleaner", "Waste Handlers", "VCT Counselor", "Other"]
let mygender:[String]=["Male","Female"]
let securityQuestions :[String] = ["what is your favourite pet ?", "what is your favourite country ?"];

let affiliation:[String] = ["MOH","KNH", "KMTC", "EGPAF","GIS","AMREF","UMB","FHI360","CHS","UNITID",
    "KMPDB", "Not Applicable"];
let itemsspecialisation:[String] = ["Anaesthesia", "Cardiothoracic surgery", "Dermatology", "Ear Nose And Throat",
    "Internal Medicine", "Microbiology", "Neurosurgery", "Obstetrics and Gynaecology", "Occupational Medicine",
    "Ophthalmology", "Orthopaedic Surgery", "Paediatrics and Child Health", "Palliative Medicine",
    "Pathology", "Psychiatry", "Plastic and Reconstructive Surgery", "Public Health", "Radiology",
    "Surgery", "Immunology", "Infectious Diseases", "Clinical Medical Genetics", "Emergency Medicine",
    "Opthalmology"];



let SPINNERLISTWHERE:[String] = ["Medical Ward", "Surgical Ward", "Theater", "Maternity", "Dental Clinic", "OP/MCH", "Laundry", "Laboratory","Other"];
let SPINNERLISTWHAT:[String] = ["Needle Stick", "Cuts", "Splash on Mucosa", "Non-intact Skin", "Bite", "Other"];
let SPINNERLISTDEVICE:[String] = [
    "Syringe/Needle IM/SC Injection",
    "Syring/Needle Blood Drawing",
    "Phlebotomy Needle/ Vacuum set",
    "IV Catheter/Canula",
    "Needle on IV Line",
    "Unused Needle",
    "Lancet",
    "Suture Needle",
    "Scalpel",
    "Capillary Tube",
    "Glass Slide",
    "Pippete Tip",
    "Other"
];

let SPINNERLISTSAFETY:[String] = ["Yes", "No", "Not Known"];

let SPINNERLISTAUTODISABLE:[String] = ["Yes", "No", "Not Known"];

let SPINNERLISTDEEP:[String] = ["Superficial", "Deep"];
let SPINNERLISTDEEPALGORITHM:[String] = ["Little or no Bleeding", "Deep Stick/Cut, Profuse Bleeding"];


let SPINNERLISTPURPOSE:[String] = [
    "Injections",
    "Blood Collection",
    "Cannulation/Strat IV",
    "Connect IV Line",
    "Place Arterial/Central Line",
    "Fingerstick/Heel stick",
    "Other"
];



let SPINNERLISTWHEN:[String] = [
    "During procedure",
    "Disassembling device",
    "Recapping",
    "Cleaning after procedure",
    "Device left on Table, Floor etc.",
    "Device placed in appropriate trash bin",
    "Device protruded from trash container",
    "During disposal",
    "Other"
];

let SPINNERLISTWHENALGORITHM:[String] = [
    "During use",
    "After use",
    "Between steps of a procedure",
    "After use",
    "After use",
    "After disposal",
    "After disposal",
    "During disposal",
    "Other"
];

let SPINNERLISTHIVSTATUS:[String] = ["HIV+", "HIV-", "Unknown"];

let SPINNERLISTPEPINIT:[String] = ["Yes", "No"];


//
let SPINNERLISTEXPOSURERESULT:[String] = [
    "Patient Contact","Leaking Specimen Container","Faulty Apparatus","Contaminated Surfaces","Other"];

let SPINNERLISTHBVSTATUS:[String] = ["HBV+", "HBV-", "Unknown"];


let KEY_REPORTEXPOSURE_ELOC = "eloc";
let KEY_REPORTEXPOSURE_ETYPE = "etype";
let KEY_REPORTEXPOSURE_PURP = "purp";
let KEY_REPORTEXPOSURE_WHENITHAPND = "whenithapnd";
let KEY_REPORTEXPOSURE_HIVSTATUS = "HivStatus";
let KEY_REPORTEXPOSURE_HBVSTATUS = "HbvStatus";
let KEY_REPORTEXPOSURE_EXPNO = "expno";
let KEY_REPORTEXPOSURE_PEPINIT = "pepinit";
let KEY_REPORTEXPOSURE_DATEEXPD = "dateexpd";
let KEY_REPORTEXPOSURE_DEVICE = "device";
let KEY_REPORTEXPOSURE_DEVICESAFETY = "deviceSafety";
let KEY_REPORTEXPOSURE_DEEP = "deep";
let KEY_REPORTEXPOSURE_DATEPEP = "datepep";
let KEY_REPORTEXPOSURE_EXPRESULT = "expresult";
let KEY_REPORTEXPOSURE_PHONENO = "phone_no";



let SPINNERLISTCADRE:[String] = [
    "Student",
    "Doctor",
    "Nurse",
    "Clinical officer",
    "Laboratory technologist",
    "Cleaner",
    "Waste Handlers",
    "Vct Counsellor"
];
