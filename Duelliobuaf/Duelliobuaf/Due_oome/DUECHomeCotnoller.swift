//
//  DUECHomeCotnoller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/3/31.
//

import UIKit

class DUECHomeCotnoller: DUELoavegniContrwo,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, WaterfallLayoutDelegate {
    
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    private var accaseDUE:DUETPEcase = .popular
    
    enum DUETPEcase {
    
        case popular
        case trending
        case following
    }
    
    //数据
    private var dueHomeData:[Dictionary<String,String>]{
        let POpsif = AppDelegate.dueAllPapa.filter { csxs in
            csxs["Due_LiveTItle"] != nil
        }
        
        if accaseDUE == .popular {
            return POpsif
        }
        
        
        if accaseDUE == .trending {
            if   POpsif.count >= 1 { 
                return Array(POpsif.suffix(1))
            }
                return POpsif
        }
        return Array(POpsif.prefix(1))
    }
    
    func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 112
        }else{
            return  192 + 20
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dueHomeData.count
    }
    
    

    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CelShineStarCell", for: indexPath) as! CelShineStarCell
            
            return cell
            
        }
        let dure = collectionView.dequeueReusableCell(withReuseIdentifier: "DUECHomeDterCell", for: indexPath) as! DUECHomeDterCell
        dure.dueLiveCoverimageview.image = UIImage(named: dueHomeData[indexPath.row]["Due_Cover"] ?? "")
        
        let Doai = dueHomeData[indexPath.row]["liveseexount"] ?? ""
        
        dure.seecountLablt.setTitle(" " + Doai, for: .normal)
        
        dure.avterDUE.image = UIImage(named: dueHomeData[indexPath.row]["Due_avmter"] ?? "")
        
        dure.namertlbel.text = dueHomeData[indexPath.row]["Due_Nopme"] ?? ""
        
        dure.LiabeTitle.text = dueHomeData[indexPath.row]["Due_LiveTItle"] ?? ""
        
        let okkklove = (dueHomeData[indexPath.row]["Due_isloveLive"] == "isolka")
        
        dure.hisHeade.image = UIImage(named: okkklove ? "Accesddlike" : "AccesdUndlike")
        return dure
        
    }
    

    @IBAction func setLiveDUE(_ sender: UIButton) {
    }
    
    @IBAction func setAiDUE(_ sender: UIButton) {
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
            accaseDUE = .popular
        }
        
        if sender.tag == 20 {
            accaseDUE = .trending
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
        let layout = WaterfallLayout.init()
        layout.delegate = self

        mainDUEDtartgerVire.collectionViewLayout = layout
        
        mainDUEDtartgerVire.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        mainDUEDtartgerVire.delegate = self
        mainDUEDtartgerVire.dataSource = self
        mainDUEDtartgerVire.register(UINib(nibName: "DUECHomeDterCell", bundle: nil), forCellWithReuseIdentifier: "DUECHomeDterCell")
        
        mainDUEDtartgerVire.register(CelShineStarCell.self, forCellWithReuseIdentifier: "CelShineStarCell")
        
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
