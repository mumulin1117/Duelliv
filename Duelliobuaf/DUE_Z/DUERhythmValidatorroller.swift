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
    
    
    private var quantumPulse:WKWebView?
    private  var terraStep = false
    private var hyperMotion:String
    
    init(_hyperMotion:String,_terraStep:Bool) {
        hyperMotion = _hyperMotion
        
        terraStep = _terraStep
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        quantumPulse?.configuration.userContentController.add(self, name: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ptaky"))
        quantumPulse?.configuration.userContentController.add(self, name: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cklpoasce"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        quantumPulse?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let photonSync = UIImage(named: "DueLauo") {
               
            view.layer.contents = photonSync.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
       
        
        if terraStep == true {
            let  orbitCatalyst = UIButton.init()
            orbitCatalyst.layer.cornerRadius = 15
            orbitCatalyst.layer.masksToBounds = true
            orbitCatalyst.layer.borderColor = UIColor.white.cgColor
            orbitCatalyst.layer.borderWidth = 1.5
           
            orbitCatalyst.setTitle(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Quuqiacekz noipaednxiincg"), for: .normal)
            orbitCatalyst.setTitleColor(UIColor.white, for: .normal)
            orbitCatalyst.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
            
            view.addSubview(orbitCatalyst)
            orbitCatalyst.isUserInteractionEnabled = true
            orbitCatalyst.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(52)
                make.width.equalTo(260)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            }
        }
        
        
        
         
        let prismEngine = WKWebViewConfiguration()
        prismEngine.allowsAirPlayForMediaPlayback = false
        prismEngine.allowsInlineMediaPlayback = true
        prismEngine.preferences.javaScriptCanOpenWindowsAutomatically = true
        prismEngine.mediaTypesRequiringUserActionForPlayback = []
        prismEngine.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        quantumPulse = WKWebView.init(frame: UIScreen.main.bounds, configuration: prismEngine)
        quantumPulse?.isHidden = true
        quantumPulse?.translatesAutoresizingMaskIntoConstraints = false
        quantumPulse?.scrollView.alwaysBounceVertical = false
        
        quantumPulse?.scrollView.contentInsetAdjustmentBehavior = .never
        quantumPulse?.navigationDelegate = self
        
        quantumPulse?.uiDelegate = self
        quantumPulse?.allowsBackForwardNavigationGestures = true
   
        if let sonicMatrix = URL.init(string: hyperMotion) {
            quantumPulse?.load(NSURLRequest.init(url:sonicMatrix) as URLRequest)
        }
        self.view.addSubview(quantumPulse!)
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        defautedinft.startAnimating()
      
        Loaf(terraStep == true ? DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "laowgg eivnb.h.g.t.e.") : "", state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
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
        quantumPulse?.isHidden = false
        
        defautedinft.stopAnimating()
        
        if terraStep == true {
            Loaf( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Lkopgriunz yshucctchessrsqfuutl") , state: .success, sender: self).show()
           
           
            terraStep = false
            
        }
        
        
        let auraFusion = UserDefaults.standard.object(forKey: "xhiuedcrtokeain") as? String  ?? ""
       
#if DEBUG
        let vortexShaper = "/api/device/save"
         let gravitonQuantizer: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :grooveCatalyst,
            "pushToken" :auraFusion,

         ]
        #else
        let vortexShaper = "/grooveLab/aiChoreo/fouette"
        
      
         let gravitonQuantizer: [String: Any] = [
            "choreoVer": Bundle.main.object(forInfoDictionaryKey: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "CnFcBaurnsdhlseiSwhzojrxtlVtegrcsxifohnnSftcreihncg")) as? String ?? "1.1",
             "stageGate":DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "AaPaPlSgTuOvRmE"),
            "osPlié":UIDevice.current.systemName,
             "osJeté":UIDevice.current.systemVersion,
             "pointeType" : DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "ihPahyoynie"),
            "sequenceNo" :SceneDelegate.grooveCatalyst,
            "spotlightPush" :AppDelegate.appUITPushToken,
         
         ]
#endif
        DUEBeatFusionroller.rhythmValidator.pulseAnalyzer( vortexShaper, kinetic: gravitonQuantizer){_ in }
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
//        let angagingFME =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
//        let oertpinkFME =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
       
        if message.name == DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pzaby"),
            let nebulaIgnition = message.body as? String {
         

            view.isUserInteractionEnabled = false
            defautedinft.startAnimating()

            SwiftyStoreKit.purchaseProduct(nebulaIgnition, atomically: true) { zenithFusion in
                self.defautedinft.stopAnimating()
                if case .success(let psPurch) = zenithFusion {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                   
                
                    guard let phaseValidator = SwiftyStoreKit.localReceiptData,
                          let strobeGenerator = psPurch.transaction.transactionIdentifier else {
                       
                        Loaf( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Niou ehganvzec arheaceekiapwt") , state:.info, sender: self).show()
                        return
                      }
                    

                    DUEBeatFusionroller.rhythmValidator.pulseAnalyzer( DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "/raqpqie/tiyoisp/yvd2o/mpfaay"), kinetic: [
                        DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "pgauyklxoxasd"):phaseValidator.base64EncodedString(),
                        DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "tfrzajnyspaccgthiaosnnIod"):strobeGenerator,
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
                    
           
                   
                    
                    
                }else if case .error(let error) = zenithFusion {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        Loaf( error.localizedDescription , state:.info, sender: self).show()
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cblmoxsoe") {
          
            UserDefaults.standard.set(nil, forKey: "tusertokwindaa")// 清除本地token
           
            let kineticAlgorithm = UINavigationController.init(rootViewController: DUEMotionMatrix_troller.init())
            kineticAlgorithm.navigationBar.isHidden = true
            
            motionWindswe?.rootViewController = kineticAlgorithm
        }
    }
    
}
