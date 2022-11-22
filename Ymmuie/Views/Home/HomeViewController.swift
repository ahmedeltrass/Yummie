//
//  HomeViewController.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 21/11/2022.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var catagoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialsCollectionView: UICollectionView!
    
    var populars  : [DishPopular] = [
        .init(id: "id1", name: "Garrie", description: "This is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 34),
        .init(id: "id1", name: "Indomie", description: "This is the best I have ever tested This is the best I have ever tested This is the best I have ever tested This is the best I have ever testedThis is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 314),
        .init(id: "id1", name: "pizza", description: "This is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 1004)
    
    
    ]
    
    var catagories : [DishCatagory] = [
        .init(id: "id1", name: "African dish 1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "African dish 5", image: "https://picsum.photos/100/200")
    ]
    var specials : [DishPopular] = [
        .init(id: "id1", name: "Pasta", description: "Its my favoarte meals", image:"https://picsum.photos/100/200", calories: 300),
        .init(id: "id1", name: "Indomie", description: "This is the best I have ever tested This is the best I have ever tested This is the best I have ever tested This is the best I have ever tested This is the best I have ever testedThis is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 314),
        .init(id: "id1", name: "pizza", description: "This is the best I have ever tested", image:"https://picsum.photos/100/200", calories: 1004)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
     registerCell()
        
    }
    private   func registerCell (){
        catagoryCollectionView.register(UINib(nibName: CatagoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CatagoryCollectionViewCell.identifier)
       
        popularCollectionView.register(UINib(nibName: PopularCollectionViewCell.identifierP, bundle: nil), forCellWithReuseIdentifier: PopularCollectionViewCell.identifierP)
       
        specialsCollectionView.register(UINib(nibName: SpecialCollectionViewCell.identifer, bundle: nil), forCellWithReuseIdentifier: SpecialCollectionViewCell.identifer)
    }

 
}
extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case catagoryCollectionView :
            return catagories.count
        case popularCollectionView :
            return populars.count
        case specialsCollectionView :
            return specials.count
        default: return 0
            
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        switch collectionView {
        case catagoryCollectionView :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatagoryCollectionViewCell.identifier, for: indexPath) as! CatagoryCollectionViewCell
            cell.setup(catagory: catagories[indexPath.row])
            return cell
        case popularCollectionView :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.identifierP, for: indexPath) as! PopularCollectionViewCell
            cell.setUP(dish: populars[indexPath.row])
            return cell
        case specialsCollectionView :
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SpecialCollectionViewCell.identifer, for: indexPath) as! SpecialCollectionViewCell
            cell.setUp(dish: specials[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == catagoryCollectionView{
            let controller = DishListViewController.instantiate()
            controller.catagory = catagories[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }else {
            let controller = DishDetailsViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row]: specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: ((collectionView.frame.width)/2), height: 300)
    }
}
