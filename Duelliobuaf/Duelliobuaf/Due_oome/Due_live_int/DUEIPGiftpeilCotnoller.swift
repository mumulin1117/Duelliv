//
//  DUEIPGiftpeilCotnoller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/2.
//

import UIKit
protocol DUEIPGiftpeilCotnollerdelegae {
    func presnterintulp(steirnh:String,adgt:Int)
}
class DUEIPGiftpeilCotnoller: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    private lazy var needspeendLabfen: UILabel = {
        let sfe = UILabel.init()
        sfe.text = "0"
        sfe.textColor =  UIColor.white
        sfe.textAlignment = .left
        sfe.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return sfe
    }()
    
    
    private var sendCidf:Int = 0
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        alllPresentFuul.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let agt = collectionView.dequeueReusableCell(withReuseIdentifier: "DUEBadPresentCell", for: indexPath) as! DUEBadPresentCell
        agt.coreGiftbgray.image = UIImage(named: alllPresentFuul[indexPath.row])
        
        return agt
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        sendCidf = indexPath.row
    }
    private var alllPresentFuul = ["present_0DUE",
                           "present_1DUE",
                           "present_2DUE",
                           "present_3DUE",
                           "present_4DUE",
                           "present_5DUE",
                           "present_6DUE",
                           "present_7DUE",
                           "present_8DUE",
                           "present_9DUE",
                           "present_10DUE",
                           "present_11DUE",
                           "present_12DUE",
                           "present_13DUE",
                           "present_14DUE",
                           "present_15DUE"
      ]
    


    private  var deflay:DUEIPGiftpeilCotnollerdelegae?
    
    private  var dafenibu:UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let IOsh = UICollectionViewFlowLayout.init()
        IOsh.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 24 - 24)/3 , height: 100)
        IOsh.minimumLineSpacing = 8
        IOsh.minimumInteritemSpacing = 8
        
        IOsh.scrollDirection = .vertical
       
        
        dafenibu?.collectionViewLayout = IOsh
        
        dafenibu?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        dafenibu?.delegate = self
        dafenibu?.dataSource = self
        dafenibu?.register(DUEBadPresentCell.self, forCellWithReuseIdentifier: "DUEBadPresentCell")
        
        dafenibu?.selectItem(at: IndexPath.init(row: 0, section: 0), animated: true, scrollPosition: .top)
        
        dafenibu?.showsVerticalScrollIndicator = false
        
        self.view.backgroundColor = .clear
        
        
        
        remixChallengeParameters()
        
       
    }
    
    
    
    private func remixChallengeParameters()  {
        let oksjiop = UIView.init()
        oksjiop.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        oksjiop.layer.cornerRadius = 24
        oksjiop.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        view.addSubview(oksjiop)
        oksjiop.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(352)
        }
        
        oksjiop.addSubview(dafenibu!)
        dafenibu?.snp.makeConstraints({ make in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(16)
            make.height.equalTo(210)
        })
        
        let diomentftbgray = UIImageView(image: UIImage.init(named: "diopalold"))
        
        oksjiop.addSubview(diomentftbgray)
        diomentftbgray.snp.makeConstraints { make in
            make.width.height.equalTo(20)
            make.left.equalToSuperview().offset(12)
            make.top.equalTo(dafenibu!.snp.bottom).offset(53)
        }
        oksjiop.addSubview(needspeendLabfen)
        needspeendLabfen.snp.makeConstraints { make in
            make.left.equalTo(diomentftbgray.snp.right).offset(4)
            make.centerY.equalTo(diomentftbgray)
        }
        
        
        let jid = UIView.init()
        
        
        
    }

   

}


class DUEBadPresentCell: UICollectionViewCell {
    
    private var corebgray = UIImageView(image: UIImage.init(named: "avopiuyg"))
    
    private lazy var speendLabfen: UILabel = {
        let sfe = UILabel.init()
        sfe.text = "199"
        sfe.textColor =  UIColor(red: 0.98, green: 0.49, blue: 0.85, alpha: 1)
        sfe.textAlignment = .center
        sfe.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        return sfe
    }()
    
    private  var diomentftbgray = UIImageView(image: UIImage.init(named: "diopalold"))
    var coreGiftbgray = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        corebgray.contentMode = .scaleToFill
        coreGiftbgray.contentMode = .scaleAspectFit
        
        contentView.addSubview(corebgray)
        contentView.addSubview(coreGiftbgray)
        contentView.addSubview(speendLabfen)
        contentView.addSubview(diomentftbgray)
        
        corebgray.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        coreGiftbgray.snp.makeConstraints { make in
            make.width.height.equalTo(64)
            make.top.equalToSuperview().offset(6)
            make.centerX.equalToSuperview()
        }
        speendLabfen.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-5)
            make.top.equalTo(coreGiftbgray.snp.bottom).offset(4)
        }
        
        diomentftbgray.snp.makeConstraints { make in
            make.width.height.equalTo(12)
            make.leading.equalTo(speendLabfen.snp.right).offset(4)
            make.centerY.equalTo(speendLabfen)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isSelected: Bool{
        didSet{
            if isSelected {
                corebgray.image = UIImage(named: "avopiuygsel")
            }else{
                corebgray.image = UIImage(named: "avopiuyg")
            }
        }
    }
}
