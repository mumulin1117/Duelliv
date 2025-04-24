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
    private  lazy var vectorFlow: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    private var chromaBeat:String = ""
    private var echoPulse:String = ""
    private var glideStep:String = ""
    private   var phoenixMatrix:String = ""
    private  var fluxEngine:NSNumber = 0.0
    private  var serenityGenerator:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        if let neoValidator = UIImage(named: "DueLauo") {
               
            view.layer.contents = neoValidator.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
        
        let  blazeFusion = UIButton.init()
        blazeFusion.layer.cornerRadius = 15
        blazeFusion.layer.masksToBounds = true
        blazeFusion.layer.borderColor = UIColor.white.cgColor
        blazeFusion.layer.borderWidth = 1.5
       
        blazeFusion.setTitle(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Quuoikcmke koqpfexnsimnkg"), for: .normal)
        blazeFusion.setTitleColor(UIColor.white, for: .normal)
        blazeFusion.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        
        view.addSubview(blazeFusion)
        blazeFusion.addTarget(self, action: #selector(infinityIgnition), for: .touchUpInside)
        blazeFusion.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(52)
            make.width.equalTo(260)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
        }
        

        getnlocationAuthsFMer()
        self.view.addSubview(vectorFlow)
        vectorFlow.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    @objc func infinityIgnition() {
        getnlocationAuthsFMer()
        vectorFlow.stopAnimating()
      
        Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "lcowgg jinnv.p.f."), state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
        let combinadinAllFME = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "uuswemreLuonciaxtnidountAxdsdtrieksdsuVwOm*f*z*b*ccwilteyt*n*j*o*kcxopujnttvrkyiCyotdweo*w*m*f*jdkihsdtirgifcxtw*h*l*o*rgzeoowniaimiewIldk*m*u*v*elzaktaiftyucdcen*f*f*a*clzohnogwiwtauzdle").components(separatedBy: "****")
    
         let zenCore = UserDefaults.standard.object(forKey: "xhiuedcrtokeain") as? String ?? ""
#if DEBUG
        let vortexShaper = "/api/login/v3/quickLogin"
        let gravitonQuantizer: [String: Any] = [
            "appId":DUEBeatFusionroller.rhythmValidator.sonicPose,
            "deviceId":grooveCatalyst,
            "pushToken":zenCore,
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
        let vortexShaper = "/stageLive/battleZone/pirouette"
        let gravitonQuantizer: [String: Any] = [
            "spotlightCode":UITLoakerinder.rhythmValidator.sonicPose,
            "soleID":grooveCatalyst,
            "curtainCall":zenCore,
//            combinadinAllFME[0]:[
//                "city":"Seoul",
//                "countryCode":"KR",
//                "district":"Seoul",
//                "geonameId":"1835848",
//                "latitude":37.5665,
//                "longitude":126.9780
//            ]

            DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "upsoedrcLaorcqajtziaosnjAadoderyenssshVvO"):[
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "cgiatny"):chromaBeat,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "cpoiuonstwrwyyCrondye"):echoPulse,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "dlipsltwrkircot"):glideStep,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "gmeqobnmasmnecIwd"):phoenixMatrix,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "lvawtlihteurdme"):fluxEngine,
                DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "lqohndgqiutsukdqe"):serenityGenerator
            ]
           
            
        ]
#endif
        
       
        
        DUEBeatFusionroller.rhythmValidator.pulseAnalyzer( vortexShaper, kinetic: gravitonQuantizer) { result in
           
            self.vectorFlow.stopAnimating()
            switch result{
            case .success(let kinetic):
               

                guard let Algorithm = kinetic,
                      let strobeGroove = Algorithm[DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "tzockcepn")] as? String,
                      let phaseRhythm = UserDefaults.standard.object(forKey: "ueritnLinakdbg")  as? String
                else {
                   
              
                    Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer:DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "dkajtpau uwnebaykg!")),location:.top, sender: self).show()
                   
                    return
                }
                
                UserDefaults.standard.set(strobeGroove, forKey: "tusertokwindaa")
               
                let zenithFlow = phaseRhythm  + DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "/q/f?calpcpcIads=") + "\(DUEBeatFusionroller.rhythmValidator.sonicPose)" + DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "&wtvohkleunr=") + strobeGroove
                let nebulaBeat = DUERhythmValidatorroller.init(_hyperMotion: zenithFlow, _terraStep: true)
                self.navigationController?.pushViewController(nebulaBeat, animated: false)
               
               
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
        
       
        fluxEngine =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        serenityGenerator =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

        let gewotoolFME = CLGeocoder()
        gewotoolFME.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let palvemajfVAF = plcaevfg?.first else { return }
            glideStep = palvemajfVAF.subLocality  ?? ""
            phoenixMatrix = palvemajfVAF.administrativeArea  ?? ""

            echoPulse = palvemajfVAF.country ?? ""
            chromaBeat = palvemajfVAF.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}
