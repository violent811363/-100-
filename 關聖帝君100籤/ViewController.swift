//
//  ViewController.swift
//  關聖帝君100籤
//
//  Created by 吳世馨 on 2020/12/25.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var allLots: UIImageView!
    @IBOutlet weak var drawALot: UIButton!
    
//把100籤詩排好array
    var images = ["lot1","lot2","lot3","lot4","lot5","lot6","lot7","lot8","lot9","lot10","lot11","lot12","lot13","lot14","lot15","lot16","lot17","lot18","lot19","lot20","lot21","lot22","lot23","lot24","lot25","lot26","lot27","lot28","lot29","lot30","lot31","lot32","lot33","lot34","lot35","lot36","lot37","lot38","lot39","lot40","lot41","lot42","lot43","lot44","lot45","lot46","lot47","lot48","lot49","lot50","lot51","lot52","lot53","lot54","lot55","lot56","lot57","lot58","lot59","lot60","lot61","lot62","lot63","lot64","lot65","lot66","lot67","lot68","lot69","lot70","lot71","lot72","lot73","lot74","lot75","lot76","lot77","lot78","lot79","lot80","lot81","lot82","lot83","lot84","lot85","lot86","lot87","lot88","lot89","lot90","lot91","lot92","lot93","lot94","lot95","lot96","lot97","lot98","lot99","lot100"]
    
//設定一個變數以利之後切換圖片呼叫用
    var item:Int! = 0

    
//開啟APP時會看到搖籤筒的動畫，抽完籤後讓籤詩蓋住動畫
//切換圖片function設定在最下面那段
    @IBAction func drawALotButton(_ sender: Any) {
        view.addSubview(allLots)
        updateImage()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let lotsBottleImageView = UIImageView(frame: CGRect(x:138, y:478, width: 150, height:150))
        view.addSubview(lotsBottleImageView)
        let animatedImage = UIImage.animatedImageNamed("lotsBottle-", duration: 3)
        lotsBottleImageView.image = animatedImage
    }

//更換影像，item為籤詩數量，＋到100時變0從頭開始
//.shuffle()可讓陣列隨機排序
    func updateImage() {
        images.shuffle()
        allLots.image = UIImage(named: "\(images[item])")
        allLots.contentMode = .scaleAspectFit
        item = item + 1
        if item < 100 {
            allLots.image = UIImage(named: "\(images[item])")
            } else {
                item = 0
                allLots.image = UIImage(named: "\(images[item])")
            }
}

}
