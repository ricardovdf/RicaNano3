//
//  ViewController.swift
//  RicaNano3
//
//  Created by Ricardo V Del Frari on 17/11/2017.
//  Copyright © 2017 Ricardo V Del Frari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //Hide Status Bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //IBOutlets for
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var mainInfoLabel: UILabel!
    @IBOutlet weak var photosCollectionView: UICollectionView!
    @IBOutlet weak var emojiCollectionView: UICollectionView!
    
    //Create an instance with all the informations about Francesco
    var francescoData = FrancescoData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainInfoLabel.text = "Hello! I am Francesco. Choose an item to know more about me! "
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView.tag == 2 {
            //With Singleton
            return FrancescoData.shared.francescoPhotos.count
        }else if collectionView.tag == 1 {
//            return emojis.count
            return francescoData.testEmojis.count
        }else {
            return francescoData.importantDates.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Set up Photos Collection View
        if collectionView.tag == 2 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photosCollectionCell", for: indexPath) as! PhotosCollectionViewCell
            
            cell.photoImageView.image = francescoData.francescoPhotos[indexPath.row]
            cell.layer.cornerRadius = 10
            
            return cell
            
            //Set up Emoji Facts Collection View
        }else if collectionView.tag == 1{
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "emojiCollectionCell", for: indexPath) as! EmojiInfoCollectionViewCell
            
            let emoji = francescoData.testEmojis[indexPath.row]
            cell.emojiLabel.text = emoji.emoji
            cell.sentences = emoji.sentences
            
            return cell
            
            //Set up Calendar Collection View
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
                return
            }
            
            mainInfoLabel.text = cell.event
            
        } else if collectionView.tag == 1 {
            
            guard let cell = collectionView.cellForItem(at: indexPath) as? EmojiInfoCollectionViewCell else {
                return
            }
            
            mainInfoLabel.text = cell.sentences[Int(arc4random_uniform(UInt32(cell.sentences.count)))]

        }else {
            
            mainInfoLabel.text = "A picture is worth a thousand words.."
        }
        
        collectionView.deselectItem(at: indexPath, animated: true)
        
    }
}

