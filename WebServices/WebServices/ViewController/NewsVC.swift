//
//  ViewController.swift
//  WebServices
//
//  Created by Darshan Dangar on 01/07/23.
//

import UIKit

class NewsVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tblNews: UITableView!
    var listOfNews:[Article]?
    var coordinator: ButtonCoordinator?
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tblNews.delegate = self
        tblNews.dataSource = self
        tblNews.register(UINib(nibName: Constants.TblCell.expandTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.TblCell.expandTableViewCell)
        getDataFromServer()
    }
    
    // MARK: Get Data from Server
    private func getDataFromServer() {
        guard let baseUrl = Bundle.main.object(forInfoDictionaryKey: "baseUrlNews") as? String else {return}
        guard let url = URL(string: "\(baseUrl)v2/everything?domains=wsj.com&apiKey=437be1e793b144ef85c0b8ffae9b36c5") else {return}
        let urlRequest = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { data,response,error in
            guard let responseData = data else{return}
            if response != nil {
            }
            if let error = error?.localizedDescription {
                print("error: \(error)")
            }
            
            do {
                let json = try JSONDecoder().decode(News.self, from: responseData)
                if let articles = json.articles {
                    self.listOfNews = articles
                }
                DispatchQueue.main.async {
                    self.tblNews.reloadData()
                }
            } catch let error{
                print("error: \(error.localizedDescription)")
            }
        
        }
        dataTask.resume()
    }
    
}

// MARK: UITableView DataSource
extension NewsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfNews?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.TblCell.expandTableViewCell, for: indexPath) as? ExpandTableViewCell else {
            return UITableViewCell()
        }
        cell.configcell(data: listOfNews?[indexPath.row])
        return cell
    }
    
}

// MARK: UITableView Delegates
extension NewsVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ExpandTableViewCell
        if cell?.isTaped == true {
            cell?.lblDiscription.numberOfLines = 0
            cell?.isTaped.toggle()
        } else {
            cell?.lblDiscription.numberOfLines = 1
            cell?.isTaped.toggle()
        }
        
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? ExpandTableViewCell
        cell?.lblDiscription.numberOfLines = 1
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

