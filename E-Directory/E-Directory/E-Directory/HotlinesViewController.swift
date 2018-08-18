//
//  HotlinesViewController.swift
//  E-Directory
//
//  Created by Ronald F. Paglinawan on 5/16/15.
//  Copyright (c) 2015 HeroSupportPH. All rights reserved.
//

import UIKit
import iAd

class HotlinesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    var cities: [String] = ["Manila", "Quezon City", "Caloocan City", "Las Piñas City", "Makati City", "Malabon City", "Mandaluyong City", "Marikina City", "Muntinlupa City", "Navotas City", "Parañaque City", "Pasay City", "Pasig City", "Pateros City", "San Juan City", "Taguig City", "Valenzuela City"]
    
    // MARK: - App Life Cycle Methods
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // set the navigation bar items
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.redColor()]
        self.navigationController!.navigationBar.titleTextAttributes = titleDict as? [String : AnyObject]
        self.navigationItem.title = "EMERGENCY HOTLINES"
        
        self.navigationController?.navigationBar.tintColor = UIColor.darkGrayColor()
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - UITableViewDataSource Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.cities.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")!
        
        cell.textLabel?.text = self.cities[indexPath.row]
        
        return cell
    }
    
    
    
    // MARK: - UITableViewDelegate Methods
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("toCityDetailSegue", sender: self)
    }
    
    
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {

            if segue.identifier == "toCityDetailSegue"
            {
                if let indexPath = self.tableView.indexPathForSelectedRow
                {
                    let urlString = cities[indexPath.row]
                    
                    let controller = segue.destinationViewController as? CityDetailViewController

                    controller!.navigationItem.title = urlString
                    
                    // Hide bottom tab bar in the detail view
                    controller!.hidesBottomBarWhenPushed = true;
                    
                    // Automatically display interstitial ads
                    controller!.interstitialPresentationPolicy = ADInterstitialPresentationPolicy.Automatic
                }
            }
    }
}
