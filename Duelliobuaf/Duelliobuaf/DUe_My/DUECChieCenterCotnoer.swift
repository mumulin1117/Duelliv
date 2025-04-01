//
//  DUECChieCenterCotnoer.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/1.
//

import UIKit


//his center
class DUECChieCenterCotnoer: DUELaterPageContirl {
    
    private lazy var followengDUE: UIButton = {
       let mains = UIButton.init()
       mains.setBackgroundImage(UIImage.init(named: "notFoflofollow"), for: .normal)
        mains.setBackgroundImage(UIImage.init(named: "DUERfollowed"), for: .selected)
       mains.addTarget(self, action: #selector(followertngforDue), for: .touchUpInside)
       return mains
   }()
    
    private lazy var chatingwengDUE: UIButton = {
       let mains = UIButton.init()
       mains.setBackgroundImage(UIImage.init(named: "jaungkinChat"), for: .normal)
       mains.addTarget(self, action: #selector(ChaingforDue), for: .touchUpInside)
       return mains
   }()
    
   //chat
   @objc func ChaingforDue() {
        
    }
    
    
    //foloowe
    @objc func followertngforDue() {
         
     }
    
    private let postlabel = UILabel.init()
    private var fansCountlAbl:UILabel?
    private var followingCount:UILabel?
    private var wallentCount:UILabel?
    
    
    var dfoloower:Dictionary<String,String>
    init( dfoloower: Dictionary<String, String>) {
     
        self.dfoloower = dfoloower
        super.init(nibName: nil, bundle: nil)
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUserinfoFoeing()

    }
    
    private let duerSCrollview = UIScrollView.init()
    private  lazy var duerSNameLabhi: UILabel = {
        let label = UILabel.init()
        label.textColor = .white
        label.textAlignment = .left
        
        label.font = UIFont.systemFont(ofSize: 48, weight: .bold)
        return label
    }()
    
    private  lazy var MainaviheadDUE: UIImageView = {
        let maijko = UIImageView.init(image: UIImage.init(named: ""))
        maijko.contentMode = .scaleAspectFill
        maijko.frame = CGRect(origin: CGPoint.init(x: 0, y: 0), size: CGSize(width: UIScreen.main.bounds.width, height: 446))
        return maijko
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
    
        view.addSubview(self.MainaviheadDUE)
        //cover
        let covermaijko = UIImageView.init(image: UIImage.init(named: "oijur_jbtm"))
        covermaijko.contentMode = .scaleToFill
        view.addSubview(covermaijko)
        covermaijko.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(MainaviheadDUE)
            make.height.equalTo(243)
        }
        
        
       
        duerSCrollview.backgroundColor = .clear
        duerSCrollview.contentInsetAdjustmentBehavior = .never
        view.addSubview(duerSCrollview)
        duerSCrollview.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(205)
        }
        
        let bootomView = UIView()
        bootomView.backgroundColor = .clear
        duerSCrollview.addSubview(bootomView)
        bootomView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(780)
        }
        
        
        insertStatckView()
        
        shamePostingBotto()
    }
    
    
    private func insertStatckView()  {
        duerSCrollview.addSubview(self.duerSNameLabhi)
        duerSNameLabhi.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.top.equalToSuperview().offset(80)
            
        }
        
        let stack = UIStackView.init()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
       
        duerSCrollview.addSubview(stack)
      
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.trailing.equalToSuperview().inset(50)
            make.height.equalTo(55)
            make.top.equalTo(duerSNameLabhi.snp.bottom).offset(10)
        }
        
        for (i,item) in ["Fans","Followings","Post"].enumerated() {
            let huan = UIButton.init()
            
           
            stack.addArrangedSubview(huan)
            
            
            let DuerCuoaojmView = UILabel.init()
            DuerCuoaojmView.textColor = UIColor.white
            DuerCuoaojmView.textAlignment = .center
            DuerCuoaojmView.text = "0"
            DuerCuoaojmView.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            huan.addSubview(DuerCuoaojmView)
            DuerCuoaojmView.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
                make.top.equalToSuperview().offset(10)
                make.height.equalTo(20)
                
                
            }
            
            let label = UILabel.init()
            label.textColor = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1)
            label.textAlignment = .center
            label.text = item
            label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            huan.addSubview(label)
            label.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
                make.height.equalTo(25)
                make.bottom.equalToSuperview().inset(-12)
            }
            
           
            if i == 0 {
                fansCountlAbl = DuerCuoaojmView
            }
            
            if i == 1 {
                followingCount = DuerCuoaojmView
            }
            
            if i == 2 {
                self.wallentCount = DuerCuoaojmView
            }
        }
       
        self.duerSCrollview.addSubview(followengDUE)
        self.duerSCrollview.addSubview(chatingwengDUE)
        followengDUE.snp.makeConstraints { make in
            make.width.equalTo(143)
            make.height.equalTo(42)
            make.trailing.equalToSuperview().offset(-10)
            make.top.equalTo(stack.snp.bottom).offset(20)
        }
        chatingwengDUE.snp.makeConstraints { make in
            make.width.equalTo(143)
            make.height.equalTo(42)
            make.leading.equalToSuperview().offset(10)
            make.top.equalTo(stack.snp.bottom).offset(20)
        }
        
        postlabel.textColor = UIColor.white
        
        postlabel.text = "Posts"
        postlabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        duerSCrollview.addSubview(postlabel)
        postlabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalTo(chatingwengDUE.snp.bottom).offset(32)
        }
    }

    private func updateUserinfoFoeing()  {
       
        MainaviheadDUE.image =  UIImage(named: dfoloower["Due_avmter"] ?? "")
        duerSNameLabhi.text  =  dfoloower["Due_Nopme"]
        
        if dfoloower["Due_ComuPic"] != nil {
            wallentCount?.text = "1"
        }else{
            wallentCount?.text = "0"
        }
        
        fansCountlAbl?.text = dfoloower["fasount"]
        followingCount?.text = dfoloower["followseexount"]
    }
    
    
    private func shamePostingBotto()  {
        
        if dfoloower["Due_ComuPic"] != nil {
            
            let img = UIImageView(image: UIImage.init(named: "Riva_0"))
            img.contentMode = .scaleToFill
            img.layer.cornerRadius = 15
            img.layer.masksToBounds = true
            img.isUserInteractionEnabled = true
            duerSCrollview.addSubview(img)
            img.snp.makeConstraints { make in
                make.top.equalTo(postlabel.snp.bottom).offset(20)
                make.width.height.equalTo(168)
                make.leading.equalToSuperview().inset(12)
            }
            
            let contetnlak = UILabel.init()
            contetnlak.textColor = UIColor.white
            
            contetnlak.text = "Can't stop dancing. It's addictive."
            contetnlak.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            contetnlak.numberOfLines = 2
            duerSCrollview.addSubview(contetnlak)
            contetnlak.snp.makeConstraints { make in
                make.leading.trailing.equalTo(img)
                make.top.equalTo(img.snp.bottom).offset(8)
                
            }
            contetnlak.isUserInteractionEnabled = true
            contetnlak.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ApllldkFoingner)))
            img.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ApllldkFoingner)))
        }else{
            
            let contetnlak = UILabel.init()
            contetnlak.textColor = UIColor.white
            
            contetnlak.text = "There haven't posted any updates yet"
            contetnlak.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            contetnlak.numberOfLines = 2
            duerSCrollview.addSubview(contetnlak)
            contetnlak.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(10)
                make.top.equalTo(postlabel.snp.bottom).offset(80)
                
            }
        }
        
        
    }
    
    
    //动态详情
    @objc func ApllldkFoingner()  {
        
        
    }
    

    
   
}
