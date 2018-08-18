//
//  UserInformationViewController.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 6/5/15.
//  Copyright (c) 2015 HeroSupportPH. All rights reserved.
//

import UIKit
import Parse
import iAd

class UserInformationViewController: UIViewController, UITextFieldDelegate
{
    // MARK: Outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var homeTownTextField: UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    
    
    // MARK: Global Variables
    var originalCenter: CGPoint!
    
    // MARK: Actions
    @IBAction func submitUserInfo(sender: AnyObject)
    {
        print("tapped 'Submit'")
        
        // check first if all textfields are not empty
        if firstNameTextField.text!.isEmpty || lastNameTextField.text!.isEmpty || emailTextField.text!.isEmpty || mobileNumberTextField.text!.isEmpty
        {
            
            // display pop up view
            let alert = UIAlertController(title: "Missing Information", message: "Please fill out all the required fields before submitting.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        else
        {
            // submit data to Parse
            saveDataToParseCloud()
            
            
            // set to TRUE for the key 'isUserSignedUp' in NSUserDefaults
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setBool(true, forKey:"isUserSignedUp")
            
            
            // display pop up view
            let alert = UIAlertController(title: "Thank You!", message: "Please enjoy using the app. We hope that our app may help you during emergency situations.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {
                (alert: UIAlertAction) -> Void in
                
                // save userResponseToTermsAndCondition in NSUserDefaults
                let defaults = NSUserDefaults.standardUserDefaults()
                defaults.setBool(true, forKey:"userResponseToTermsAndCondition")
                
                
                // proceed to the main view of the app
                let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
                let vc : MainTabBarController = mainStoryboard.instantiateViewControllerWithIdentifier("mainTabBarID") as! MainTabBarController
                
                self.presentViewController(vc, animated: true, completion: nil)
                
                
            }))
            
            self.presentViewController(alert, animated: true, completion: nil)

        }
        
    }
    
    @IBAction func cancel(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: nil);
    }
    
    // MARK: App Life-cycle functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // set the iAds
        self.canDisplayBannerAds = true
        
        
        // set the navigation bar items
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.redColor()]
        self.navigationController!.navigationBar.titleTextAttributes = titleDict as? [String : AnyObject]
        self.navigationItem.title = "USER INFORMATION"
        self.navigationController?.navigationBar.tintColor = UIColor.darkGrayColor()
        
        
        
        // get the center of the screen
        self.originalCenter = self.view.center
        
        
        // remove the autocorrection in textfields
        firstNameTextField.autocorrectionType = UITextAutocorrectionType.No
        lastNameTextField.autocorrectionType = UITextAutocorrectionType.No
        emailTextField.autocorrectionType = UITextAutocorrectionType.No
        mobileNumberTextField.autocorrectionType = UITextAutocorrectionType.No
        birthdayTextField.autocorrectionType = UITextAutocorrectionType.No
        genderTextField.autocorrectionType = UITextAutocorrectionType.No
        homeTownTextField.autocorrectionType = UITextAutocorrectionType.No
        
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        // check the value of 'isComingFromTermsAndConditionVC' key in NSUserDefaults
        if defaults.boolForKey("isComingFromTermsAndConditionVC") // if defaults value is true
        {
            print("the app came from TermsAndConditionVC. Do not show the pop-up message anymore.")
            
            // check the value of 'isUserSignedUp' key in NSUserDefaults
            if defaults.boolForKey("isUserSignedUp") // if defaults value is true
            {
                print("the user has already signed up before. Disable the 'Cancel' button")
                
                self.cancelButton.enabled = false
            }
                
            else
            {
                print("the user has not signed up yet. Enable the 'Cancel' button")
                
                self.cancelButton.enabled = true
            }
            
        }
            
        else
        {
            print("the app did not come from TermsAndConditionVC. Show the pop-up message.")
            
            // display pop up view
            let alert = UIAlertController(title: "Hero Support Updates and Assistance During National Emergencies PH", message: "In case of upcoming National Calamities or Disasters, Hero Support can also better assist you by sending warnings, info, and tips through text messages or emails. \n\nWould you like to sign up for this service now or later? You can do so anytime by going to the settings.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Skip", style: UIAlertActionStyle.Default, handler: {
                (alert: UIAlertAction) -> Void in
                
                // save userResponseToTermsAndCondition in NSUserDefaults
                let defaults = NSUserDefaults.standardUserDefaults()
                defaults.setBool(true, forKey:"userResponseToTermsAndCondition")
                
                
                // proceed to the main view of the app
                let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
                let vc : MainTabBarController = mainStoryboard.instantiateViewControllerWithIdentifier("mainTabBarID") as! MainTabBarController
                
                self.presentViewController(vc, animated: true, completion: nil)
                
                
            }))
            
            alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: {
                (alert: UIAlertAction) -> Void in
                
                // save userResponseToTermsAndCondition in NSUserDefaults
                let defaults = NSUserDefaults.standardUserDefaults()
                defaults.setBool(true, forKey:"userResponseToTermsAndCondition")
                
                
                // stay on the page
                
                
            }))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        
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
            
            // hide the keyboard if the user taps outside the textfields
            if firstNameTextField.isFirstResponder() && touch.view != firstNameTextField
            {
                firstNameTextField.resignFirstResponder()
            }
            
            else if lastNameTextField.isFirstResponder() && touch.view != lastNameTextField
            {
                lastNameTextField.resignFirstResponder()
            }
            
            else if emailTextField.isFirstResponder() && touch.view != emailTextField
            {
                emailTextField.resignFirstResponder()
            }
            
            else if mobileNumberTextField.isFirstResponder() && touch.view != mobileNumberTextField
            {
                mobileNumberTextField.resignFirstResponder()
            }
            
            else if birthdayTextField.isFirstResponder() && touch.view != birthdayTextField
            {
                birthdayTextField.resignFirstResponder()
            }
            
            else if genderTextField.isFirstResponder() && touch.view != genderTextField
            {
                genderTextField.resignFirstResponder()
            }
            
            else if homeTownTextField.isFirstResponder() && touch.view != homeTownTextField
            {
                homeTownTextField.resignFirstResponder()
            }
        }
        
        super.touchesBegan(touches , withEvent:event)
    }

    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        if textField == firstNameTextField
        {
            lastNameTextField.becomeFirstResponder()
        }
        
        else if textField == lastNameTextField
        {
            emailTextField.becomeFirstResponder()
        }
        
        else if textField == emailTextField
        {
            mobileNumberTextField.becomeFirstResponder()
        }
        
        else if textField == mobileNumberTextField
        {
            birthdayTextField.becomeFirstResponder()
        }
        
        else if textField == birthdayTextField
        {
            genderTextField.becomeFirstResponder()
        }
        
        else if textField == genderTextField
        {
            homeTownTextField.becomeFirstResponder()
        }
        
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool
    {
        self.view.center = self.originalCenter
        return true
    }
    
    // MARK: Custom functions
    func saveDataToParseCloud()
    {
        let userObject = PFObject(className: "UserInformation")
        userObject["firstName"] = firstNameTextField.text
        userObject["lastName"] = lastNameTextField.text
        userObject["email"] = emailTextField.text
        userObject["mobileNumber"] = mobileNumberTextField.text
        userObject["birthday"] = birthdayTextField.text
        userObject["gender"] = genderTextField.text
        userObject["hometown"] = homeTownTextField.text
        
        // save the object offline until a network connection is established before saving it to Parse Cloud
        userObject.saveEventually()
        
    }
    
}
