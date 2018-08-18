//
//  FirstTimeTermsAndConditionsViewController.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 5/24/15.
//  Copyright (c) 2015 HeroSupportPH. All rights reserved.
//

import UIKit

class FirstTimeTermsAndConditionsViewController: UIViewController
{
    // Outlets
    @IBOutlet weak var pdfWebView: UIWebView!
    
    
    // MARK: Actions
    @IBAction func declineTermsAndCondition(sender: AnyObject)
    {
        print("declineTermsAndCondition")
        
        // save userResponseToTermsAndCondition in NSUserDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(false, forKey:"userResponseToTermsAndCondition")
        
        
        // terminate/close the app
        let alert = UIAlertController(title: "User has declined the Terms and Condition", message: "Please hit the Home button to Exit the app.", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func acceptTermsAndCondition(sender: AnyObject)
    {
        print("acceptTermsAndCondition")
        
        // save userResponseToTermsAndCondition in NSUserDefaults
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(true, forKey:"userResponseToTermsAndCondition")
        
        // show the FirstTimeTermsAndConditionVC
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let vc : UserInformationNavigationViewController = mainStoryboard.instantiateViewControllerWithIdentifier("UserInformationNavigationID") as! UserInformationNavigationViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    
    // MARK: App Life-cycle functions
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // set the navigation bar items
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.redColor()]
        self.navigationController!.navigationBar.titleTextAttributes = titleDict as? [String : AnyObject]
        self.navigationItem.title = "TERMS AND CONDITION"
        self.navigationController?.navigationBar.tintColor = UIColor.darkGrayColor()

        // load the pdf file
        let url = NSBundle.mainBundle().URLForResource("Hero Support Terms And Conditions", withExtension:"pdf")
        pdfWebView.loadRequest(NSURLRequest(URL: url!))

    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
