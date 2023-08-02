//
//  ViewController.swift
//  MovieLab
//
//  Created by Doğukan Temizyürek on 1.08.2023.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var secilenKategoriAdi : String  = ""
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return veriler.kategoriler.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "kategoricell") as? KategoriCell
        {
            cell.cellDuzenle(filmKategori: veriler.kategoriler[indexPath.row])
            return cell
        }
        return UITableViewCell()
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenKategoriAdi = veriler.kategoriler[indexPath.row].kategoriAdi
        performSegue(withIdentifier: "movielist", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let filmListesiVC = segue.destination as? FilmListesiVC
        {
            filmListesiVC.secilenKategoriAdi = secilenKategoriAdi
        }
    }
    

    
    var veriler = VeriSeti()

}

