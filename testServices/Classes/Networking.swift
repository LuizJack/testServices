//
//  Networking.swift
//  testServices
//
//  Created by Luiz Camargo on 28/05/23.
//
import Foundation

class Networking {
    
    func fetchData() {
        guard let url = URL(string: "https://api.github.com/users/octocat/repos") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            if let data = data {
                // Procesa los datos recibidos (parseo JSON, etc.)
                // ...
                
                if let jsonArray = try? JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                    // Ejemplo de impresión del nombre de los repositorios
                    for json in jsonArray {
                        if let name = json["name"] as? String {
                            print("Nombre del repositorio: \(name)")
                        }
                    }
                }
            }
        }
        
        task.resume()
    }
}
