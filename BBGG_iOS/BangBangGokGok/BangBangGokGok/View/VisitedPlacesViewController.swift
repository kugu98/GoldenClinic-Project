//
//  VisitedPlacesViewController.swift
//  BangBangGokGok
//
//  Created by 권태우 on 2023/05/11.
//

import UIKit

class VisitedPlacesViewController: UITableViewController {
    var dataArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func dataInit() {
        dataArray.append("예술의 전당")
        dataArray.append("경복궁")
        dataArray.append("롯데월드")
        dataArray.append("N서울타워")
        dataArray.append("옥동식 합정점")
        dataArray.append("을밀대 강남점")
        dataArray.append("청와대")
        dataArray.append("63빌딩")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "visitedPlacesCell", for: indexPath)

//        cell.textLabel?.text = dataArray[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = dataArray[indexPath.row]
        content.image = UIImage(systemName: "figure.walk")
        cell.contentConfiguration = content
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            dataArray.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//    }
//
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//        let itemToMove = dataArray[fromIndexPath.row]
//        dataArray.remove(at: fromIndexPath.row)
//        dataArray.insert(itemToMove, at: to.row)
//    }

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

//    @IBAction func btnAdd(_ sender: UIBarButtonItem) {
//        let addAlert = UIAlertController(title: "ToDoList", message: "추가할 내용을 입력하세요.", preferredStyle: .alert)
//        addAlert.addTextField{ACTION in
//            ACTION.placeholder = "내용"
//        }
//        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
//        let addAction = UIAlertAction(title: "추가", style: .destructive, handler: { ACTION in
//            self.dataArray.append(addAlert.textFields![0].text!)
//            self.tvToDoList.reloadData()
//        })
//
//        addAlert.addAction(cancelAction)
//        addAlert.addAction(addAction)
//
//        present(addAlert, animated: true, completion: nil)
//    }
}
