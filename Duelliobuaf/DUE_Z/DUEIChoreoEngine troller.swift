//
//  DUEIChoreoEngine troller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/23.
//

import UIKit
import Loaf
import SwiftyStoreKit
import Network
//launch

class DUEIChoreoEngine_troller: UIViewController {
    var status: NWPath.Status = .requiresConnection
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    
    
    var netrequestCountFME:Int = 0
    
    static var chacheImage:Dictionary<String,UIImage> = Dictionary<String,UIImage>()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onceawayNowInlaunch()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage(named: "naokeyi") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
   
        self.navigationController?.navigationBar.isHidden = true
       
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        startMonitoring()
    }
    
    func startMonitoring() {
        let monitor = NWPathMonitor()
            
        monitor.pathUpdateHandler = { [weak self] path in
           
            self?.status = path.status
            
           
        }
        
        let queue = DispatchQueue(label: "com.youapp.network.monitor")
        monitor.start(queue: queue)
       
    }
    private  func onceawayNowInlaunch()  {
        if self.status == .satisfied {
            print("无法检测到网络状态")
            if self.netrequestCountFME <= 5 {
                self.onceawayNowInlaunch()
                self.netrequestCountFME += 1
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if self.reviewingBuildITimeIsokayFME() == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    AppDelegate.createappdemoingPOSM()
                }
#endif
            

       
    }
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
    private  func reviewingBuildITimeIsokayFME()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    private func inWhichEntranceFME()  {
      
        defautedinft.startAnimating()
#if DEBUG
        let adventurepatherFME = "/api/index/v2/getDf"
        let versationParamFME: [String: Any] = [
            "deviceId":onlyidduserFME,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "keyboards":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
           
        ]

        #else
        let adventurepatherFME = "/stahuge/clips/community/actas"

        let versationParamFME: [String: Any] = [
            "propID":onlyidduserFME,
            "costumeType": UIDevice.current.localizedModel,
            "scriptVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",

            "promptBoard":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
        ]
#endif
        
          

        DUEBeatFusionroller.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, parameters: versationParamFME) { result in
#if DEBUG
            #else
            defautedinft.stopAnimating()
#endif
            
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    AppDelegate.createappdemoingPOSM()
                    return
                }

                let effortlesslyfme = retro["h5Url"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(effortlesslyfme, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = effortlesslyfme else{
                        
                        let excitementfme = UINavigationController.init(rootViewController: DUEMotionMatrix_troller.init())
                        excitementfme.navigationBar.isHidden = true
                       
                        
                        window?.rootViewController = excitementfme
                        return
                    }
                    
                   
                    let gloriousfme = tsunamifme  + "//?appId="+"\(DUEBeatFusionroller.pnolyert.appleidSmalllWrite)"+"&token=" + chatbotfme
                  
                    let maingbu = DUERhythmValidatorroller.init(wonderfulnowing: gloriousfme, islogingpagepalt: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if actionfme == 0 {
                    let excitementFme = UINavigationController.init(rootViewController: DUEMotionMatrix_troller.init())
                    excitementFme.navigationBar.isHidden = true
                    window?.rootViewController = excitementFme
                }
                
                
                
            case .failure(_):
            
                AppDelegate.createappdemoingPOSM()
                
                
            }
            
        }
       
    }
    
    
    
  
    
    
   


}
