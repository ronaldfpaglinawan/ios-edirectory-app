//
//  CityDetailViewController.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 5/20/15.
//  Copyright (c) 2015 HeroSupportPH. All rights reserved.
//

import UIKit

class CityDetailViewController: UIViewController
{
    
    // MARK: Outlets
    @IBOutlet weak var hospitalTextField: UITextField!
    @IBOutlet weak var policeLabel: UILabel!
    @IBOutlet weak var firedeptLabel: UILabel!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var resetButton: UIButton!
    
    
    // MARK: Global Variables
    var cityString: String!
    var cityHospitalString: String!
    
    // MARK: Actions
    @IBAction func saveNumber(sender: AnyObject)
    {
        print("tapped 'Save'")
        
        // hide the keyboard
        hospitalTextField.resignFirstResponder();
        
        if hospitalTextField.text!.isEmpty
        {
            print("textfield is empty")
            
            // display pop up view
            let alert = UIAlertController(title: "Error", message: "The hospital number textfield must not be empty. Please provide a correct hospital number and try again.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
            
        else if hospitalTextField.text!.characters.count < 4
        {
            print("textfield is less than 4 chars")
            
            // display pop up view
            let alert = UIAlertController(title: "Error", message: "The hospital number must not be less than 4 digits. Please provide a correct hospital number and try again.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        else
        {
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            
            // display pop up view
            let alert = UIAlertController(title: "Hospital Number Status", message: "The new hospital number has been saved successfully.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func resetToDefault(sender: AnyObject)
    {
        print("tapped 'Reset to default'")
        
        // codes to reset to default numbers
        switch cityString
        {
            
        case "Manila":
            print("current city: Manila")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6325548400"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")
            
            
        case "Quezon City":
            print("current city: Quezon City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6324261314"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")
            
            
        case "Caloocan City":
            print("current city: Caloocan City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6323645588"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Las Piñas City":
            print("current city: Las Piñas City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6328005524"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Makati City":
            print("current city: Makati City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6328888999"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Malabon City":
            print("current city: Malabon City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6322946352"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Mandaluyong City":
            print("current city: Mandaluyong City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6324649999"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Marikina City":
            print("current city: Marikina City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6326822222"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")
            
            
        case "Muntinlupa City":
            print("current city: Muntinlupa City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6327750511"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Navotas City":
            print("current city: Navotas City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6322819091"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Parañaque City":
            print("current city: Parañaque City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6325415888"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Pasay City":
            print("current city: Pasay City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6328319731"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")
 
            
        case "Pasig City":
            print("current city: Pasig City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6326356789"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Pateros City":
            print("current city: Pateros City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6326433486"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "San Juan City":
            print("current city: San Juan City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+63272700001"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")

            
        case "Taguig City":
            print("current city: Taguig City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6328370178"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")
            
            
        case "Valenzuela City":
            print("current city: Valenzuela City")
            
            // set the value of hospitalTextField
            hospitalTextField.text = "+6322916801"
            
            // save the new contact number to NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(hospitalTextField.text, forKey:cityHospitalString)
            print("cityHospitalString: \(defaults.stringForKey(cityHospitalString)!)")
            
            
        default:
            print("unknown city")
        }

        
        
        
        
        // display pop up view
        let alert = UIAlertController(title: "Hospital Number Status", message: "The hospital number has been reset to default.", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    // MARK: App Life-cycle functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        displayContactNumbers()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        if let touch = touches.first 
        {
            
            // hide the keyboard if the user taps outside the hospitalTextField
            if hospitalTextField.isFirstResponder() && touch.view != hospitalTextField
            {
                hospitalTextField.resignFirstResponder()
            }
            
        }
        
        super.touchesBegan(touches , withEvent:event)
    }
    
    
    
    
    // MARK: Custom functions
    func displayContactNumbers()
    {
        // set the cityString value
        cityString = navigationItem.title!
        
        // set the value of cityHospitalString
        cityHospitalString = "\(cityString)" + " Hospital Number"
        print("cityHospitalString: \(cityHospitalString)")
        
        switch cityString
        {
            
        case "Manila":
            print("current city: Manila")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6325548400"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6322253093"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6325273653"
            
        
        case "Quezon City":
            print("current city: Quezon City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
            
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6324261314"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6329241025"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6329288363"
        
        
        case "Caloocan City":
            print("current city: Caloocan City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6323645588"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6323869363"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6323106527"
            
            
        case "Las Piñas City":
            print("current city: Las Piñas City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6328005524"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6328718221"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6328730611"
            
            
        case "Makati City":
            print("current city: Makati City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6328888999"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6328450135"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6328164014"
            
            
        case "Malabon City":
            print("current city: Malabon City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6322946352"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6322811133"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6323619712"
            
            
        case "Mandaluyong City":
            print("current city: Mandaluyong City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6324649999"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6322322318"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6325322189"
            
            
        case "Marikina City":
            print("current city: Marikina City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6326822222"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6326466151"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6326810233"
        
        
        case "Muntinlupa City":
            print("current city: Muntinlupa City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6327750511"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6328622611"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6328422201"
            
            
        case "Navotas City":
            print("current city: Navotas City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6322819091"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6322819099"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6322810854"
            
            
        case "Parañaque City":
            print("current city: Parañaque City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6325415888"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6328262877"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6328269131"
            
            
        case "Pasay City":
            print("current city: Pasay City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6328319731"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6328317322"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6328442120"
            
            
        case "Pasig City":
            print("current city: Pasig City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6326356789"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6326411433"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6326412815"
            
            
        case "Pateros City":
            print("current city: Pateros City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6326433486"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6326428235"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6326411365"
            
            
        case "San Juan City":
            print("current city: San Juan City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+63272700001"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6327442480"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6327252079"
            
            
        case "Taguig City":
            print("current city: Taguig City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6328370178"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6326423582"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6328374496"
        
        
        case "Valenzuela City":
            print("current city: Valenzuela City")
            
            // read values from NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            
            if defaults.stringForKey(cityHospitalString) != nil && defaults.stringForKey(cityHospitalString) != ""
            {
                
                // set the value of hospitalTextField
                hospitalTextField.text = defaults.stringForKey(cityHospitalString)!
            }
                
            else
            {
                // set the value of hospitalTextField
                hospitalTextField.text = "+6322916801"
            }
            
            // set the value of policeLabel
            policeLabel.text = "+6322940656"
            
            // set the value of firedeptLabel
            firedeptLabel.text = "+6322923519"
            
            
        default:
            print("unknown city")
        }
    }
    
}
