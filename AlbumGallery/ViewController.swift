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
        customview_library.showAlert(title: "Hello", message: "Do you want to learn Swift package manager?", completion: {
            let profileVC = CustomView_Library.createViewController()
            self.navigationController?.pushViewController(profileVC, animated: true)
        })
        
    }
}
//MARK: - Custom function  -
extension ViewController {
    func setupView() {
        self.clickMeBtn.layer.cornerRadius = 5
    }
}
