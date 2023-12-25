//
//  NewsViewModel.swift
//  News
//
//  Created by Ahmet Yavaş on 25.12.2023.
//

import Foundation

struct NewsTableViewModel {
    
    let newsList : [News]
    
    func numberOfRowsInSection() -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath(_ index : Int ) -> NewsView {
        
        let news = self.newsList[index]
        return NewsView(newss: news)
    }
    
}

struct NewsView {
    
    let newss : News
    
    var title : String {
        return self.newss.title
    }
    
    var story : String {
        return self.newss.story
    }
    
}

