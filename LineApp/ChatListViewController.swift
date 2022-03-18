//
//  ChatListViewController.swift
//  LineApp
//
//  Created by 佐藤紬 on 2022/03/17.
//

import UIKit

class ChatListViewController:UIViewController{
    
    private let cellId = "cellId"
    
    @IBOutlet weak var chatListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatListTableView.delegate = self
        chatListTableView.dataSource = self
        
        navigationController?.navigationBar.barTintColor = .rgb(red: 39, green: 49, blue: 69)
        navigationItem.title = "トーク"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor:UIColor.white]
    }
}
extension ChatListViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = chatListTableView.dequeueReusableCell(withIdentifier: cellId,for:indexPath)
        return cell
    }
}

class ChatListTableViewCell:UITableViewCell{
    @IBOutlet weak var partnerLabel:UILabel!
    @IBOutlet weak var letestMessageLabel:UILabel!
    @IBOutlet weak var userImageView:UIImageView!
    @IBOutlet weak var dateLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.layer.cornerRadius = 35
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
