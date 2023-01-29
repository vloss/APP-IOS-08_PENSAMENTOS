//
//  QuotesViewController.swift
//  Pensamentos
//
//  Created by Vinicius Loss on 29/01/23.
//

import UIKit

class QuotesViewController: UIViewController {

    @IBOutlet weak var ivPhotoBg: UIImageView!
    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var lbAuthor: UILabel!
    @IBOutlet weak var lbQuotes: UILabel!
    @IBOutlet weak var lcTop: NSLayoutConstraint!
    
    let quotesManager = QuotesManager()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareQuote()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        prepareQuote()
    }
    
    func prepareQuote(){
        
        // interrompe uma execução para não ficar duas ao mesmo tempo.
        timer?.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 8.0, repeats: true, block: { timer in
            self.showRandomQuote()
        })
        
        showRandomQuote()
    }
    
    func showRandomQuote(){
        let quote = quotesManager.getRandomQuote()
        
        lbQuotes.text = quote.quote
        lbAuthor.text = quote.author
        ivPhoto.image = UIImage(named: quote.image)
        ivPhotoBg.image = ivPhoto.image
        
        lbQuotes.alpha = 0.0
        lbAuthor.alpha = 0.0
        ivPhoto.alpha = 0.0
        ivPhotoBg.alpha = 0.0
        
        lcTop.constant = 50
        
        //Solicita reconstrução da View
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 2.5) {
            self.lbQuotes.alpha = 1.0
            self.lbAuthor.alpha = 1.0
            self.ivPhoto.alpha = 1.0
            self.ivPhotoBg.alpha = 0.25
            self.lcTop.constant = 10
            
            //Solicita reconstrução da View
            self.view.layoutIfNeeded()
        }
    }

}
