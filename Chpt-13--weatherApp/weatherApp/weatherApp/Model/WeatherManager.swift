//
//  File.swift
//  weatherApp
//
//  Created by Treydin Winward on 7/1/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import Foundation
import CoreLocation


protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    // make sure you have an https url;
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&appid=<apikey>&units=imperial"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String) {
        // 1. create a url
        if let url = URL(string: urlString) {
            // 2. create a url session
            let session = URLSession(configuration: .default)
            // 3. give the session a task to complete
            let task = session.dataTask(with: url) { (data, response, error ) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return // data does not eist
                }
                
                if let safeData = data {
                    if let weather = self.parseJSON(safeData){
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            // 4. start the task
            task.resume()
        }
    }
    
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temperature = decodedData.main.temp
            let name = decodedData.name

//            let description = decodedData.weather[0].description

            let weather = WeatherModel(condition: id, cityName: name, temp: temperature)
            
            print(weather.temperatureString)
            return weather
        } catch {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
    func fetchWeather(lattitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let urlString = "\(weatherURL)&lat=\(lattitude)&lon=\(longitude)"
        performRequest(with: urlString)
    }
    
    
    
   
}
