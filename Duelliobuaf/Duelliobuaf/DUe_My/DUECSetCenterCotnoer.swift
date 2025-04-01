//
//  DUECSetCenterCotnoer.swift
//  Duelliobuaf
//
//  Created by mumu on 2025/4/1.
//
import Loaf
import UIKit
import AVFoundation
class DUECSetCenterCotnoer: DUELaterPageContirl, UICollectionViewDelegate, UICollectionViewDataSource ,UINavigationControllerDelegate, UIImagePickerControllerDelegate,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        }else{
            return UIEdgeInsets(top: 36, left: 0, bottom: 0, right: 0)
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 0 {
            return CGSize(width: 0, height: 200 + 13)
        }
        return CGSize.zero
    }
//    private var editheaderViewDUE:DUECSetEditInfoCell?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 4
        }
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let zdfdf = ["Privacy", "User Agreement" ,"About us" ,"Clear cache"]
            
            let KDg = collectionView.dequeueReusableCell(withReuseIdentifier: "DUECSetNrtCell", for: indexPath) as! DUECSetNrtCell
            KDg.DuerCuoaojmView.text = zdfdf[indexPath.row]
            return KDg
        }else{
            
            let KDg = collectionView.dequeueReusableCell(withReuseIdentifier: "DUEBotttomtNrtCell", for: indexPath) as! DUEBotttomtNrtCell
            let zdfdf = ["Log out", "Delete Account" ]
            KDg.DuerCuoaojmView.setTitle(zdfdf[indexPath.row], for: .normal)
            return KDg
        }
      
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let protalHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "DUECSetEditInfoCell", for: indexPath) as! DUECSetEditInfoCell
            protalHeader.headerViewDUe.setBackgroundImage(AppDelegate.HuiwchaerQuil, for: .normal)
            protalHeader.headerViewDUe.addTarget(self, action: #selector(shkenOulaui), for: .touchUpOutside)
            
            let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
            
            protalHeader.inputingName.text = use?["Due_Nopme"]

//            editheaderViewDUE = protalHeader
            return protalHeader
        }
        return UICollectionReusableView()
    }
    
    
    private func OAXxbDUiDance()  {
        let NJshd = UIImagePickerController()
        NJshd.sourceType = .camera
        
        NJshd.delegate = self
        NJshd.allowsEditing = true
        self.present(NJshd, animated: true, completion: nil)
    }
    
    //更新头像
   @objc func shkenOulaui()  {
       
       switch AVCaptureDevice.authorizationStatus(for: .video) {
       case .authorized:
          
           self.OAXxbDUiDance()
       case .notDetermined:
          
           AVCaptureDevice.requestAccess(for: .video) { ifHasgranted in
               
               DispatchQueue.main.async {
                   if ifHasgranted {
                       self.OAXxbDUiDance()
                   }else{
                       Loaf("No Camera Permission!", sender: self).show()
                       
                      
                   }
               }
              
           }
           
       case .denied,.restricted:
           Loaf("No Camera Permission!", sender: self).show()
           
          
       
        default:
           Loaf("No Camera Permission!", sender: self).show()
           
          
       }
       
       
       
    }
    
    var dafenibu:UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let IOsh = UICollectionViewFlowLayout.init()
        IOsh.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24 , height: 58)
        IOsh.minimumLineSpacing = 12
        IOsh.minimumInteritemSpacing = 12
        IOsh.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 200 + 13)
        IOsh.scrollDirection = .vertical
       
        self.dafenibu = UICollectionView.init(frame: .zero, collectionViewLayout: IOsh)
        
        dafenibu?.register(DUECSetNrtCell.self, forCellWithReuseIdentifier: "DUECSetNrtCell")
        dafenibu?.register(DUEBotttomtNrtCell.self, forCellWithReuseIdentifier: "DUEBotttomtNrtCell")
        dafenibu?.register(DUECSetEditInfoCell.self, forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: "DUECSetEditInfoCell")
        dafenibu?.backgroundColor = .clear
       
       
        dafenibu?.contentInsetAdjustmentBehavior = .never
        dafenibu?.showsVerticalScrollIndicator = false
        dafenibu?.delegate = self
        dafenibu?.dataSource = self
        dafenibu?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        
       
        shitMorengDUE.isHidden = true
        
        let DuerCuoaojmView = UILabel.init()
        DuerCuoaojmView.textColor = UIColor.white
        DuerCuoaojmView.textAlignment = .center
        DuerCuoaojmView.text = "Setting"
        DuerCuoaojmView.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.addSubview(DuerCuoaojmView)
        DuerCuoaojmView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(shitMorengDUE)
        }
        self.view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        
        view.addSubview(dafenibu!)
        dafenibu?.snp.makeConstraints({ make in
            make.left.right.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo(DuerCuoaojmView.snp.bottom).offset(26)
        })
    }
    
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
    
        DispatchQueue.main.async {
            AppDelegate.HuiwchaerQuil = image
            
            picker.dismiss(animated: true)
            
            self.dafenibu?.reloadData()
        }
        
    }
    
    
    
    
}

class DUECSetEditInfoCell:UICollectionReusableView {
    
    lazy var headerViewDUe: UIButton = {
        let Odkfes = UIButton.init()
        Odkfes.setBackgroundImage(AppDelegate.HuiwchaerQuil, for: .normal)
        Odkfes.setImage(UIImage.init(named: "Tuijvatar"), for: .normal)
        Odkfes.layer.cornerRadius = 50
        Odkfes.layer.masksToBounds = true
        return Odkfes
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        self.addSubview(headerViewDUe)
        headerViewDUe.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(20)
        }
        self.addSubview(inputingName)
        inputingName.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(19)
            make.height.equalTo(58)
            make.top.equalTo(headerViewDUe.snp.bottom).offset(20)
        }
    }
    
    lazy var inputingName: UITextField = {
        let Tesntit = UITextField.init()
        Tesntit.textAlignment = .center
        Tesntit.textColor = .white
        Tesntit.backgroundColor = .black
        Tesntit.layer.cornerRadius = 29
        Tesntit.layer.masksToBounds = true
        Tesntit.placeholder = "Please enter name"
        let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
        
        Tesntit.text = use?["Due_Nopme"]
        return Tesntit
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class DUECSetNrtCell: UICollectionViewCell {
    
    lazy var DuerCuoaojmView: UILabel = {
        let DuerCuoaojmView = UILabel.init()
        DuerCuoaojmView.textColor = UIColor.white
        DuerCuoaojmView.textAlignment = .left
        
        DuerCuoaojmView.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return DuerCuoaojmView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        self.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        
        
        contentView.addSubview(DuerCuoaojmView)
        DuerCuoaojmView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
        
        let smk = UIImageView(image: .init(named: "Gahofoik"))
        contentView.addSubview(smk)
        smk.snp.makeConstraints { make in
            make.width.height.equalTo(16)
            make.trailing.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class DUEBotttomtNrtCell: UICollectionViewCell {
    
    lazy var DuerCuoaojmView: UIButton = {
        let DuerCuoaojmView = UIButton.init()
        DuerCuoaojmView.setTitleColor(.white, for: .normal)
        DuerCuoaojmView.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        DuerCuoaojmView.layer.borderColor = UIColor.white.cgColor
        DuerCuoaojmView.layer.borderWidth = 1
        DuerCuoaojmView.layer.cornerRadius = 24
        DuerCuoaojmView.layer.masksToBounds = true
        return DuerCuoaojmView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        self.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        
        
        contentView.addSubview(DuerCuoaojmView)
        DuerCuoaojmView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(29)
            make.centerY.equalToSuperview()
            make.height.equalTo(48)
            
        }
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
