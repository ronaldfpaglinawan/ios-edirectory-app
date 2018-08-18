//
//  MoreViewController.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 7/18/15.
//  Copyright (c) 2015 HeroSupportPH. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    // MARK: Global Variables
    
    // MARK: Outlets
    @IBOutlet weak var skywayButton: UIButton!
    @IBOutlet weak var slexButton: UIButton!
    @IBOutlet weak var tplexButton: UIButton!
    @IBOutlet weak var peatcButton: UIButton!
    @IBOutlet weak var nlexButton: UIButton!
    @IBOutlet weak var sctexButton: UIButton!
    @IBOutlet weak var startollButton: UIButton!
    @IBOutlet weak var matesButton: UIButton!
    @IBOutlet weak var ndrmmcButton: UIButton!
    @IBOutlet weak var dswdButton: UIButton!
    @IBOutlet weak var pcgButton: UIButton!
    @IBOutlet weak var pagasaButton: UIButton!
    @IBOutlet weak var dotcButton: UIButton!
    @IBOutlet weak var mmdaButton: UIButton!
    @IBOutlet weak var nbiButton: UIButton!
    
    
    // MARK: Actions
    @IBAction func callSkyWay(sender: AnyObject)
    {
        print("calling Sky Way")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+639175398762")!)
    }
    
    @IBAction func callNLEX(sender: AnyObject)
    {
        print("calling NLEX")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+639189061401")!)
    }
    
    @IBAction func callSLEX(sender: AnyObject)
    {
        print("calling SLEX")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+639176877539")!)
    }
    
    @IBAction func callSCTEX(sender: AnyObject)
    {
        print("calling SCTEX")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+639209672839")!)
    }
    
    @IBAction func callTPLEX(sender: AnyObject)
    {
        print("calling TPLEX")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+639178880715")!)
    }
    
    @IBAction func callStarToll(sender: AnyObject)
    {
        print("calling Star Toll")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+639175304538")!)
    }
    
    @IBAction func callPEATC(sender: AnyObject)
    {
        print("calling PEATC")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+639189340713")!)
    }
    
    @IBAction func callMATES(sender: AnyObject)
    {
        print("calling MATES")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+63495087539")!)
    }
    
    @IBAction func callNDRMMC(sender: AnyObject)
    {
        print("calling NDRMMC")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6329115061")!)
    }
    
    @IBAction func callDSWD(sender: AnyObject)
    {
        print("calling DSWD")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6329318101")!)
    }
    
    @IBAction func callPhilCoastGuard(sender: AnyObject)
    {
        print("calling Philippine Coast Guard")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6325278481")!)
    }
    
    @IBAction func callPAGASA(sender: AnyObject)
    {
        print("calling PAGASA")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6324342696")!)
    }
    
    @IBAction func callDOTC(sender: AnyObject)
    {
        print("calling DOTC")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6327890")!)
    }
    
    @IBAction func callMMDA(sender: AnyObject)
    {
        print("calling MMDA")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+632136")!)
    }
    
    @IBAction func callNBI(sender: AnyObject)
    {
        print("calling NBI")
        
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://+6325238231")!)
    }

    
    // MARK: App Life-cycle functions
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // set the navigation bar items
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.redColor()]
        self.navigationController!.navigationBar.titleTextAttributes = titleDict as? [String : AnyObject]
        self.navigationItem.title = "SPECIAL HOTLINES"
        
        self.navigationController?.navigationBar.tintColor = UIColor.darkGrayColor()
        
        setupButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupButtons()
    {
        ButtonCustomizer.setRoundedButton(self.skywayButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.slexButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.tplexButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.peatcButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.nlexButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.sctexButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.startollButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.matesButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.ndrmmcButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.dswdButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.pcgButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.pagasaButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.dotcButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.mmdaButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
        ButtonCustomizer.setRoundedButton(self.nbiButton, withBorder:5.0, borderWidth:2.0, borderColor:UIColor.whiteColor())
    }

}
