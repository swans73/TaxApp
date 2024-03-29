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
    var moji:String = ""
    var tax:Float = 1.08
    override func viewDidLoad() {
        super.viewDidLoad()
//前画面で取得した値をFloat型に変換
        let price = Float(moji)!
        //計算した値をString型に変換
        let result = String(price * tax)
        label.text = "税込" + result + "円です！"
       
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
   
    
}
