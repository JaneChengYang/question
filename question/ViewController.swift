//
//  ViewController.swift
//  question
//
//  Created by Simon on 2018/4/5.
//  Copyright © 2018年 Simon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //定義一個等等要用的struct
    struct Qna {
        var problem:String
        var answer:String
    }
    //定義一個Int用來換題目
    var number = 0
    //題目與答案的陣列
    var qnaArray = [Qna(problem: "颱風天氣要帶多少錢才能出門? ", answer: "四千萬.因爲台風天氣沒'事千萬'不要出門."),
                    Qna(problem: "要考試了,不能看什麽書? ", answer: "百科全書(百科全輸)"),
                    Qna(problem: "布和紙怕什麽？ ", answer: "布怕一萬，紙怕萬一 (不(布)怕一萬，只(紙)怕萬一)" ),
                    Qna(problem: "鉛筆姓什麽？", answer: "蕭,原因：削(蕭)鉛筆。 "),
                    Qna(problem: "麒麟到了北極會變成什麽？", answer: "冰泣淩,冰泣淩(冰麒麟)。"),
                    Qna(problem: "從1到9哪個數字最勤勞，哪個數字最懶惰？", answer: "1懶惰；2勤勞,一(1)不做二(2)不休"),
                    Qna(problem: "怎樣使麻雀安靜下來？ ", answer: "壓它一下,鴉雀無聲(壓雀無聲)。 "),
                    Qna(problem: "30-50哪個數字比熊的大便厲害! ", answer: "40,事實勝于雄(熊)辯 "),
                    Qna(problem: "蔣公(蔣介石)如果還在世的話世界會怎樣？", answer: "多一個人XD"),
                    Qna(problem: "這兩塊冰下有鯉魚（四字成語）? ", answer: "彬彬有禮（冰冰有鯉)")]

    @IBAction func nextButton(_ sender: UIButton) {
        //讓題目循環
        number += 1
        if number == 10{
            number = 0
        }
        nextQuestionButton.isHidden = true
        answerLabel.isHidden = true
        problemLabel.text = qnaArray[number].problem
        answerLabel.text = qnaArray[number].answer
        problemButton.setTitle("\(number+1)", for: .normal)
    }
    @IBAction func problemButton(_ sender: UIButton) {
        answerLabel.isHidden = false
        nextQuestionButton.isHidden = false
    }
    
    @IBOutlet weak var problemButton: UIButton!
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var problemLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

