//
//  Parser.swift
//  Movies2
//
//  Created by Sarah Zaman on 12/5/20.
//  Copyright © 2020 Sarah Zaman. All rights reserved.
//


import Foundation

struct Parser {
    
    func parse(comp: @escaping ([Result])->()) {
        let api = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=4e0be2c22f7268edffde97481d49064a&language=en-us&page=1")
        
        URLSession.shared.dataTask(with: api!){
            data,response,error in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            do {
                let result = try JSONDecoder().decode(webMovie.self, from: data!)
                print(result)
                comp(result.results)
            }
            catch{
                
            }
        }.resume()
    }
}
