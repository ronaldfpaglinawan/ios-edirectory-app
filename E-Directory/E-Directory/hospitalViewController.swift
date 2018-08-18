//
//  hospitalViewController.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 5/28/15.
//  Copyright (c) 2015 HeroSupportPH. All rights reserved.
//

import UIKit
import iAd
import CoreLocation
import GoogleMobileAds

class hospitalViewController: UIViewController, CLLocationManagerDelegate, UIActionSheetDelegate
{
    
    // MARK: Global Variables
    let locationManager = CLLocationManager()
    var cityString: String!
    var currentCityHospitalString: String!
    
    // MARK: Outlets
    @IBOutlet weak var cityButton: UIButton!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var bannerView: GADBannerView!
    
    
    // MARK: Actions
    @IBAction func showAppInfo(sender: AnyObject)
    {
        let alert = UIAlertController(title: "About E-Directory", message: "Co-founders:\n Gerard Navarro\n Ronald Paglinawan\n Vincent Cheng\n Jorge Ejercito\n Rodel Tarroza\n Ron Villaraza \n\ncontact us at \ninfo@herosupportph.com \n\nCopyright (c) and Trademark (TM) 2015. All rights reserved.", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func autoLocateCity(sender: AnyObject)
    {
        self.locationManager.startUpdatingLocation()
    }
    
    @IBAction func showCities(sender: AnyObject)
    {
        //--- display list of cities in Metro Manila
        let optionMenu = UIAlertController(title: nil, message: "Choose City", preferredStyle: .ActionSheet)
        
        
        let manilaCityAction = UIAlertAction(title: "Manila", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Manila"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let quezonCityAction = UIAlertAction(title: "Quezon City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Quezon City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let caloocanCityAction = UIAlertAction(title: "Caloocan City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Caloocan City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let laspinasCityAction = UIAlertAction(title: "Las Piñas City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Las Piñas City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let makatiCityAction = UIAlertAction(title: "Makati City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Makati City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let malabonCityAction = UIAlertAction(title: "Malabon City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Malabon City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let mandaluyongCityAction = UIAlertAction(title: "Mandaluyong City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Mandaluyong City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let marikinaCityAction = UIAlertAction(title: "Marikina City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Marikina City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let muntinlupaCityAction = UIAlertAction(title: "Muntinlupa City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Muntinlupa City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let navotasCityAction = UIAlertAction(title: "Navotas City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Navotas City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let paranaqueCityAction = UIAlertAction(title: "Parañaque City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Parañaque City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let pasayCityAction = UIAlertAction(title: "Pasay City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Pasay City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let pasigCityAction = UIAlertAction(title: "Pasig City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Pasig City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let paterosCityAction = UIAlertAction(title: "Pateros City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Pateros City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let sanjuanCityAction = UIAlertAction(title: "San Juan City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "San Juan City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let taguigCityAction = UIAlertAction(title: "Taguig City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Taguig City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        let valenzuelaCityAction = UIAlertAction(title: "Valenzuela City", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            self.cityLabel.text = "Valenzuela City"
            
            // set value of currentCityHospitalString
            self.currentCityHospitalString = self.cityLabel.text! + " Hospital Number"
            print("currentCityHospitalString: \(self.currentCityHospitalString)")
            
            
            // set cityLabel to userDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(self.cityLabel.text, forKey: "cityLabel")
            
            // read cityLabel from userDefaults
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
        })
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction) -> Void in
            print("Cancelled")
        })
        
        
        optionMenu.addAction(manilaCityAction)
        optionMenu.addAction(quezonCityAction)
        optionMenu.addAction(caloocanCityAction)
        optionMenu.addAction(laspinasCityAction)
        optionMenu.addAction(makatiCityAction)
        optionMenu.addAction(malabonCityAction)
        optionMenu.addAction(mandaluyongCityAction)
        optionMenu.addAction(marikinaCityAction)
        optionMenu.addAction(muntinlupaCityAction)
        optionMenu.addAction(navotasCityAction)
        optionMenu.addAction(paranaqueCityAction)
        optionMenu.addAction(pasayCityAction)
        optionMenu.addAction(pasigCityAction)
        optionMenu.addAction(paterosCityAction)
        optionMenu.addAction(sanjuanCityAction)
        optionMenu.addAction(taguigCityAction)
        optionMenu.addAction(valenzuelaCityAction)
        optionMenu.addAction(cancelAction)
        
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    @IBAction func call(sender: AnyObject)
    {
        cityString = cityLabel.text!
        
        
        
        switch cityString
        {
            
        case "Manila":
            print("current city: Manila")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6325548400")!)
            }
            
            
        case "Quezon City":
            print("current city: Quezon City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6324261314")!)
            }
            
            
        case "Caloocan City":
            print("current city: Caloocan City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6323645588")!)
            }
            
            
        case "Las Piñas City":
            print("current city: Las Piñas City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6328005524")!)
            }
            
            
        case "Makati City":
            print("current city: Makati City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6328888999")!)
            }
            
            
        case "Malabon City":
            print("current city: Malabon City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6322946352")!)
            }
            
            
        case "Mandaluyong City":
            print("current city: Mandaluyong City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6324649999")!)
            }
            
            
        case "Marikina City":
            print("current city: Marikina City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6326822222")!)
            }
            
            
        case "Muntinlupa City":
            print("current city: Muntinlupa City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6327750511")!)
            }
            
            
        case "Navotas City":
            print("current city: Navotas City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6322819091")!)
            }
            
            
        case "Parañaque City":
            print("current city: Parañaque City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6325415888")!)
            }
            
            
        case "Pasay City":
            print("current city: Pasay City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6328319731")!)
            }
            
            
        case "Pasig City":
            print("current city: Pasig City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6326356789")!)
            }
            
            
        case "Pateros City":
            print("current city: Pateros City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6326433486")!)
            }
            
            
        case "San Juan City":
            print("current city: San Juan City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+63272700001")!)
            }
            
            
        case "Taguig City":
            print("current city: Taguig City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6328370178")!)
            }
            
            
        case "Valenzuela City":
            print("current city: Valenzuela City")
            print("calling the Hospital")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(currentCityHospitalString) != nil && defaults.stringForKey(currentCityHospitalString) != ""
            {
                print("call the new hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string:defaults.stringForKey(currentCityHospitalString)!)!)
                print("\(self.currentCityHospitalString) from NSUserDefaults: \(defaults.stringForKey(currentCityHospitalString)!)")
            }
                
            else
            {
                print("call the default hospital number")
                UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6322923519")!)
            }
            
            
        default:
            print("unknown city")
        }
    }
    
    // MARK: App Life-cycle functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // add the logo at the navigation bar
        let imageString = UIImage(named: "E-directoryLogo")
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        imageView.image = imageString
        navigationItem.titleView = imageView
        
        
        // set the iAds
        //self.canDisplayBannerAds = true
        
        // "ca-app-pub-3940256099942544/2934735716"  // test ad unit ID
        // "ca-app-pub-3066008480229593/3786991464"  // --> production ad unit ID
        // set the GoogleAds
        self.bannerView.adUnitID = "ca-app-pub-3066008480229593/3786991464"  // --> production ad unit ID
        self.bannerView.rootViewController = self
        self.bannerView.loadRequest(GADRequest())
        
        
        // set the checking for first time use of the app
        let defaults = NSUserDefaults.standardUserDefaults()
        if defaults.boolForKey("isFirstTimeUse") // if defaults value is true
        {
            print("NO. This is not the first time the app is used.")
            
            // check the value of 'userResponseToTermsAndCondition' key in NSUserDefaults
            if defaults.boolForKey("userResponseToTermsAndCondition") // if defaults value is true
            {
                print("the user accepted the Terms and Condition. Proceed to Main Page.")
                
                // set the locationManager
                self.locationManager.delegate = self
                self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
                self.locationManager.requestWhenInUseAuthorization()
                self.locationManager.startUpdatingLocation()
            }
                
            else
            {
                print("the user has not accepted yet the Terms and Condition. Proceed to Terms and Condition Page.")
                
                // show the FirstTimeTermsAndConditionVC
                let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
                let vc : FirstTimeNavigationController = mainStoryboard.instantiateViewControllerWithIdentifier("FirstTimeNavigation") as! FirstTimeNavigationController
                self.presentViewController(vc, animated: true, completion: nil)
            }
        }
            
        else
        {
            print("YES. This is the first time the app is used.")
            
            // set to TRUE for the key 'isFirstTimeUse' in NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setBool(true, forKey:"isFirstTimeUse")
            
            // show the FirstTimeTermsAndConditionVC
            let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let vc : FirstTimeNavigationController = mainStoryboard.instantiateViewControllerWithIdentifier("FirstTimeNavigation") as! FirstTimeNavigationController
            self.presentViewController(vc, animated: true, completion: nil)
            
        }
        
        
        // set NSNotification
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleNotification:", name: "changeTabNotification", object: nil)
        
    }
    
    override func viewWillAppear(animated: Bool)
    {
        // send a notification to NSNotificationCenter
        NSNotificationCenter.defaultCenter().postNotificationName("changeTabNotification", object: nil);
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Custom functions
    func handleNotification(notif: NSNotification)
    {
        print("changeTabNotification was handled")
        
        
        // read cityLabel from userDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if defaults.stringForKey("cityLabel") != nil
        {
            let cityLabelString = defaults.stringForKey("cityLabel")!
            print("cityLabel: \(cityLabelString)")
            
            // update the cityLabel
            cityLabel.text = cityLabelString
        }
            
        else
        {
            // do nothing.
            print("cityLabel is still nil")
        }
    }
    
    
    // MARK: Delegate functions
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error)->Void in
            
            if (error != nil)
            {
                print("Error: " + error!.localizedDescription)
                return
            }
            
            if placemarks!.count > 0
            {
                let pm = placemarks?[0]
                self.displayLocationInfo(pm!)
            }
                
            else
            {
                print("Error with the data.")
            }
        })
    }
    
    func displayLocationInfo(placemark: CLPlacemark)
    {
        
        self.locationManager.stopUpdatingLocation()
        print("current city: \(placemark.locality)")
        print("current country: \(placemark.country)")
        
        
        // update the cityLabel
        cityLabel.text = placemark.locality
        
        // set cityLabel to userDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(cityLabel.text, forKey: "cityLabel")
        
        // read cityLabel from userDefaults
        let cityLabelString = defaults.stringForKey("cityLabel")!
        print("cityLabel: \(cityLabelString)")
        
        // set value of currentCityHospitalString
        currentCityHospitalString = cityLabel.text! + " Hospital Number"
        print("currentCityHospitalString: \(currentCityHospitalString)")
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
    {
        print("Error: " + error.localizedDescription)
    }
    
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if segue.identifier == "HospitalToSettingsSegue"
        {
            let controller = segue.destinationViewController as? HotlinesViewController
            
            
            // Hide bottom tab bar in the hotlinesVC
            controller!.hidesBottomBarWhenPushed = true;
            
        }
    }
}