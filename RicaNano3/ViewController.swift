//
//  ViewController.swift
//  RicaNano3
//
//  Created by Ricardo V Del Frari on 17/11/2017.
//  Copyright © 2017 Ricardo V Del Frari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var mainInfoLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var photosCollectionView: UICollectionView!
    @IBOutlet weak var emojiCollectionView: UICollectionView!
    
    var francescoData = FrancescoData()
    
    var francescoPhotos = [#imageLiteral(resourceName: "Francesco 01"),#imageLiteral(resourceName: "Francesco 02"),#imageLiteral(resourceName: "Francesco 03"),#imageLiteral(resourceName: "Francesco 04"),#imageLiteral(resourceName: "Francesco 05"),#imageLiteral(resourceName: "Francesco 06"),#imageLiteral(resourceName: "Francesco 07")]
    
    var emojis = ["🐶","😡","🤓","❤️","🏎","🇮🇹","🍕","⚽️","📱"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView.tag == 2 {
            return francescoPhotos.count
        }else if collectionView.tag == 1 {
//            return emojis.count
            return francescoData.testEmojis.count
        }else {
            return francescoData.importantDates.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photosCollectionCell", for: indexPath) as! PhotosCollectionViewCell
            cell.photoImageView.image = francescoPhotos[indexPath.row]
            
            return cell
        }else if collectionView.tag == 1{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "emojiCollectionCell", for: indexPath) as! EmojiInfoCollectionViewCell
            
            let emoji = francescoData.testEmojis[indexPath.row]
            cell.emojiLabel.text = emoji.emoji
            cell.sentences = emoji.sentences
//            cell.emojiLabel.text = emojis[indexPath.row]
            
            return cell
        }else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dateCollectionCell", for: indexPath) as! DatesCollectionViewCell
            
            let date = francescoData.importantDates[indexPath.row]
            
            cell.dayLabel.text = String(date.day)
            cell.monthLabel.text = date.month
            cell.yearLabel.text = String(date.year)
            cell.event = date.event
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView.tag == 0 {
        
            guard let cell = collectionView.cellForItem(at: indexPath) as? DatesCollectionViewCell else {
                // couldn't get the cell for some reason
                return
            }
            
            mainInfoLabel.text = cell.event
            
        } else {
            
            guard let cell = collectionView.cellForItem(at: indexPath) as? EmojiInfoCollectionViewCell else {
                return
            }
            
            mainInfoLabel.text = cell.sentences[Int(arc4random_uniform(UInt32(cell.sentences.count)))]
//            print(cell.sentences.count)
//            arc
//            Int(arc4random(UInt32(cell.sentences.count)))
        }
    }

    
}

