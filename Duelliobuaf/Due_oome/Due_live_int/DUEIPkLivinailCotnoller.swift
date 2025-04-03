//
//  DUEIPkLivinailCotnoller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/2.
//

import UIKit

class DUEIPkLivinailCotnoller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var datagalll:Array<(isgifting:Bool,saconten:String?,giftSti:String?,gisfjtcount:Int?)> = Array()
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datagalll.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ren = datagalll[indexPath.row]
        
        if ren.isgifting {
            let dueGift = tableView.dequeueReusableCell(withIdentifier: "DUEIPGiftCell", for: indexPath) as! DUEIPGiftCell
            return dueGift
        }else{
            let due = tableView.dequeueReusableCell(withIdentifier: "DUEIPChailiveCell", for: indexPath) as! DUEIPChailiveCell
            return due
        }
        
        
        
       
        
    }
    
//name
    @IBOutlet weak var HeimingDue: UILabel!
    
    //seecoun
    @IBOutlet weak var seecountlabki: UIButton!
    
    @IBOutlet weak var backiDisssDUE: UIButton!
    
    @IBOutlet weak var moreFeiospio: UIButton!
    
    
    @IBOutlet weak var givenHeadert: UIButton!
    
    @IBOutlet weak var ebginPresnt: UIButton!
    
    @IBOutlet weak var saycontenrt: UITextField!
    
    
    @IBOutlet weak var INusayingView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        INusayingView.separatorStyle = .none
        INusayingView.delegate = self
        INusayingView.dataSource = self
        INusayingView.register(DUEIPChailiveCell.self, forCellReuseIdentifier: "DUEIPChailiveCell")
        INusayingView.register(DUEIPGiftCell.self, forCellReuseIdentifier: "DUEIPGiftCell")
        
        INusayingView.estimatedRowHeight = 80
        INusayingView.showsVerticalScrollIndicator = false
    }


}
