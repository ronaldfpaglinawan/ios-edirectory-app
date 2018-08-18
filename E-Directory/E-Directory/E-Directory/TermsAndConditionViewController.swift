//
//  TermsAndConditionViewController.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 5/24/15.
//  Copyright (c) 2015 HeroSupportPH. All rights reserved.
//

import UIKit
import iAd

class TermsAndConditionViewController: UIViewController
{
    // Outlets
    @IBOutlet weak var pdfWebView: UIWebView!
    @IBOutlet weak var signUpButton: UIBarButtonItem!
    
    
    // MARK: Actions
    @IBAction func signUp(sender: AnyObject)
    {
        // set to TRUE for the key 'isComingFromTermsAndConditionVC' in NSUserDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(true, forKey:"isComingFromTermsAndConditionVC")
        
        // show the FirstTimeTermsAndConditionVC
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let vc : UserInformationNavigationViewController = mainStoryboard.instantiateViewControllerWithIdentifier("UserInformationNavigationID") as! UserInformationNavigationViewController
        self.presentViewController(vc, animated: true, completion: nil)
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
        self.navigationItem.title = "TERMS AND CONDITION"
        
        self.navigationController?.navigationBar.tintColor = UIColor.darkGrayColor()
        
        // load the pdf file
        let url = NSBundle.mainBundle().URLForResource("Hero Support Terms And Conditions", withExtension:"pdf")
        pdfWebView.loadRequest(NSURLRequest(URL: url!))
        
        
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        // check the value of 'isUserSignedUp' key in NSUserDefaults
        if defaults.boolForKey("isUserSignedUp") // if defaults value is true
        {
            print("the user has already signed up before. Disable the 'Sign up' button")
            
            self.signUpButton.enabled = false
        }
            
        else
        {
            print("the user has not signed up yet. Enable the 'Sign up' button")
            
            self.signUpButton.enabled = true
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
