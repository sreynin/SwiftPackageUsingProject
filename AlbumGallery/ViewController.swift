//
//  ViewController.swift
//  AlbumGallery
//
//  Created by SREININ on 11/9/23.
//

import UIKit
import CustomView_Library

class ViewController: UIViewController {
    
    //MARK: - IBOutlet -
    @IBOutlet weak var clickMeBtn: UIButton!
    @IBOutlet weak var myView: customView!
    let customview_library = CustomView_Library()
    //MARK: - View lifeCycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
    }
    
    //MARK: - IBAction -
    @IBAction func clickMeAction(_ sender: UIButton) {
        sender.defaultNativeFeelingAnimation(scaleMeasurement: 0.8){_ in
            self.customview_library.showAlert(title: "Hello", message: "Do you want to learn Swift package manager?", completion: {
                let profileData = ProfileModel(imgUrl: "https://play-lh.googleusercontent.com/0SAFn-mRhhDjQNYU46ZwA7tz0xmRiQG4ZuZmuwU8lYmqj6zEpnqsee_6QDuhQ4ZofwXj=w240-h480-rw", name: "Sreinin", dateBirth: "1995.05.15", phoneNum:"01067049666" , addr: "부산광역시 동구 초량동 1226 범양레우스 센트럴베이, 센트럴베이 103동 3203호")
                let profileVC = CustomView_Library.createProfileViewController(profileData: profileData)
              self.navigationController?.pushViewController(profileVC, animated: true)
          })
        }
    }
}
//MARK: - Custom function  -
extension ViewController {
    func setupView() {
        self.clickMeBtn.layer.cornerRadius = 5
    }
}
