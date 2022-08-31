//
//  Song.swift
//  FavMov
//
//  Created by s.sivakarthi on 17/08/2022.
//

import Foundation

struct Song {
    
    let track: String
    let album: String
    let cover: String
    
    static func creatSong() -> [Song] {
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for i in 0..<tracks.count{
            let song = Song(track: tracks[i], album: albums[i], cover: covers[i])
            songs.append(song)
        }
        
        return songs 
        
    }
    
}
