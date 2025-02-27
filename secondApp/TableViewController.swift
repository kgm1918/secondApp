//
//  TableViewController.swift
//  secondApp
//
//  Created by Gulnaz Kaztayeva on 27.02.2025.
//

import UIKit

class TableViewController: UITableViewController {
    var books = [Books(title: "Philosopher's Stone", cover: "philosopher", annotation: "A young boy discovers he’s a wizard and attends Hogwarts, where he unravels the mystery of the Sorcerer’s Stone."),
                 Books(title: "Chamber of Secrets", cover: "chamber", annotation: "Harry faces a monster hidden within Hogwarts and uncovers the dark history of Tom Riddle."),
                 Books(title: "Prisoner of Azkaban", cover: "azkaban", annotation: "A dangerous fugitive is after Harry, but the truth about his past and family emerges."),
                 Books(title: "Goblet of Fire", cover: "fire", annotation: "Harry is unwillingly entered into a deadly wizarding tournament while Voldemort’s return looms."),
                 Books(title: "Order of the Phoenix", cover: "phoenix", annotation: "Harry battles the Ministry’s denial of Voldemort’s return and discovers a prophecy about his fate."),
                 Books(title: "Half-Blood Prince", cover: "prince", annotation: "Dumbledore prepares Harry for the final battle by uncovering Voldemort’s past and weaknesses."),
                 Books(title: "Deathly Hallows", cover: "hallows", annotation: "Harry and his friends search for Horcruxes to defeat Voldemort in an epic final confrontation.")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func addBook(_ sender: Any) {
        books.append(Books(title: "Cursed child", cover: "new", annotation: "Harry Potter and the Cursed Child follows Harry Potter and his son, Albus, as they struggle with the past and their family legacy. When Albus and his friend Scorpius use a Time-Turner to change history, they unleash unintended consequences."))
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 103
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let label = cell.viewWithTag(1001) as! UILabel
        label.text = books[indexPath.row].title
        
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: books[indexPath.row].cover)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.book = books[indexPath.row]
        navigationController?.show(vc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            books.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
