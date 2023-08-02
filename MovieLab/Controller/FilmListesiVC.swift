//
//  FilmListesiVC.swift
//  MovieLab
//
//  Created by Doğukan Temizyürek on 2.08.2023.
//

import UIKit

class FilmListesiVC : UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var secilenKategoriAdi : String = ""
    var veriler = VeriSeti()
    var secilenFilm : Film!

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return veriler.filmleriGetir(kategori: secilenKategoriAdi).count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let filmCell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmcell", for: indexPath) as? FilmCell{
            filmCell.cellDuzenle(film: veriler.filmleriGetir(kategori: secilenKategoriAdi)[indexPath.row])
            return filmCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let genislik = view.bounds.width
        let hucreBoyutu = (genislik / 2 ) - 15
        
        return CGSize(width: hucreBoyutu
                      , height: hucreBoyutu)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        secilenFilm = veriler.filmleriGetir(kategori: secilenKategoriAdi)[indexPath.row]
        performSegue(withIdentifier: "filmdetayi", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let filmDetayiVC = segue.destination as? FilmDetayVC
        {
            filmDetayiVC.secilenFilm = secilenFilm
        }
    }

}
