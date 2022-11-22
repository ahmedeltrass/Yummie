//
//  OnboardingViewController.swift
//  Ymmuie
//
//  Created by Ahmed Eltrass on 20/11/2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    var slides :[OnboardingSlide] = []
    var controlPage = 0 {
        didSet {
            pageControl.currentPage = controlPage
            if controlPage == slides.count - 1 {
                nextBtn.setTitle("Get Start", for: .normal)
            }else{
                nextBtn.setTitle("Next", for: .normal)
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = [
            OnboardingSlide(title: "Delicious Dishes", descripition: "Experience a variety of amazing dishes from different cultures around the world.", imageViwe: #imageLiteral(resourceName: "slide2")),
            OnboardingSlide(title: "World-Class Chefs", descripition: "Our dishes are prepared by only the best.", imageViwe: #imageLiteral(resourceName: "slide1")),
            OnboardingSlide(title: "Instant World-Wide Delivery", descripition: "Your orders will be delivered instantly irrespective of your location around the world.", imageViwe: #imageLiteral(resourceName: "slide3")),
            OnboardingSlide(title: "Instant World-Wide Delivery", descripition: "Your orders will be delivered instantly irrespective of your location around the world.", imageViwe: #imageLiteral(resourceName: "slide3"))
           
        ]
        pageControl.numberOfPages = slides.count
    }
    

    
    @IBAction func nextBtnClick(_ sender: UIButton) {
        if controlPage == slides.count - 1
        {
            let controller = storyboard?.instantiateViewController(withIdentifier:"HomeNC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true, completion: nil)

        }
        else{
            controlPage += 1
            let indexPath = IndexPath(item: controlPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)

        }
    }
    
}
extension OnboardingViewController : UICollectionViewDelegate ,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IdentiferOnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
        cell.setUP(slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = collectionView.frame.width
        controlPage = Int (scrollView.contentOffset.x / width)
        
    }
}
