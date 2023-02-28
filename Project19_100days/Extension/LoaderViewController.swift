//
//  LoaderViewController.swift
//  Extension
//
//  Created by user228564 on 2/28/23.
//

import UIKit

// challenge 3
protocol LoaderDelegate {
    func loader(_ loader: LoaderViewController, didSelect script: String)

}

class LoaderViewController: UITableViewController {

    var savedScriptsByName: [UserScript]!
    var savedScriptsByNameKey: String!
    
    var delegate: LoaderDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard savedScriptsByName != nil && savedScriptsByNameKey != nil else {
            print("Parameters not set")
            navigationController?.popViewController(animated: true)
            return
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedScriptsByName.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Script", for: indexPath)
        cell.textLabel?.text = savedScriptsByName[indexPath.row].name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.loader(self, didSelect: savedScriptsByName[indexPath.row].script)
        navigationController?.popViewController(animated: true)
    }

}
