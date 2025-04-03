//
//  DUEIPkLivinailCotnoller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/2.
//

import UIKit
import Loaf

struct livediaologall {
    var userdiocm:Dictionary<String,String>
    var lisat:Array<(isgifting:Bool,saconten:String?,giftSti:String?,gisfjtcount:Int?)>
}

class DUEIPkLivinailCotnoller: DUELaterPageContirl, UITableViewDataSource, UITableViewDelegate, DUEIPGiftpeilCotnollerdelegae {
   //发送礼物
    func presnterintulp(steirnh: String, adgt: Int) {
        let fgiftcontetn:(isgifting:Bool,saconten:String?,giftSti:String?,gisfjtcount:Int?) = (true,nil,steirnh,adgt)
        
        self.datagalll.lisat.append(fgiftcontetn)
        
        self.INusayingView.reloadData()
    }
    
    deinit {
        for (ddssx,itmr)  in AppDelegate.alldislaofijg.enumerated(){
            if itmr.userdiocm["Due_oID"] == datagalll.userdiocm["Due_oID"]{
                AppDelegate.alldislaofijg[ddssx] = datagalll
            }
            
        }
    }
    
    private var datagalll:livediaologall
    init(datagalll: livediaologall) {
        self.datagalll = datagalll
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    
    @IBOutlet weak var vningVieww: UIImageView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datagalll.lisat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ren = datagalll.lisat[indexPath.row]
        
        if ren.isgifting {
            let dueGift = tableView.dequeueReusableCell(withIdentifier: "DUEIPGiftCell", for: indexPath) as! DUEIPGiftCell
            dueGift.countneLabel.text = "\(ren.gisfjtcount ?? 1)"
            dueGift.gifjrintImag.image = UIImage(named: ren.giftSti ?? "")
            dueGift.selectionStyle = .none
            return dueGift
        }else{
            let due = tableView.dequeueReusableCell(withIdentifier: "DUEIPChailiveCell", for: indexPath) as! DUEIPChailiveCell
            due.senoutneLabel.text = ren.saconten
            due.selectionStyle = .none
            return due
        }
        
    }
    //举报
    @IBAction func morequihIngh(_ sender: Any) {
        
        
    }
    
    @IBAction func adquiteroorm(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
//name
    @IBOutlet weak var HeimingDue: UILabel!
    
    //seecoun
    @IBOutlet weak var seecountlabki: UIButton!
    
    @IBOutlet weak var dueiDisssDUE: UIButton!
    
    @IBOutlet weak var quedFeiospio: UIButton!
    
    
    @IBOutlet weak var givenHeadert: UIButton!
    
    @IBOutlet weak var ebginPresnt: UIButton!
    
    @IBOutlet weak var saycontenrt: UITextField!
    
    
    @IBOutlet weak var INusayingView: UITableView!
    
    @IBAction func inserbuttone(_ sender: UIButton) {
        let alertvf = DUECChieCenterCotnoer.init(dfoloower: datagalll.userdiocm)
        
        self.navigationController?.pushViewController(alertvf, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Doai = datagalll.userdiocm["Due_seecount"] ?? ""
        seecountlabki.setTitle(" "  + Doai, for: .normal)
        HeimingDue.text = datagalll.userdiocm["Due_Nopme"]
        
        INusayingView.separatorStyle = .none
        INusayingView.delegate = self
        INusayingView.dataSource = self
        INusayingView.rowHeight = UITableView.automaticDimension
        INusayingView.register(DUEIPChailiveCell.self, forCellReuseIdentifier: "DUEIPChailiveCell")
        INusayingView.register(DUEIPGiftCell.self, forCellReuseIdentifier: "DUEIPGiftCell")
        self.shitMorengDUE.isHidden = true
        
        
        self.shitBackDUE.isHidden = true
        INusayingView.estimatedRowHeight = 80
        INusayingView.showsVerticalScrollIndicator = false
        
        igniteDuelEnergy()
        
       
        
        INusayingView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(saycontenrt.snp.top).offset(-5)
            make.top.equalTo(dueiDisssDUE.snp.bottom).offset(30)
        }
        
        vningVieww.image = UIImage(named: datagalll.userdiocm["Due_Cover"] ?? "")
    
        uianhdi.image = UIImage(named: datagalll.userdiocm["Due_avmter"] ?? "")
        
    }

  
    @IBOutlet weak var uianhdi: UIImageView!
    
    private func igniteDuelEnergy(){
        
        
        ebginPresnt.addTarget(self, action: #selector(showingpresentingSSnake), for: .touchUpInside)
        saycontenrt.delegate = self
        saycontenrt.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        saycontenrt.leftViewMode = .always
        saycontenrt.attributedPlaceholder = NSAttributedString.init(string: "Say something....", attributes: [.foregroundColor:UIColor.white])
        saycontenrt.returnKeyType = .done
        givenHeadert.addTarget(self, action: #selector(Apoinkido), for: .touchUpInside)
        
    }
    
    
    @objc func showingpresentingSSnake() {
        
        let roroter = DUEIPGiftpeilCotnoller.init()
        
        let asjuio =   UINavigationController.init(rootViewController: roroter)
        asjuio.navigationBar.isHidden = true
        
        roroter.deflay = self
        asjuio.modalPresentationStyle = .overCurrentContext
        self.present(asjuio, animated: true)
    }
}


extension DUEIPkLivinailCotnoller:UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let result = textField.text ?? ""
        if result == "" {
            Loaf("The message sent cannot be empty!", sender: self).show()
           
            return true
        }
        
       
        
        let fgiftcontetn:(isgifting:Bool,saconten:String?,giftSti:String?,gisfjtcount:Int?) = (false,result,nil,nil)
        
        self.datagalll.lisat.append(fgiftcontetn)
        textField.text = nil
        textField.resignFirstResponder()
        
        self.INusayingView.reloadData()
        return true
    }
    
    
    @objc func Apoinkido()  {
        givenHeadert.isSelected = !givenHeadert.isSelected
        
        datagalll.userdiocm["isLiveAllLike"] = givenHeadert.isSelected ? "love" : "dislove"
        
    }
    
    
    
    
  
}
