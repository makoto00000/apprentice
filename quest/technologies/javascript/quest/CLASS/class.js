class Playlist {
  songs = []
  constructor(playlistName) {
    this.playlistName = playlistName
  }
  addSong(song) {
    this.songs.push(song)
  }
  removeSong(song) {
    let index = this.songs.indexOf(song)
    this.songs.splice(index, 1)
  }
  play() {
    return `再生中: ${this.songs[0]}`
  }
}

let myPlaylist = new Playlist('お気に入りリスト');
myPlaylist.addSong('Lemon');
myPlaylist.addSong('花束');
console.log(myPlaylist.play()); // 再生中: Lemon
myPlaylist.removeSong('Lemon');
console.log(myPlaylist.play()); // 再生中：花束
