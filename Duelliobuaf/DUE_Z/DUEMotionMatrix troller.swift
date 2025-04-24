//
//  DUEMotionMatrix troller.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/23.
//

import UIKit
import CoreLocation
import Loaf
//log in

class DUEMotionMatrix_troller: UIViewController ,CLLocationManagerDelegate {
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    private var shootersFcituiyFME:String = ""
    private var shootersFcodeFME:String = ""
    private var shootersFdistrrectFME:String = ""
    private   var shootersdeogerFME:String = ""
    private  var shootersFJingduFME:NSNumber = 0.0
    private  var shootersFcweiDuFME:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        if let image = UIImage(named: "DueLauo") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
        
        let  lsignintouchHTL = UIButton.init()
        lsignintouchHTL.layer.cornerRadius = 15
        lsignintouchHTL.layer.masksToBounds = true
        lsignintouchHTL.layer.borderColor = UIColor.white.cgColor
        lsignintouchHTL.layer.borderWidth = 1.5
       
        lsignintouchHTL.setTitle(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Quuoikcmke koqpfexnsimnkg"), for: .normal)
        lsignintouchHTL.setTitleColor(UIColor.white, for: .normal)
        lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        
        view.addSubview(lsignintouchHTL)
        lsignintouchHTL.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        lsignintouchHTL.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(52)
            make.width.equalTo(260)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
        }
        

        getnlocationAuthsFMer()
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    @objc func touchEntanceEnterFME() {
        getnlocationAuthsFMer()
        defautedinft.stopAnimating()
      
        Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "lcowgg jinnv.p.f."), state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
        let combinadinAllFME = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "uuswemreLuonciaxtnidountAxdsdtrieksdsuVwOm*f*z*b*ccwilteyt*n*j*o*kcxopujnttvrkyiCyotdweo*w*m*f*jdkihsdtirgifcxtw*h*l*o*rgzeoowniaimiewIldk*m*u*v*elzaktaiftyucdcen*f*f*a*clzohnogwiwtauzdle").components(separatedBy: "****")
    
         let pushtokeng = UserDefaults.standard.object(forKey: "xhiuedcrtokeain") as? String ?? ""
#if DEBUG
        let adventurepatherFME = "/api/login/v3/quickLogin"
        let versationParamFME: [String: Any] = [
            "appId":DUEBeatFusionroller.pnolyert.appleidSmalllWrite,
            "deviceId":onlyidduserFME,
            "pushToken":pushtokeng,
            "userLocationAddressVO":[
                "city":"Seoul",
                "countryCode":"KR",
                "district":"Seoul",
                "geonameId":"1835848",
                "latitude":37.5665,
                "longitude":126.9780
            ]
        ]
        #else
        let adventurepatherFME = "/tningre/improv/backstage/roleop"
        let versationParamFME: [String: Any] = [
            "roleID":UITLoakerinder.pnolyert.appleidSmalllWrite,
            "maskTech":SceneDelegate.onlyidduserFME,
            "curtainCall":AppDelegate.appUITPushToken,
//            combinadinAllFME[0]:[
//                "city":"Seoul",
//                "countryCode":"KR",
//                "district":"Seoul",
//                "geonameId":"1835848",
//                "latitude":37.5665,
//                "longitude":126.9780
//            ]

            DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "upsoedrcLaorcqajtziaosnjAadoderyenssshVvO"):[
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "cgiatny"):shootersFcituiyFME,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "cpoiuonstwrwyyCrondye"):shootersFcodeFME,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "dlipsltwrkircot"):shootersFdistrrectFME,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "gmeqobnmasmnecIwd"):shootersdeogerFME,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "lvawtlihteurdme"):shootersFJingduFME,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "lqohndgqiutsukdqe"):shootersFcweiDuFME
            ]
           
            
        ]
#endif
        
       
        
        DUEBeatFusionroller.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, parameters: versationParamFME) { result in
           
            self.defautedinft.stopAnimating()
            switch result{
            case .success(let bavuyr):
               

                guard let retro = bavuyr,
                      let getintokeniddFME = retro[DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "tzockcepn")] as? String,
                      let effortlesslyfme = UserDefaults.standard.object(forKey: "ueritnLinakdbg")  as? String
                else {
                   
              
                    Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer:DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "dkajtpau uwnebaykg!")),location:.top, sender: self).show()
                   
                    return
                }
                
                UserDefaults.standard.set(getintokeniddFME, forKey: "tusertokwindaa")
               
                let gloriousfmeFME = effortlesslyfme  + DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "/q/f?calpcpcIads=") + "\(DUEBeatFusionroller.pnolyert.appleidSmalllWrite)" + DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "&wtvohkleunr=") + getintokeniddFME
                let maingbu = DUERhythmValidatorroller.init(wonderfulnowing: gloriousfmeFME, islogingpagepalt: true)
                self.navigationController?.pushViewController(maingbu, animated: false)
               
               
            case .failure(let error):
                Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: error.localizedDescription),location:.top, sender: self).show()
               
              
            }
        }
        
       
        
    }

    
    private func getnlocationAuthsFMer() {
        
        let weteranlocatertoolFME = CLLocationManager()
        weteranlocatertoolFME.delegate = self
        if weteranlocatertoolFME.authorizationStatus  ==  .authorizedWhenInUse || weteranlocatertoolFME.authorizationStatus  ==  .authorizedAlways{
            weteranlocatertoolFME.startUpdatingLocation()
          
       }else if weteranlocatertoolFME.authorizationStatus  ==  .denied{
           Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer:DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "ifts eihss urieuchocmxmcewnvdgeddm ftphvaotg oyxotuo goepwebnw vikth lidne qspeytbtaidnbgxsn aleopcjaqtfidokns afhoyrs dbxectotqejrd asmeiryvtigcve")),location:.top, sender: self).show()
          
           
       }else if weteranlocatertoolFME.authorizationStatus  ==  .notDetermined{
           weteranlocatertoolFME.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        shootersFJingduFME =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        shootersFcweiDuFME =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

        let gewotoolFME = CLGeocoder()
        gewotoolFME.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let palvemajfVAF = plcaevfg?.first else { return }
            shootersFdistrrectFME = palvemajfVAF.subLocality  ?? ""
            shootersdeogerFME = palvemajfVAF.administrativeArea  ?? ""

            shootersFcodeFME = palvemajfVAF.country ?? ""
            shootersFcituiyFME = palvemajfVAF.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}
