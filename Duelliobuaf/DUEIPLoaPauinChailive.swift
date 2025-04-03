//
//  DUEIPLoaPauinChailive.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/3.
//

import UIKit
import Loaf
import SwiftyStoreKit
class DUEIPLoaPauinChailive: DUELaterPageContirl, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    private  var shureCode:Int = 0
    
    let allOpi = [("mdckcujrtuykonjc","$0.99",400),
                  ("uxohcrvsxuthyglu","$1.99",800),
                  ("wwbezydljhehcfhh","$4.99",2450),
                  ("flqqevjspukbwnws","$9.99",4900),
                  ("dhuhvfrygkxnrqgx","$19.99",9800),
                  ("eynohwtnojwdmdrr","$49.99",49000),
                  ("tqhzzqrpzbcypazg","$99.99",49000),
                  ("dfvsdsvs","$0.99",400),
                  ("dfvsdsvs","$0.99",400),
                  ("dfvsdsvs","$0.99",400)
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allOpi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let due = collectionView.dequeueReusableCell(withReuseIdentifier: "DueOadojPaoioo", for: indexPath) as! DueOadojPaoioo
        due.countineLabel.text = "\(allOpi[indexPath.row].2)"
        due.moneyutneLabel.text = allOpi[indexPath.row].1
        return due
        
    }
    

    private lazy var meshaineLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = "My gold coins"
        laj.textAlignment = .center
        laj.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        laj.textColor =  UIColor.gray
        return laj
    }()
    
    private lazy var senoutneLabel: UILabel = {
        let laj = UILabel.init()
         laj.textAlignment = .center
         laj.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        
        laj.textColor =  UIColor.white
        return laj
    }()
    
    private  lazy var chargeBackDUE: UIButton = {
        let mains = UIButton.init()
        mains.setBackgroundImage(UIImage.init(named: "img_btn_bg"), for: .normal)
        mains.setTitle("Recharge", for: .normal)
        mains.setTitleColor(.white, for: .normal)
        mains.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        mains.addTarget(self, action: #selector(rechaggeinmAin), for: .touchUpInside)
        return mains
    }()
    
    
   @objc func rechaggeinmAin() {
       let svfdfdf = allOpi[shureCode]
       
       
       
       self.view.isUserInteractionEnabled = false
       
       Loaf("Paying", state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
      
       
//       SwiftyStoreKit.purchaseProduct(svfdfdf.0, atomically: true) { psResult in
//           self.view.isUserInteractionEnabled = true
//           Loaf.dismiss(sender: self)
//           
//           if case .success(let psPurch) = psResult {
//              
//               let psdownloads = psPurch.transaction.downloads
//               if !psdownloads.isEmpty {
//                   SwiftyStoreKit.start(psdownloads)
//               }
//               
//               if psPurch.needsFinishTransaction {
//                   SwiftyStoreKit.finishTransaction(psPurch.transaction)
//               }
       var use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
           
              
               var coainfhkO = Int( use?["DueCoin"] ?? "0") ?? 0
               
               coainfhkO = coainfhkO + svfdfdf.2
       use?["DueCoin"] = "\(coainfhkO)"
               self.senoutneLabel.text = "\(coainfhkO)"
               
               Loaf("Pay successful!", state: .success, sender: self).show()
              
               UserDefaults.standard.set(use, forKey: "dueUserNowing")
               
               UserDefaults.standard.set(use, forKey: use?["Due_oID"] ?? "")
       UserDefaults.standard.synchronize()
       
       
//           }else if case .error(let error) = psResult {
//              
//               if error.code == .paymentCancelled {
//                 
//                   return
//               }
//               Loaf(error.localizedDescription, state:.error, sender: self).show()
//             
//           }
//       }
       
   
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shitBackDUE.isHidden = false
        shitMorengDUE.isHidden = true
        let sxdf = ((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets.top ?? 0
        
       
        let aaldl = UIImageView(image: UIImage.init(named: "Huaihflopbg"))
        view.insertSubview(aaldl, at: 0)
        view.addSubview(meshaineLabel)
        meshaineLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(sxdf + 30 + 30)
        }
        view.addSubview(senoutneLabel)
        senoutneLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(meshaineLabel.snp.bottom).offset(20)
        }
        
        aaldl.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        remixChallengeParameters()
        
        let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
    
        senoutneLabel.text =  use?["DueCoin"] ?? "0"
    }
    
    func remixChallengeParameters()  {
        let layout = UICollectionViewFlowLayout.init()
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 36)/2, height: 92)
       
        layout.scrollDirection = .vertical
        
        let mainDUEDtartgerVire = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        mainDUEDtartgerVire.delegate = self
        mainDUEDtartgerVire.collectionViewLayout = layout
        
        mainDUEDtartgerVire.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        
        mainDUEDtartgerVire.dataSource = self
        mainDUEDtartgerVire.register(DueOadojPaoioo.self, forCellWithReuseIdentifier: "DueOadojPaoioo")
        mainDUEDtartgerVire.backgroundColor = .clear
     
        mainDUEDtartgerVire.selectItem(at: IndexPath.init(row: 0, section: 0), animated: true, scrollPosition: .top)
        mainDUEDtartgerVire.showsVerticalScrollIndicator = false
        
        self.view.addSubview(mainDUEDtartgerVire)
        mainDUEDtartgerVire.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo(senoutneLabel.snp.bottom).offset(30)
        }
        let sxdf = ((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets.bottom ?? 0
       
        view.addSubview(chargeBackDUE)
        chargeBackDUE.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-sxdf - 12)
            make.width.equalTo(287)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
        }
        
        
    }
    
}


class DueOadojPaoioo: UICollectionViewCell {
     lazy var countineLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = "400"
        laj.textAlignment = .center
        laj.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        laj.textColor =  UIColor.white
        return laj
    }()
    
     lazy var moneyutneLabel: UILabel = {
        let laj = UILabel.init()
         laj.textAlignment = .center
        laj.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        laj.textColor =  UIColor.init(white: 0.7, alpha: 1)
        return laj
    }()
    
    
    private let xceter = UIView.init()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        xceter.layer.borderColor = UIColor(red: 0.91, green: 0.08, blue: 0.71, alpha: 1).cgColor
        xceter.layer.borderWidth = 0
        
        
        xceter.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2000)
        xceter.layer.cornerRadius = 16
        xceter.layer.masksToBounds = true
        
        contentView.addSubview(xceter)
        xceter.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
        }
        
        harvestCommunityMoves()
        
    }
    
    private func harvestCommunityMoves()  {
        let foreimg = UIImageView(image: UIImage.init(named: "Hidomonsgold"))
        contentView.addSubview(foreimg)
        foreimg.snp.makeConstraints { make in
            make.width.height.equalTo(53)
            make.leading.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
        }
        
        contentView.addSubview(countineLabel)
        countineLabel.snp.makeConstraints { make in
            make.leading.equalTo(foreimg.snp.trailing)
            make.top.equalTo(foreimg.snp.top).offset(3)
            make.trailing.equalToSuperview()
            
        }
        contentView.addSubview(moneyutneLabel)
        moneyutneLabel.snp.makeConstraints { make in
            make.left.right.equalTo(countineLabel)
            make.top.equalTo(countineLabel.snp.bottom).offset(4)
        }
       
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isSelected: Bool{
        didSet{
            if isSelected {
                xceter.layer.borderWidth = 1
            }else{
                xceter.layer.borderWidth = 0
            }
        }
    }
}
