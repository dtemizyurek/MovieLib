//
//  FilmCell.swift
//  MovieLab
//
//  Created by Doğukan Temizyürek on 2.08.2023.
//

import UIKit

class FilmCell: UICollectionViewCell
{
    @IBOutlet weak var imgFilm: UIImageView!
    
    
    override func awakeFromNib()
    {
        
        super.awakeFromNib()
        imgFilm.layer.cornerRadius = 10
    }
    func cellDuzenle(film : Film)
    {
        imgFilm.image = UIImage(named: film.goruntuAdi)
    }
    
}
