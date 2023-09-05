//
//  CustomTabBarViewController.swift
//  UI Tests
//
//  Created by Jotno on 9/5/23.
//

import UIKit

class CustomTabBarViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tabBar: UIView!
    @IBOutlet var selectedStateViews: [UIView]!
    
    @IBOutlet weak var designerLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var attentionLabel: UILabel!
    
    var controller: UIViewController?
    
    var main: UIStoryboard{
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        handleSelectedViews(current: 0)
        designerLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.semibold)
        
//      let controller =    main.instantiateViewController(withIdentifier: String(describing: DesignViewController.self))
//        addChild(controller)
//        containerView.addSubview(controller.view)
//        controller.view.translatesAutoresizingMaskIntoConstraints = false
//        controller.view.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
//        controller.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
//        controller.view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
//        controller.view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        
        loadControllerView(with: DesignViewController.self)
        
        
        
    }
    
    
    func handleSelectedViews(current state: Int){
        //multiple selected states
        //identify tags
        //selected state show otherwise hide
        
        
        selectedStateViews.forEach{selectedViews in
            //print(selectedViews.tag)
            selectedViews.isHidden = (selectedViews.tag != state)
        }
    }
    
    func loadControllerView(with viewController : Any){
        controller =    main.instantiateViewController(withIdentifier: String(describing: viewController))
          addChild(controller!)
          containerView.addSubview(controller!.view)
          controller!.view.translatesAutoresizingMaskIntoConstraints = false
          controller!.view.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
          controller!.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
          controller!.view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
          controller!.view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
    }
    

    @IBAction func tabPressed(_ sender: UIButton) {
        let tag = sender.tag
        print(tag)
        handleSelectedViews(current: tag)
        
        switch tag {
        case 0 :
            loadControllerView(with: DesignViewController.self)
            
            designerLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.semibold)
            categoryLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
            attentionLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
        case 1 :
            loadControllerView(with: CategoryViewController.self)
            designerLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
            categoryLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.semibold)
            attentionLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
        case 2 :
            loadControllerView(with: AttentionViewController.self)
            designerLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
            categoryLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
            attentionLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.semibold)
        default:
            print("Error")
        }
    }
    
    

}
