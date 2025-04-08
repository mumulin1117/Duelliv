//
//  DUECCSetingLiver.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/1.
//

import UIKit
import AVFoundation
import Loaf

class DUECCSetingLiver: DUELaterPageContirl , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    private  var liveingTieName:String?
    
    var hsingImag:UIImage?
    
    private let previewLayer = AVCaptureVideoPreviewLayer()
    private let sessionDUES = AVCaptureSession()
        
    private let sessionDUESQueue = DispatchQueue(label: "session.queue")
    private var videoDUESInput: AVCaptureDeviceInput!
    private var audioDUESInput: AVCaptureDeviceInput?
    
    @IBOutlet weak var bainong: UIButton!//dismiss
    
    @IBOutlet weak var bauiDUer: UIButton!//switch
    
    @IBOutlet weak var addCoverUplo: UIButton!
    
    @IBOutlet weak var adddTitileLive: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shitBackDUE.isHidden = true
        self.shitMorengDUE.isHidden = true
        
        weaveCulturalRhythms()
        
        spawnInteractiveSequence()
        
        bainong.addTarget(self, action: #selector(traikillloer), for: .touchUpInside)
    }

    func weaveCulturalRhythms()  {
        previewLayer.frame = view.bounds
               
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.insertSublayer(previewLayer, at: 0)
        previewLayer.transform = CATransform3DMakeScale(-1, 1, 1)
        
        
        bauiDUer.addTarget(self, action: #selector(swifchvamemrt), for: .touchUpInside)
        
        
    }
    
    
    
    @objc func traikillloer() {
        self.navigationController?.popViewController(animated: true)
        
    }

    
   @objc func swifchvamemrt(){
       sessionDUESQueue.async {
           let currentPosition = self.videoDUESInput.device.position
           let newPosition: AVCaptureDevice.Position = currentPosition == .front ? .back : .front
           
           guard let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera,
                                                           for: .video,
                                                           position: newPosition) else { return }
           
           do {
               let newVideoInput = try AVCaptureDeviceInput(device: videoDevice)
               
               self.sessionDUES.beginConfiguration()
               self.sessionDUES.removeInput(self.videoDUESInput)
               
               if self.sessionDUES.canAddInput(newVideoInput) {
                   self.sessionDUES.addInput(newVideoInput)
                   self.videoDUESInput = newVideoInput
               } else {
                   self.sessionDUES.addInput(self.videoDUESInput)
               }
               
               // 调整镜像效果
               DispatchQueue.main.async {
                   let scale: CGFloat = newPosition == .front ? -1 : 1
                   self.previewLayer.transform = CATransform3DMakeScale(scale, 1, 1)
               }
               
               self.sessionDUES.commitConfiguration()
           } catch {
               print("Error switching camera: \(error)")
           }
           
       }
    }
    
    
    private func spawnInteractiveSequence() {
            let cameraStatus = AVCaptureDevice.authorizationStatus(for: .video)
            let audioStatus = AVCaptureDevice.authorizationStatus(for: .audio)
            
            switch (cameraStatus, audioStatus) {
            case (.authorized, .authorized):
                setupCaptureSession()
            case (.notDetermined, _), (_, .notDetermined):
                requestPermissions()
            default:
                SureSjoaPerDUEionAlert()
            }
        }
        
    
   
        
    private func requestPermissions() {
        AVCaptureDevice.requestAccess(for: .video) { [weak self] videoGranted in
            AVCaptureDevice.requestAccess(for: .audio) { audioGranted in
                DispatchQueue.main.async {
                    if videoGranted && audioGranted {
                        self?.setupCaptureSession()
                    } else {
                        self?.SureSjoaPerDUEionAlert()
                    }
                }
            }
        }
    }
    
    private func setupCaptureSession() {
            
        self.configureSession()
    }
    
    
    private func configureSession() {
            sessionDUES.beginConfiguration()
            
            // 视频输入
            guard let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera,
                                                            for: .video,
                                                            position: .front) else {
                Loaf("No video device available", sender: self).show()
                return
            }
            
            do {
                videoDUESInput = try AVCaptureDeviceInput(device: videoDevice)
                if sessionDUES.canAddInput(videoDUESInput) {
                    sessionDUES.addInput(videoDUESInput)
                }
            } catch {
                Loaf("Error setting video input: \(error)", sender: self).show()
                
            }
            
            // 音频输入
            if let audioDevice = AVCaptureDevice.default(for: .audio) {
                do {
                    let audioInput = try AVCaptureDeviceInput(device: audioDevice)
                    if sessionDUES.canAddInput(audioInput) {
                        sessionDUES.addInput(audioInput)
                        audioDUESInput = audioInput
                    }
                } catch {
                    Loaf("Error setting audio input: \(error)", sender: self).show()
                    
                }
            }
            
            // 视频输出
            let videoOutput = AVCaptureVideoDataOutput()
            if sessionDUES.canAddOutput(videoOutput) {
                sessionDUES.addOutput(videoOutput)
            }
            
            sessionDUES.commitConfiguration()
            
            DispatchQueue.main.async {
                self.previewLayer.session = self.sessionDUES
                self.sessionDUES.startRunning()
            }
       
    }
     
    private func SureSjoaPerDUEionAlert() {
            
        let persmifnalert = UIAlertController(
            title: "Permission required",
            message: "Please go to Settings to enable camera and microphone permissions",
            preferredStyle: .alert
        )
        
        
        persmifnalert.addAction(UIAlertAction(title: "Go set", style: .default) { _ in
            guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
            UIApplication.shared.open(url)
        })
        persmifnalert.addAction(UIAlertAction(title: "cancel", style: .cancel))
        present(persmifnalert, animated: true)
       
    }
    
    
    
    
    
    @IBAction func syncGlobalGroove(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) == false{
            Loaf("This device does not have the capability to add photos.", sender: self).show()
            return
        }
        let picker = UIImagePickerController()
               
        picker.sourceType = .photoLibrary
        picker.delegate = self
        self.present(picker, animated: true)
    }
    
    
    @IBAction func amplifyStagePresence(_ sender: UIButton) {
        // 创建一个弹窗
              
        let alertController = UIAlertController(title: "Live room name", message: nil, preferredStyle: .alert)

        // 添加文本输入框
        alertController.addTextField { (textField) in
            textField.placeholder = "Please enter Live room name"
        }

        // 添加确认按钮
        let confirmAction = UIAlertAction(title: "Sure", style: .default) { _ in
            if let roomName = alertController.textFields?.first?.text, !roomName.isEmpty {
                self.liveingTieName = roomName // 这里可以将直播间名称保存或传递
                self.titkelshowing.text = roomName
            } else {
            
                Loaf("No live room name entered", sender: self).show()
            }
        }

        // 添加取消按钮
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel)

        // 添加按钮到弹窗
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)

        // 显示弹窗
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func pacthiedF(_ sender: UIButton) {
        
        guard let iivekname = self.liveingTieName else {
            Loaf("No live room name entered", sender: self).show()
            return
        }
        guard let iiveIMG =  self.hsingImag else {
            Loaf("No live cover add", sender: self).show()
            return
        }
       
        
        
        
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        self.view.addSubview(indicate)
        indicate.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        indicate.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            guard var use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String> else{
                return
            }
            indicate.stopAnimating()
            use["Due_LiveTItle"] = iivekname
            use["Due_Nopme"] = "Me"
           let kfij = livediaologall.init(userdiocm: use, lisat: [])
            self.navigationController?.pushViewController(DUEIPkLivinailCotnoller.init(datagalll: kfij, coveriahkkk: iiveIMG), animated: true)
        }))
        
    }
    
    @IBOutlet weak var titkelshowing: UILabel!
    
}


extension DUECCSetingLiver{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
        DispatchQueue.main.async {
            self.addCoverUplo.setBackgroundImage(image, for: .normal)
            self.hsingImag = image
            picker.dismiss(animated: true, completion: nil)
        }
    }
    
}
