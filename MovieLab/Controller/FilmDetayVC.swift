//
//  FilmDetayVC.swift
//  MovieLab
//
//  Created by Doğukan Temizyürek on 2.08.2023.
//

import UIKit

class FilmDetayVC: UIViewController {
    @IBOutlet weak var imgPoster: UIImageView!
    
    @IBOutlet weak var lblBaslik: UILabel!
    
    @IBOutlet weak var lblFilmDetay: UITextView!
    
    var secilenFilm : Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    if let secilenFilm = secilenFilm
        {
        imgPoster.image = UIImage(named: secilenFilm.goruntuAdi)
        lblBaslik.text = secilenFilm.adi
        lblFilmDetay.text = secilenFilm.detaylari
    }
        
    }
    


}
