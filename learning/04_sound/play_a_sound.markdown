---
.. title: Load and play sound
.. type: howto
---


Loading and playing sound is very simple. You simply initialize an ofSoundPlayer, load the sound file, and play the sound file.

Before starting save your sound file in your bin/data folder.

![Screenshot of Example)](screenshot.png)

### in the header file (.h)

Initialize an ofSoundPlayer.


	ofSoundPlayer 	mySound;


### in the implementation file (.cpp)


Load your sound file in the setup method. You can load a variety of different sound files -- .mpr, .wav, etc. 

	void ofApp:setup(){
		mySound.load("fileName.mp3");
	}

Next, play the sound file. If you add this to the setup method, the sound will play once right when you start your app.  You can also set your sound to loop if you want it to play continuously. 

	void ofApp:setup(){
		mySound.load("fileName.mp3");
		mySound.play();
	}


You can also trigger the play function for mousepress, keys, mousedrag, etc. For example, 

	void testApp::keyPressed  (int key){
		if(key == "p"){
			mySound.play();
		}
	}

###Additional Resources
For more information on how to manipulate sound files using OF in the [sound chapter](http://openframeworks.cc/ofBook/chapters/sound.html) of the OF book.  
