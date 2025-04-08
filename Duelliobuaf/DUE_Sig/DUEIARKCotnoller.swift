//
//  DUEIARKCotnoller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit
import Loaf
class DUEIARKCotnoller: UIViewController, DUEIEEElUAiiCotnollerDelefa {
    func adgteerrn() {
        cicleDUE.image = UIImage.init(named: DUEIARKCotnoller.ifCondic ? "Poickjd" : "pOilong")
    }
    
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    
    @IBOutlet weak var emaiadreedDUE: UITextField!
    @IBOutlet weak var passwerddreedDUE: UITextField!
    
    
    @IBOutlet weak var uiopeingter: UILabel!
    
    var ifshowDUE:Bool = false
    
    static var ifCondic:Bool{
        get{
            let ivcxf = UserDefaults.standard.bool(forKey: "ifCondic")
            return ivcxf
        }set{
            UserDefaults.standard.set(newValue, forKey: "ifCondic")
            UserDefaults.standard.synchronize()
        }
    }
    @IBOutlet weak var sinnerinDUE: UIButton!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if DUEIARKCotnoller.ifCondic == false && ifshowDUE == false{
            greaying()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiopeingter.isUserInteractionEnabled = true
        uiopeingter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(resenttergControll)))
        travblopd()
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }


    
    private func travblopd()  {
        sinnerinDUE.layer.cornerRadius = 10
        cicleDUE.isUserInteractionEnabled = true
        sinnerinDUE.layer.masksToBounds = true
        cicleDUE.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ciclerwetingfoeAgree)))
    }

    @IBOutlet weak var cicleDUE: UIImageView!
    
    
    
    
    
    @objc func ciclerwetingfoeAgree() {
        DUEIARKCotnoller.ifCondic = !DUEIARKCotnoller.ifCondic
        
        cicleDUE.image = UIImage.init(named: DUEIARKCotnoller.ifCondic ? "Poickjd" : "pOilong")
    }
    
    
    @objc func resenttergControll()  {
        let pop = DUEITermPriiCotnoller.init()
        pop.modalPresentationStyle = .fullScreen
       
        self.present(pop, animated: true)
        
    }
    
    @objc func greaying() {
        let pop = DUEIEEElUAiiCotnoller.init()
        pop.modalPresentationStyle = .fullScreen
        pop.Delefa = self
        self.present(pop, animated: true)
        ifshowDUE = true
    }
    
    @IBAction func eluadpresntt(_ sender: UIButton) {
        greaying()
    }
    
    
    @IBAction func sioanfCoakiong(_ sender: UIButton) {
       
        
        if DUEIARKCotnoller.ifCondic == false {
            Loaf("By continuing, you agree to the User Agrement & PrivacyPolicy",location:.top, sender: self).show()
                  
            return
        }
        guard let mailDUE = emaiadreedDUE.text?.trimmingCharacters(in: .whitespaces).lowercased(),
               let pswedDUE = passwerddreedDUE.text?.trimmingCharacters(in: .whitespaces),
        !mailDUE.isEmpty,!pswedDUE.isEmpty
        else {
            Loaf("Email address or password can not be empty!", sender: self).show()
             return
         }
         
         
         let indesx = NSPredicate(format: "SELF MATCHES %@", "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$")
         if indesx.evaluate(with: mailDUE) == false{
            
             Loaf("Please enter a valid email address", sender: self).show()
             
             return
         }
        
        guard let existEinDiction = UserDefaults.standard.object(forKey: mailDUE) as? Dictionary<String,String> else {
            let emeptunam = "NULL Name"
            
            UserDefaults.standard.set(["Due_oID":mailDUE,
                                       "Due_Nopme":emeptunam,
                                       
                                       "DueCoin":"0"], forKey: mailDUE)//存储到已经存在的账户
            self.Contuinuwefyu(div:["Due_oID":mailDUE,
                                    "Due_Nopme":emeptunam,
                                    
                                    "DueCoin":"0"])
            
          
            return
        }
       
       
        
        self.Contuinuwefyu(div:existEinDiction)
     }
    
    
    private func Contuinuwefyu(div:Dictionary<String,String>) {
        UserDefaults.standard.set(div, forKey: "dueUserNowing")//设置当前的登陆帐号
        wheregoingNowbuy(qubikad: true)
        self.view.endEditing(false)
    }
    
    private  func wheregoingNowbuy(qubikad:Bool)  {
      
        Loaf(qubikad ? "Create in...." :"log in....", state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
        
            self.defautedinft.stopAnimating()
            AppDelegate.createappdemoingPOSM()
            Loaf(qubikad ? "Create account successful!" : "Welcom!", state: .success, sender: self).show()
            
           
        }))
    }
    
    
    static func showAlert(on viewController: DUELaterPageContirl, contentId: String) {
            let alertDUE = UIAlertController(
                title: "Report or Block",
                message: "Choose an action for this content,\nAfter blocking, you will no longer receive related push notifications",
                preferredStyle: .actionSheet
            )
            
            // Report Action
            let reportAction = UIAlertAction(title: "Report", style: .default) { _ in
                let reportVC = DUEITreapoContoll() // Replace with your actual initializer
                viewController.navigationController?.pushViewController(reportVC, animated: true)//.present(reportVC, animated: true)
            }
            
            // Block Action
            let blockAction = UIAlertAction(title: "Block", style: .destructive) { _ in
                viewController.defautedinft.startAnimating()
                let load =  Loaf("Requesting.......", state: .custom(.init(backgroundColor: .black, icon: nil)),location: .top, sender: viewController)
                
                load.show(.custom(2)){_ in
                    NotificationCenter.default.post(name: .contentBlocked, object: contentId)
                    viewController.defautedinft.stopAnimating()
                    // Remove related content
                    deleteContent(with: contentId)
                    
                    Loaf("Block successful!",state: .success, sender: viewController).show()
                }
               
            }
            
            // Cancel Action
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            
            alertDUE.addAction(reportAction)
            alertDUE.addAction(blockAction)
            alertDUE.addAction(cancelAction)
            
        
            
            viewController.present(alertDUE, animated: true)
        }
        
        private static func deleteContent(with id: String) {
            AppDelegate.dueAllPapa =  AppDelegate.dueAllPapa.filter({ kfpiaj in
                kfpiaj["Due_oID"] != id
            })
            
            AppDelegate.allMeasgfijg =  AppDelegate.allMeasgfijg.filter({ kfpiaj in
                kfpiaj.userdiocm["Due_oID"] != id
            })
            
            AppDelegate.alldislaofijg =  AppDelegate.alldislaofijg.filter({ kfpiaj in
                kfpiaj.userdiocm["Due_oID"] != id
            })
        }
}
extension Notification.Name {
    static let contentBlocked = Notification.Name("ContentBlockedNotification")
}
