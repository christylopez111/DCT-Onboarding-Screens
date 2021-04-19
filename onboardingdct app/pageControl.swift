//
//  pageControl.swift
//  onboardingdct app
//
//  Created by Don Dominic Mathew on 19/04/2021.
//

import Foundation
import UIKit
import SwiftUI


struct  PageControl: UIViewRepresentable{
    
    var numberOfpages: Int
    
    @Binding var currentPageIndex: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfpages
        control.currentPageIndicatorTintColor = UIColor.brown
        control.pageIndicatorTintColor = UIColor.black
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPageIndex
    }
}
