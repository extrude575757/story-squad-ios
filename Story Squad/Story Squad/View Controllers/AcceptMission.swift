//
//  AcceptMission.swift
//  Story Squad
//
//  Created by Jonalynn Masters on 3/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
import CoreData

class AcceptMission: UIViewController {
   
    // MARK: - Properties
    
    var networkingController: NetworkingController?
    var parentUser: Parent?
    var childUser: Child?
    
    // MARK: - Outlets
    
    @IBOutlet weak var acceptMissionCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       updateViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func updateViews() {
        acceptMissionCollectionView.delegate = self
        acceptMissionCollectionView.dataSource = self
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AcceptMission: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, NSFetchedResultsControllerDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
           //swiftlint:disable force_cast
        let acceptMissionCell = acceptMissionCollectionView.dequeueReusableCell(withReuseIdentifier: "ReadCell", for: indexPath) as! ReadCell
        
        return acceptMissionCell
            
        } else if indexPath.item == 1 {
           //swiftlint:disable force_cast
        let adventurePassportCell = acceptMissionCollectionView.dequeueReusableCell(withReuseIdentifier: "WriteCell", for: indexPath) as! WriteCell
           
        return adventurePassportCell
            
        } else {
           //swiftlint:disable force_cast
        let trophyRoomCell = acceptMissionCollectionView.dequeueReusableCell(withReuseIdentifier: "DrawCell", for: indexPath) as! DrawCell
           
        return trophyRoomCell
            
        }
    }
        //swiftlint:disable force_cast
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //performSegue(withIdentifier: "ChildProfileFromDashboardSegue", sender: self)
    }
}
