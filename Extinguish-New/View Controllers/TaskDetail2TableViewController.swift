//
//  TaskDetail2TableViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 30/03/23.
//

import UIKit

class TaskDetail2TableViewController: UITableViewController {
    
    var statusBool : Bool = false
    var sessionTimeBool : Bool = false
    var companyDetailsBool : Bool = false
    var distributerDetailsBool : Bool = false

    
    
    @IBOutlet var sessionIcon: UIImageView!
    
    @IBOutlet var companyIcon: UIImageView!
    
    @IBOutlet var distributorIcon: UIImageView!
    // MARK: - Table view data source

   
    @IBOutlet var taskName: UILabel!
   
    @IBOutlet var section2cell1: UITableViewCell!
   
    @IBOutlet var section1cell1: UITableViewCell!
    
    @IBOutlet var section3cell2: UITableViewCell!
    
    @IBOutlet var section3cell1: UITableViewCell!
    
    @IBOutlet var section4cell1: UITableViewCell!
    
    @IBOutlet var section5cell1: UITableViewCell!
    
    
    @IBOutlet var section5cell2: UITableViewCell!
    
    @IBOutlet var section6cell1: UITableViewCell!
    
    
    @IBOutlet var section6cell2: UITableViewCell!
    
    @IBOutlet var section7cell1: UITableViewCell!
    
    @IBOutlet var section7cell2: UITableViewCell!
    
    @IBOutlet var section8cell1: UITableViewCell!
    
    
    @IBOutlet var statusIcon: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        taskName.text = "Panda Task"
        let cellOnScreen : [UITableViewCell] = [section1cell1,section2cell1,section3cell1,section3cell2 , section4cell1 , section5cell1 , section5cell2 , section6cell1 , section6cell2 , section7cell1 , section7cell2 , section8cell1]
        applyBorder(listofCells: cellOnScreen)
        section3cell1.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        section3cell2.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        section5cell1.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        section5cell2.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        section6cell1.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        section6cell2.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        section7cell1.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        section7cell2.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
//        let padding = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
//        tableView.contentInset = padding
//        tableView.rowHeight = UITableView.automaticDimension
////        tableView.estimatedRowHeight = 44 // or any other value you want
//
//        // You can also adjust the width of the table view itself if you want to
//        tableView.frame = CGRect(x: tableView.frame.origin.x, y: tableView.frame.origin.y, width: 250, height: tableView.frame.size.height)
//        tableView.scrollIndicatorInsets = padding

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        0.01
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        0.01
    }
    
    func addborder(cell: UITableViewCell){
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.section == 2 && indexPath.row == 1 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (statusBool) {
                    
                    return 84;
                    
                } else {
                    return 0; // Hide the cell
                }
           }
        if (indexPath.section == 4 && indexPath.row == 1 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (sessionTimeBool) {
                    
                    return 64;
                    
                } else {
                    return 0; // Hide the cell
                }
           }
        if (indexPath.section == 5 && indexPath.row == 1 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (distributerDetailsBool) {
                    
                    return 249;
                    
                } else {
                    return 0; // Hide the cell
                }
           }
        if (indexPath.section == 6 && indexPath.row == 1 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (companyDetailsBool) {
                    
                    return 249;
                    
                } else {
                    return 0; // Hide the cell
                }
           }
        return 64
    }
    
    func applyBorder(listofCells: [UITableViewCell]){
        for cell in listofCells {
            addborder(cell: cell)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 2 && indexPath.row == 0 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (statusBool) {
                    statusBool = false
                    statusIcon.image = UIImage(systemName: "plus")
                    
                    
                } else {
                    statusBool = true
                    statusIcon.image = UIImage(systemName: "minus")
                    // Hide the cell
                }
           }
        if (indexPath.section == 4 && indexPath.row == 0 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (sessionTimeBool) {
                    sessionTimeBool = false
                    sessionIcon.image = UIImage(systemName: "plus")
                    
                    
                } else {
                    sessionTimeBool = true
                    sessionIcon.image = UIImage(systemName: "minus")
                    // Hide the cell
                }
           }
        
        if (indexPath.section == 5 && indexPath.row == 0 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (distributerDetailsBool) {
                    distributerDetailsBool = false
                    distributorIcon.image = UIImage(systemName: "plus")
                    
                    
                } else {
                    distributerDetailsBool = true
                    distributorIcon.image = UIImage(systemName: "minus")
                    // Hide the cell
                }
           }
        
        if (indexPath.section == 6 && indexPath.row == 0 ) { // This is the cell to hide - change as you need
            // Show or hide cell
                if (companyDetailsBool) {
                    companyDetailsBool = false
                    companyIcon.image = UIImage(systemName: "plus")
                    
                    
                } else {
                    companyDetailsBool = true
                    companyIcon.image = UIImage(systemName: "minus")
                    // Hide the cell
                }
           }
        
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
}
