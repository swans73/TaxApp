//
//  ViewController.swift
//  TaxApp
//
//  Created by swans on 2019/09/13.
//  Copyright © 2019 swans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //ViewContrtollerのソースコードに遷移されるときに呼ばれるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        //遷移先のResultViewControllerで宣言しているtaxに値を代入して渡す
        resultViewController.moji = MyTextField.text!
    }
    @IBOutlet weak var MyTextField: UITextField!
    //遷移先から戻ってきたときに呼ばれるsegueを設定
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }


}

