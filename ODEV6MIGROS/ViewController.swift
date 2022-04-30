//
//  ViewController.swift
//  ODEV6MIGROS
//
//  Created by aysegul on 30.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urunlerCollectionView: UICollectionView!
    
    var urunlerListesi = [Urunler]()
    
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        urunlerCollectionView.delegate = self
        urunlerCollectionView.dataSource = self
        
        self.navigationItem.title = "MİGROS"
        let appearance = UINavigationBarAppearance()
        // Arka Plan Rengi
        appearance.backgroundColor = UIColor(named: "yaziRenk1")
        navigationController?.navigationBar.barStyle = .black
        // Başlık Rengi
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk2")!,NSAttributedString.Key.font: UIFont(name: "Roboto-Bold", size: 32)!]
        
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        let u1 = Urunler(urunId: 1, urunAd: "Honeyglox Ananas", urunMiktar: "1 Adet", urunFiyat: 12.90, urunResimAdi: "ananas")
        let u2 = Urunler(urunId: 2, urunAd: "Yudum Yağ", urunMiktar: "1 L", urunFiyat: 42.90, urunResimAdi: "yudumyag")
        let u3 = Urunler(urunId: 3, urunAd: "Migros Baldo Pirinç", urunMiktar: "1000 G", urunFiyat: 22.90, urunResimAdi: "baldopirinc")
        let u4 = Urunler(urunId: 4, urunAd: "Çaykur Rize Çayı", urunMiktar: "500 G", urunFiyat: 42.50, urunResimAdi: "caykur")
        let u5 = Urunler(urunId: 5, urunAd: "Movenpick Dondurma", urunMiktar: "100 ml", urunFiyat: 55.90, urunResimAdi: "dondurma")
        let u6 = Urunler(urunId: 6, urunAd: "Elidor Şampuan", urunMiktar: "330 ml", urunFiyat: 29.90, urunResimAdi: "elidor")
        let u7 = Urunler(urunId: 7, urunAd: "Altınkılıç Kefir", urunMiktar: "30 G", urunFiyat: 16.90, urunResimAdi: "kefir")
        let u8 = Urunler(urunId: 8, urunAd: "Uzman Kasap Kıyma", urunMiktar: "500 G", urunFiyat: 47.90, urunResimAdi: "kıyma")
        let u9 = Urunler(urunId: 9, urunAd: "IThink Masa Lambası", urunMiktar: "1 Adet", urunFiyat: 69.90, urunResimAdi: "lamba")
        let u10 = Urunler(urunId: 10, urunAd: "Nutella Çikolata", urunMiktar: "1000 G", urunFiyat: 55.90, urunResimAdi: "nutella")
        let u11 = Urunler(urunId: 11, urunAd: "Papia Tuvalet Kağıdı", urunMiktar: "32 Adet", urunFiyat: 120.30, urunResimAdi: "papia")
        let u12 = Urunler(urunId: 12, urunAd: "Tat Salça", urunMiktar: "400 G", urunFiyat: 16.90, urunResimAdi: "salca")
        
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
        urunlerListesi.append(u8)
        urunlerListesi.append(u9)
        urunlerListesi.append(u10)
        urunlerListesi.append(u11)
        urunlerListesi.append(u12)
        
        
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 5
        tasarim.minimumLineSpacing = 5
        let genislik = urunlerCollectionView.frame.size.width
        let hucreGenislik = (genislik - 30) / 3
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.20)
        urunlerCollectionView.collectionViewLayout = tasarim
        
    
        
    }


}

extension ViewController : UISearchBarDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonucu: \(searchText)")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerListesi.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = urunlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! UrunlerCollectionViewCell
        
        cell.urunImageView.image = UIImage(named: urun.urunResimAdi!)
        cell.urunAdLabel.text = urun.urunAd
        cell.urunFiyatLabel.text = "₺ \(urun.urunFiyat!)"
        cell.urunMiktarLabel.text = urun.urunMiktar
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        
        return cell
    }
    
    
    
    
    
}

