//
//  DUECCMyyCotnoller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/3/31.
//
import SnapKit
import UIKit

class DUECCMyyCotnoller: DUELoavegniContrwo {
    
    
    var fansCountlAbl:UILabel?
    var followingCount:UILabel?
    var wallentCount:UILabel?
    
    
    
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
            make.height.equalTo(700)
        }
        
        
        insertStatckView()
        
       
    }
    
    
    private func insertStatckView()  {
        duerSCrollview.addSubview(self.duerSNameLabhi)
        duerSNameLabhi.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.top.equalToSuperview().offset(80)
            
        }
        
        let stack = UIStackView.init()
        duerSCrollview.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.trailing.equalToSuperview().inset(50)
            make.height.equalTo(50)
            make.top.equalTo(duerSNameLabhi.snp.bottom).offset(24)
        }
        
        for (i,item) in ["Fans","Followings","Wallet"].enumerated() {
            let huan = UIButton.init()
            huan.tag = i + 800
            huan.addTarget(self, action: #selector(mineditingeInset(shj: )), for: .touchUpInside)
            stack.addSubview(huan)
            
            
            let label = UILabel.init()
            label.textColor = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1)
            label.textAlignment = .center
            label.text = item
            label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            huan.addSubview(label)
            label.snp.makeConstraints { make in
                make.leading.bottom.trailing.equalToSuperview()
                make.height.equalTo(20)
            }
            
            let countlabel = UILabel.init()
            countlabel.textColor = UIColor.white
            countlabel.textAlignment = .center
            countlabel.text = "0"
            countlabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            huan.addSubview(countlabel)
            countlabel.snp.makeConstraints { make in
                make.leading.top.trailing.equalToSuperview()
                make.height.equalTo(25)
            }
            if i == 0 {
                fansCountlAbl = countlabel
            }
            
            if i == 1 {
                followingCount = countlabel
            }
            
            if i == 2 {
                self.wallentCount = countlabel
            }
        }
       
        
        
        let postlabel = UILabel.init()
        postlabel.textColor = UIColor.white
        
        postlabel.text = "Posts"
        postlabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        duerSCrollview.addSubview(postlabel)
        postlabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalTo(stack.snp.bottom).offset(30)
        }
    }


    
   @objc func mineditingeInset(shj:UIButton)  {
       if shj.tag - 80 == 0 {
           
       }
       
       if shj.tag - 80 == 1 {
           
       }
       
       
       if shj.tag - 80 == 2 {
           
       }
    }
}
