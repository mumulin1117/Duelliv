//
//  DUETabarCotnoller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/3/31.
//

import UIKit

class DUETabarCotnoller: UITabBarController {
    class func loadingFromListDUE() {
        guard let polst = Bundle.main.path(forResource: "PProlsiet", ofType: "plist"),
        let Alopo = FileManager.default.contents(atPath: polst) else {
            return
        }
        if var pose = try? PropertyListSerialization.propertyList(from: Alopo, options: [], format: nil) as? [[String: String]]  {
            
            for (dddd,item) in pose.enumerated() {
                
                pose[dddd]["fasount"] = "\(Int.random(in: 3...12))"
                pose[dddd]["followseexount"] = "\(Int.random(in: 3...12))"
            }
            AppDelegate.dueAllPapa = pose
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.isHidden = false
        
      
        self.viewControllers = adddINitONe()
        self.selectedIndex = 1
    }
    

    func adddINitONe()-> [DUEConCotnoller]{
       
        
        let all:[(DUELoavegniContrwo,String,String,String)] = [(DUECCommutityCotnolle(),"comDuei","comDuei_pic","Community"),
         (DUECHomeCotnoller(),"comome","comome_pic","Home"),
         (DUECCMyyCotnoller(),"comOMG","comOMG_pic","My")]
        
        return all.map { vc, imageName, selectedImageName, title in
                  let nav = DUEConCotnoller(rootViewController: vc)
                  nav.tabBarItem = UITabBarItem(
                      title: title,
                      image: UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal),
                      selectedImage: UIImage(named: selectedImageName)?.withRenderingMode(.alwaysOriginal)
                  )
                  return nav
              }
        
       
        
    }

}



class DUEConCotnoller: UINavigationController {
   
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if !viewController.isMember(of:DUELoavegniContrwo.self) && children.count > 0{
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
}


class DUELoavegniContrwo: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
}



class DUELaterPageContirl: UIViewController {
    
     lazy var shitMorengDUE: UIButton = {
        let mains = UIButton.init()
        mains.setImage(UIImage.init(named: "shitmore"), for: .normal)
        mains.addTarget(self, action: #selector(seintongngeInset(shj:)), for: .touchUpInside)
        return mains
    }()
    
     lazy var shitBackDUE: UIButton = {
        let mains = UIButton.init()
        mains.setImage(UIImage.init(named: "shitBfack"), for: .normal)
        mains.addTarget(self, action: #selector(backngeInset(shj:)), for: .touchUpInside)
        return mains
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let winfdoe = ((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets.top ?? 0
        view.addSubview(shitMorengDUE)
        view.addSubview(shitBackDUE)
        shitBackDUE.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.leading.equalToSuperview().inset(12)
            make.top.equalToSuperview().offset(winfdoe + 10)
        }
        
        shitMorengDUE.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.trailing.equalToSuperview().inset(12)
            make.top.equalToSuperview().offset(winfdoe + 10)
        }
    }
    
    //更多
    @objc func seintongngeInset(shj:UIButton)  {
        
        
    }
    
    //back
    @objc func backngeInset(shj:UIButton)  {
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
