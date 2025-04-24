//
//  DUERhythmValidatorroller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/23.
//

import UIKit
//web
import WebKit
import Loaf
import SwiftyStoreKit

class DUERhythmValidatorroller: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    
    
    private var fmePlaungView:WKWebView?
    private  var fmersousifgnin = false
    private var okaeenteanceFME:String
    
    init(wonderfulnowing:String,islogingpagepalt:Bool) {
        okaeenteanceFME = wonderfulnowing
        
        fmersousifgnin = islogingpagepalt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        fmePlaungView?.configuration.userContentController.add(self, name: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ptaky"))
        fmePlaungView?.configuration.userContentController.add(self, name: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cklpoasce"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        fmePlaungView?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let image = UIImage(named: "DueLauo") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
       
        
        if fmersousifgnin == true {
            let  lsignintouchHTL = UIButton.init()
            lsignintouchHTL.layer.cornerRadius = 15
            lsignintouchHTL.layer.masksToBounds = true
            lsignintouchHTL.layer.borderColor = UIColor.white.cgColor
            lsignintouchHTL.layer.borderWidth = 1.5
           
            lsignintouchHTL.setTitle(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Quuqiacekz noipaednxiincg"), for: .normal)
            lsignintouchHTL.setTitleColor(UIColor.white, for: .normal)
            lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
            
            view.addSubview(lsignintouchHTL)
            lsignintouchHTL.isUserInteractionEnabled = true
            lsignintouchHTL.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(52)
                make.width.equalTo(260)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            }
        }
        
        
        
         
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        fmePlaungView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        fmePlaungView?.isHidden = true
        fmePlaungView?.translatesAutoresizingMaskIntoConstraints = false
        fmePlaungView?.scrollView.alwaysBounceVertical = false
        
        fmePlaungView?.scrollView.contentInsetAdjustmentBehavior = .never
        fmePlaungView?.navigationDelegate = self
        
        fmePlaungView?.uiDelegate = self
        fmePlaungView?.allowsBackForwardNavigationGestures = true
   
        if let urewlinsdfme = URL.init(string: okaeenteanceFME) {
            fmePlaungView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(fmePlaungView!)
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        defautedinft.startAnimating()
      
        Loaf(fmersousifgnin == true ? DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "laowgg eivnb.h.g.t.e.") : "", state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        fmePlaungView?.isHidden = false
        
        defautedinft.stopAnimating()
        
        if fmersousifgnin == true {
            Loaf( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Lkopgriunz yshucctchessrsqfuutl") , state: .success, sender: self).show()
           
           
            fmersousifgnin = false
            
        }
        
        
        let pushtokeng = UserDefaults.standard.object(forKey: "xhiuedcrtokeain") as? String  ?? ""
       
#if DEBUG
        let adventurepatherFME = "/api/device/save"
         let versationParamFME: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :onlyidduserFME,
            "pushToken" :pushtokeng,

         ]
        #else
        let adventurepatherFME = "/greenRoom/aiScene/ctliaop"
        
      
         let versationParamFME: [String: Any] = [
            "dramaVer": Bundle.main.object(forInfoDictionaryKey: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "CnFcBaurnsdhlseiSwhzojrxtlVtegrcsxifohnnSftcreihncg")) as? String ?? "1.1",
             "stageDoor":DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "AaPaPlSgTuOvRmE"),
            "osCharacter":UIDevice.current.systemName,
             "osBackdrop":UIDevice.current.systemVersion,
             "spotlightType" : DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "ihPahyoynie"),
            "actNumber" :SceneDelegate.onlyidduserFME,
            "applausePush" :AppDelegate.appUITPushToken,
         
         ]
#endif
        DUEBeatFusionroller.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, parameters: versationParamFME){_ in }
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
//        let angagingFME =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
//        let oertpinkFME =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
       
        if message.name == DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pzaby"),
            let mesgidhFME = message.body as? String {
         

            view.isUserInteractionEnabled = false
            defautedinft.startAnimating()

            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
                self.defautedinft.stopAnimating()
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                       
                        Loaf( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Niou ehganvzec arheaceekiapwt") , state:.info, sender: self).show()
                        return
                      }
                    

                    DUEBeatFusionroller.pnolyert.installEnterRemallLastNetiFME( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "/raqpqie/tiyoisp/yvd2o/mpfaay"), parameters: [
                        DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "pgauyklxoxasd"):ticketData.base64EncodedString(),
                        DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "tfrzajnyspaccgthiaosnnIod"):gettransID,
                        DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "tnyjpfe"):DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "dbimrieacut")
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            Loaf( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tohgen qpsukrycfhgazskeg twzalsv vspubcaciefspszfduslz!") , state: .success, sender: self).show()
                           
                           
                        case .failure(let error):
                 
                            Loaf( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Eyrcrrofr") , state:.info, sender: self).show()
                           
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        Loaf( error.localizedDescription , state:.info, sender: self).show()
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cblmoxsoe") {
          
            UserDefaults.standard.set(nil, forKey: "tusertokwindaa")// 清除本地token
           
            let anoreallRoold = UINavigationController.init(rootViewController: DUEMotionMatrix_troller.init())
            anoreallRoold.navigationBar.isHidden = true
            
            window?.rootViewController = anoreallRoold
        }
    }
    
}
