//
//  ResultViewController.swift
//  TaxApp
//
//  Created by swans on 2019/09/13.
//  Copyright © 2019 swans. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
//2画面目のラベルをこのViewControllerにOutlet接続
    @IBOutlet weak var label: UILabel!
    //受け取るためのプロパティを宣言
    var price:String = ""
    var tax:Double = 0.08
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //上記では空文字だが、1画面目から遷移するときにprepareForsegueでtaxの値を新たに代入したのでその値が入っている
    let result = price.toInt()! * tax
    label.text = "税込" + result + "です！"
    // ラベルにOutlet接続を設定
    @IBOutlet weak var label: UILabel!
    
}
