import UIKit
import AVFoundation

var soundURI: URL?
var audioPlayer = AVAudioPlayer()
var bgSoundURI: URL?
var bgAudioPlayer = AVAudioPlayer()

extension UIView {
    
    func playSound(file: String, fileExtension: String, isLoop: Bool = false){
        soundURI = URL(fileURLWithPath: Bundle.main.path(forResource: file, ofType: fileExtension)!)
        do {
            guard let uri = soundURI else {return}
            audioPlayer = try AVAudioPlayer(contentsOf: uri)
            audioPlayer.play()
        } catch {
            print("something went wrong")
        }
    }
    
    func buttonClicked() {
        self.playSound(file: "Finger-snap", fileExtension: "mp3")
    }
    
    func pouringWaterHot() {
        self.playSound(file: "pourHot", fileExtension: "wav")
    }
    
    func whipSound(){
        self.playSound(file: "whip", fileExtension: "mp3")
    }
    
    func putSound() {
        self.playSound(file: "put", fileExtension: "wav")
    }
        
    func enjoyYourJapanese() {
        let utterance = AVSpeechUtterance(string: "Enjoy your Japanese Manual Brew!")
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.5

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    func enjoyYourHotV60() {
        let utterance = AVSpeechUtterance(string: "Enjoy your Hot V60 Manual Brew!")
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.5

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    func playBgSound(){
        bgSoundURI = URL(fileURLWithPath: Bundle.main.path(forResource: "bgMusic", ofType: "mp3")!)
        do {
            guard let uri = bgSoundURI else {return}
            bgAudioPlayer = try AVAudioPlayer(contentsOf: uri)
            bgAudioPlayer.numberOfLoops = -1
            bgAudioPlayer.play()
            bgAudioPlayer.volume = 1
        } catch {
            print("error sound")
        }
    }
    
    func stopBgSound() {
        bgAudioPlayer.stop()
    }
}
