//
//  ViewController.swift
//  firebaseDevEnv
//
//  Created by 宮倉宗平 on 2019/02/11.
//  Copyright © 2019 Sohei Miyakura. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var DBRef:DatabaseReference!
    
    //何番目のplayerかを識別する変数
    var playerNumber: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        DBRef = Database.database().reference()
    }
    
    //部屋を作成
    @IBAction func createRoom(_ sender: AnyObject) {
        //どのルームかをは識別するためのid
        let roomId: String = "123456"
        let roomNumber: Int = 1
        DBRef.child("room/" + String(roomNumber) + "/roomId").setValue(roomId)
    }
    
    //部屋の中にユーザーを作成
    @IBAction func createPlayer(_ sender: AnyObject) {
        let userName = "しゅんぺいさん"
        //ここで何番目のplayerかを記載
        playerNumber = 1
        DBRef.child("room/1/player/" + String(playerNumber) + "/name").setValue(userName)
    }
    
    //トランプのカードを配るための関数(例です。)
    func createCard() {
        //こんな感じでplayerごとに処理を分ける
        if playerNumber == 1 {
            
        } else if playerNumber == 2 {
            
        }
    }

}

