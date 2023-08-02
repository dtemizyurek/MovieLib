//
//  kategoriCell.swift
//  MovieLab
//
//  Created by Doğukan Temizyürek on 1.08.2023.
//

import UIKit

class KategoriCell: UITableViewCell {

    @IBOutlet weak var imgKategori: UIImageView!
    
    @IBOutlet weak var lblKategori: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgKategori.layer.cornerRadius = 10
    }

    func cellDuzenle(filmKategori : FilmKategori)
    {
        imgKategori.image = UIImage(named: filmKategori.goruntuAdi)
        lblKategori.text = filmKategori.kategoriAdi
    }

}
