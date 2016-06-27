//
//  ViewController.swift
//  UseOfIcomoonFont
//
//  Created by Sagar Shirbhate on 27/06/16.
//  Copyright © 2016 Sagar. All rights reserved.
//

// define All Font details used
  let home:String = "\u{e900}"
  let pencil:String = "\u{e906}"
  let cam:String = "\u{e90f}"
  let music:String = "\u{e911}"
  let phonebook:String = "\u{e944}"
  let setting:String = "\u{e995}"
  let selected:String = "\u{ea54}"
  let notselected:String = "\u{ea56}"
  let sort:String = "\u{ea5b}"
  let googleHangou:String = "\u{ea8e}"
  let fb:String = "\u{ea91}"
  let twitter:String = "\u{ea96}"
  let github:String = "\u{eab0}"
  let linkedin:String = "\u{eac9}"


import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    // added all in array for showing use
    let nos = [home,pencil,cam,music,phonebook,setting,selected,notselected,sort,googleHangou,fb,twitter,github,linkedin]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nos.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        
        //set the font
        cell?.textLabel?.font=UIFont(name: "icomoon", size:40)
       
        //set the text as Logo
        cell?.textLabel?.text=nos[indexPath.row]
        
        //set the detail text
        cell?.detailTextLabel?.text="\(indexPath.row+1)th Index"
        return cell!
    }

    
    
}

