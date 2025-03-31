//
//  DUECHomeCotnoller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/3/31.
//

import UIKit

class DUECHomeCotnoller: DUELoavegniContrwo,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, WaterfallLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 112
        }else{
            return  192 + 20
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    

    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CelShineStarCell", for: indexPath) as! CelShineStarCell
            
            return cell
            
        }
        let dure = collectionView.dequeueReusableCell(withReuseIdentifier: "DUECHomeDterCell", for: indexPath) as! DUECHomeDterCell
        
        return dure
        
    }
    

    @IBAction func setLiveDUE(_ sender: UIButton) {
    }
    
    @IBAction func setAiDUE(_ sender: UIButton) {
    }
    
    
    
    @IBAction func adjustDatacataru(_ sender: UIButton) {
    }
    
    
    
    @IBOutlet weak var mainDUEDtartgerVire: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = WaterfallLayout.init()
        layout.delegate = self
        
//        layout.scrollDirection = .vertical
//        layout.minimumLineSpacing = 12
//        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
//        layout.minimumInteritemSpacing = 12
        mainDUEDtartgerVire.collectionViewLayout = layout
        
        mainDUEDtartgerVire.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        mainDUEDtartgerVire.delegate = self
        mainDUEDtartgerVire.dataSource = self
        mainDUEDtartgerVire.register(UINib(nibName: "DUECHomeDterCell", bundle: nil), forCellWithReuseIdentifier: "DUECHomeDterCell")
        
        mainDUEDtartgerVire.register(CelShineStarCell.self, forCellWithReuseIdentifier: "CelShineStarCell")
        
        mainDUEDtartgerVire.showsVerticalScrollIndicator = false
        
    }


   

}
