//
//  DUECCommutityCotnolle.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/3/31.
//

import UIKit

class DUECCommutityCotnolle: DUELoavegniContrwo, UICollectionViewDelegate,UICollectionViewDataSource {
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    private var accaseDUE:DUETPEcase = .trending
    
    enum DUETPEcase {
        case trending
        case discover
        
        case following
    }
    
    //数据
    private var dueHomeData:[Dictionary<String,String>]{
        let POpsif = AppDelegate.dueAllPapa.filter { csxs in
            csxs["Due_ComuTItle"] != nil
        }
        
        if accaseDUE == .trending {
            return POpsif
        }
        
        
        if accaseDUE == .discover {
            if POpsif.count >= 2 {
                return Array(POpsif.suffix(2))
            }
            return POpsif
        }
        return Array()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dueHomeData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let due = collectionView.dequeueReusableCell(withReuseIdentifier: "DUECCommutityCell", for: indexPath) as! DUECCommutityCell
        let Adfe = dueHomeData[indexPath.row]
        if let aos = Adfe["Due_ComuPic"]?.components(separatedBy: "^").first {
            due.dueLiveCoverimageview.image = UIImage(named: aos)
        }
        
        
        
    
        
        due.avterDUE.image = UIImage(named: dueHomeData[indexPath.row]["Due_avmter"] ?? "")
        
        due.namertlbel.text = dueHomeData[indexPath.row]["Due_Nopme"] ?? ""
        
        due.LiabeTitle.text = dueHomeData[indexPath.row]["Due_ComuTItle"] ?? ""
        
     
        return due
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

    
    @IBAction func adjustDatacataru(_ sender: UIButton) {
        let buif = view.viewWithTag(10) as? UIButton
        let buif1 = view.viewWithTag(20) as? UIButton
        let buif2 = view.viewWithTag(30) as? UIButton
        buif?.isSelected = false
        buif1?.isSelected = false
        buif2?.isSelected = false
        sender.isSelected = true
        if sender.tag == 10 {
            accaseDUE = .trending
            
        }
        
        if sender.tag == 20 {
            accaseDUE = .discover
        }
        
        
        if sender.tag == 30 {
            accaseDUE = .following
        }
        
       
        loadingindication()
    }
    
    private func loadingindication()  {
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
            self.mainDUEDtartgerVire.isHidden = false
            self.defautedinft.stopAnimating()
            self.mainDUEDtartgerVire.reloadData()
        }))
        
    }
    
    @IBOutlet weak var mainDUEDtartgerVire: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout.init()
        layout.minimumLineSpacing = 12
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 324)
        layout.minimumInteritemSpacing = 12
        layout.scrollDirection = .vertical
        
        
        mainDUEDtartgerVire.collectionViewLayout = layout
        
        mainDUEDtartgerVire.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        mainDUEDtartgerVire.delegate = self
        mainDUEDtartgerVire.dataSource = self
        mainDUEDtartgerVire.register(UINib(nibName: "DUECCommutityCell", bundle: nil), forCellWithReuseIdentifier: "DUECCommutityCell")
        
     
        
        mainDUEDtartgerVire.showsVerticalScrollIndicator = false
        self.mainDUEDtartgerVire.isHidden = true
        self.view.addSubview(self.defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        
        loadingindication()
    }

    
   

}
