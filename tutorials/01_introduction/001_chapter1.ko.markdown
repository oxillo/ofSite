---
.. author: Jeff Crouse <jeff@crouse.cc>
.. title: 오픈프레임웍스 튜토리얼 - 시작하기
.. summary: 이 챕터에서는 프로젝트를 생성 및 실행윈도우 크기를 지정, 기본 도형을 그리기 등과 같은 오픈프레임웍스를 처음 시작하는 기초적인 단계들을 다룹니다.
.. date: 2013/09/01 10:00:00
.. author_site: http://www.jeffcrouse.info
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

## Your First Look inside oF

여기서는, 여러분이 [오픈프레임웍스 다운및 셋업가이드](/ko/download/)를 따라했다고 가정합니다. 우선 여러분이 해야할 일은 압축된 오픈프레임웍스를 여러분이 접근하기 쉬운 폴더에 압축을 푸는 것입니다. 개인적으로, 저는 폴더를 내문서에 위치시키고 사이드바에 바로가기를 만들어둡니다. 이렇게 말이죠 :

![IMG](/tutorials/01_introduction/001_chapter1/shortcut.png)

어디에 위치해두건, 폴더를 열어보면, 아래 같은 폴더가 보일 것입니다:

![IMG](/tutorials/01_introduction/001_chapter1/structure1.png)

그렇다면, 이 폴더들은 무엇일까요?

- **addons**: 오픈프레임웍스 "core"는 가장 핵심적인 기능들만 담겨있습니다. addon 폴더내의 것들은 어플리케이션 조각들로 추가될 수 있습니다. 이렇게 포함 되는 것들은 XML파일을 읽는다던가, 3D 모델을 불러오거나, 또는 컴퓨터 비전 라이브러리인 openCV같은 것들입니다.IMG]

- **apps**: 이 폴더는 여러분이 만든 어플리케이션이 저장될 곳입니다. 또한 여러분이 주로 작업하는 곳이죠. "apps"폴더내에 "myApps"라는 폴더가 있는것을 보실 수 있습니다.

- **examples**: 이 폴더는 예제 어플리케이션들이 담겨있으며, 오픈프레임웍스로 무엇을 할수 있는지 살펴볼 수 있습니다.

- **libs**: 이 폴더는 오픈프레임웍스가 ofCore로 사용하는 라이브러리들이 담겨있습니다.


### 간략히 예제 살펴보기

"examples"폴더는 오픈프레임웍스로 할수 있는 것들을 보여주는 프로젝트들이 담겨있습니다. 여러분이 직접 앱을 만들기 전에 이 예제들을 살펴보는것은 좋은 생각입니다. 이 과정은 여러분이 사용하는 IDE에 따라 약간 다릅니다.

#### XCode

examples/graphicsExample폴더로 이동하여 "graphicsExample.xcodeproj" 파일을 더블릭합니다.

![IMG](/tutorials/01_introduction/001_chapter1/graphicsExample01.png)

아마 아래와 같은 윈도우가 보일것입니다:

![IMG](/tutorials/01_introduction/001_chapter1/raphicsExample02.png)

IMPORTANT: 메뉴 바에서 어떤 버전을 사용하고 있는지 살펴보세요: Xcode > About Xcode 에서 보실수 있습니다. 사용하고 있는 Xcode가 4.0 이하 버전이라면, 윈도우는 상당히 다를것이지만, 혼란스러워하지 마세요 -- 대응되는 인터페이스 기능들은 충분히 쉽게 찾을 수 있습니다.

화면의 좌측 상단에 커다란 "Run" 버튼이 있을것입니다. Xcode 3에서는, "Build & Run" 이라고 불렸었습니다. 이 버튼을 눌러  현재 활성화된 타겟으로 실행할 수 있습니다. 하지만 여러분도 곧 알아차리시겠지만, 기본적으로, 활성화된 타겟은 openFrameworks라이브러리입니다. 이럴 경우 말그대로, 아무일도 발생하지 않습니다. 우리가 원하는것은 "graphicsExample" 프로그램을 실행하는 것이죠. 따라서 아래와 같이 보인다면:

![IMG](/tutorials/01_introduction/001_chapter1/target-bad.png)

클릭하여 아래로 드래그하면 이와같이 보입니다:

![IMG](/tutorials/01_introduction/001_chapter1/target-good.png)

이제 "Run" 버튼을 클릭하면, 이 화면이 보일겁니다:

![IMG](/tutorials/01_introduction/001_chapter1/graphicsExample03.png)

원과 오렌지색 원은 분명히 크기가 일정하게 변할것이고, 사각형들은 랜덤하게 그려질것입니다. 위에 위치한 빨간색 바는 페이드아웃되고, 선들은 부드럽게 변합니다. ESC나 Apple+Q를 눌러 프로그램을 종료합니다.

이제 다른 예제들을 열어서 실행해보세요.

### QtCreator 

### command-line

사실 오픈프레임웍스 예제를 빌드하기 위해 꼭 IDE가 필요한것은 아닙니다. 모든 도구는 커맨드라인 모드에서도 실행할 수 있기 때문이죠. 예제를 빌드하기 위해 터미널 윈도우를 열고, 오픈프레임웍스가 있는 폴더로 이동합니다. 그곳에서 examples 디렉토리로 들어갑니다. 예를 들어 "graphics Example"라면 아래의 명령을 사용하시면 됩니다:

```bash
cd examples/graphics/graphicsExample
```
코드를 빌드하고 실행하기 위해 아래의 명령을 사용합니다.

```bash
$ make
$ make run
```

명령이 실행되면 마침내 위에서 보았던 똑같은 화면이 보여질 것입니다.

![IMG](/tutorials/01_introduction/001_chapter1/graphicsExample03.png)

원과 오렌지색 원은 분명히 크기가 일정하게 변할것이고, 사각형들은 랜덤하게 그려질것입니다. 위에 위치한 빨간색 바는 페이드아웃되고, 선들은 부드럽게 변합니다. ESC나 Apple+Q를 눌러 프로그램을 종료합니다.

만약 아래 명령을 사용하면, 모든 빌드는 제거되고 디렉토리가 깔끔하게 비워질 것입니다. 


```bash
$ make clean
```

이는 코드를 변경하고, 새로 빌드하는 것이 예전에 컴파일됐던 파트들을 다시 사용하지 않게 할 때에 유용합니다.

### 여러분의 첫 프로젝트 생성하기

오픈프레임웍스 0072부터, 새로운 오픈프레임웍스 프로젝트를 생성시켜주는 [새로운 프로젝트 생성기](/ko/tutorials/01_introduction/002_projectgenerator/)가 제공되며, 프로젝트 생성 뿐만 아니라 애드온도 같이 만들어줍니다. 해당 튜토리얼에 따라 새로운 `MyFirstProject`프로젝트를 생성하십시오. 준비가 다 되면, 다시 돌아와서 계속 진행해주시기 바랍니다.


### 코드 작성

좋습니다, 이제 프로젝트를 어떻게 생성하는지 알았으니, 프로젝트에서 코드를 작성할 시간입니다. 앞으로의 몇 섹션에서는 오픈프레임웍스 어플리케이션의 구조와 간단한 draw, setup 함수를 소개할 것입니다.

#### ofApp.cpp

자 마침내 코드를 살펴보기 시작할 시간입니다. 우선 해야할 일은 Xcode에서 프로젝트를 여는것입니다. 여러분이 앞 섹션에의 "myApps"작업공간에 있는 "myFirstProject" 로 작업한다고 가정하고 진행하겠습니다. 열어서, *네비게이터 뷰*(XCode의 좌측 끝 패널)의 작은 삼각형을 클릭해보세요. 아래와 같이요:

![IMG](expand01.gif)

- Click the disclosure triangle next to "MyFirstProject"
- Click the disclosure triangle next to "src"
- Click on ofApp.cpp

ofApp.cpp는 앞으로 살펴볼 몇 튜토리얼에서 여러분이 친해져야할 녀석입니다. *편집기 윈도우*에는, 이렇게 시작하는 뭔가가 보일겁니다:

```cpp
#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){

}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}
```

자, 뭐가 어떻게 되고 있는거죠?

다양한 측면에서, ofApp.cpp는 소개란에서 작성했던 hello.cpp와 같습니다. 이 파일은 `C++` 소스코드를 담는 평문 텍스트 파일입니다. 다른점이 있다면 우리는 이것을 IDE를 통해 편집하고 있으므로, 보시다시피 아주 훌륭하게 문법 강조(syntax highlighting)가 적용되어 있어 코드를 쉽게 이해할 수 있습니다. 또한 역시 컴파일 및 실행을 쉽게 할 수 있죠.

아주 기초적인 레벨에서, 여러분이 보고 계시는것은 많은 빈 함수들입니다. [함수](https://en.wikipedia.org/wiki/Function_(computer_science))는 보다 큰 프로그램을 만들어가는 명령의 집합입니다. 위의 작은 코드조각들을 보면, 4개의 함수가 있습니다: setup, update, draw 그리고 keyPressed입니다. 각 함수는 중괄호({})로 감싸져 있습니다. 중괄호 내에 주로 작성되는 내용들은 명령들(변수에 값을 할당하거나, 반복(loop)들, 그리고 다른 함수의 호출 등등)이며, 이것들이 함수를 완성합니다.

소개 부분에서 "소프트웨어 프레임워크가 뭔가요" 라는 질문으로 돌아가서, 영화 프로덕션 회사로 비유하는것은 이지점에서 매우 유용합니다. ofApp.cpp에서 여러분이 보시는것은 오픈프레임웍스가 어떻게 필요한 모든것들을 제공하느냐 인것이죠. 이제 여러분의 역할은 무엇을 할것인지 결정하는겁니다. ofApp.cpp내의 함수안에 코드로 작성하면 되는겁니다.

이러한 함수들은 프로그램이 실행되는동안 다른 지점에서 오픈프레임웍스에 의해 호출됩니다. 이중 몇개를 좀더 살펴봅시다.

`setup();` 이 함수는 프로그램 윈도우가 열리기 전에 가장 처음에 호출(중괄호 내에 작성된 모든 코드들이) 됩니다. 예를 들어 윈도우의 크기를 지정하고 싶다고 해봅시다. 아마도 여러분은 윈도우가 실제로 열리기전에 이러한 작업이 수행되길 원하기 때문에, setup이 바로 적절한 곳입니다.


`update(), draw()` setup함수가 실행된 이후, update와 draw함수가 시작되어 프로그램이 종료될때까지 반복됩니다. 즉 setup()이 동작한 이후, update()가 돌고, draw()가 돌고, update()가 돌고, draw()가 돌고.. 이런식입니다. 그리고 기본적으로, 이러한 과정들은 여러분의 컴퓨터가 처리할 수 있는 한도 내에서 가능한 한 빠르게 수행됩니다. draw()가 윈도우안에 뭔가를 실제로 그리는데 사용된다면, update()는 일반적으로 프로그램의 상태를 업데이트 하는데에 사용됩니다. (예: 변수의 값을 변경하기)

`keyPressed(), keyReleased(), mouseMoved(), mouseDragged(), mousePressed(), mouseReleased(), windowResized(), gotMessage(), dragEvent()` 앞의 세 함수들과 다르게, 이 함수들은 사용자가 뭔가를 수행할 때에만 호출됩니다. 언제일지 추측할수 있으시겠죠?

읽은것으로 충분하니, 이제 한번 직접 실행에 옮겨봅시다.

#### Making a Mark

이제 우리는 ofCircle함수를 이용해 우리의 회색 윈도우안에 간단한 원을 하나 그려보겠습니다. "ofCircle(200, 200, 60);"을 draw()함수 내의 빈 라인에 입력해봅시다. draw()함수는 아래와 같을것입니다:

```cpp
void ofApp::draw(){
    ofDrawCircle(200, 300, 60);
}
```

라인의 끝에 세미콜론(;)이 있다는것에 유의하세요. 모든 함수 호출은 반드시 세미콜론으로 끝나야 합니다. 부가적으로, 함수이름은 대소문자를 구별하므로, OfSetColor 또는 OFsetcolor 라고 작성하면 동작하지 않습니다. 반드시 ofsetColor여야 합니다.

이제 프로그램을 실행하면, 이런 화면이 보일것입니다:

![IMG](/tutorials/01_introduction/001_chapter1/MyFirstProject01.png)

축하드립니다! 화면에 뭔가를 띄웠네요! 이제부터는 내리막길만 남았습니다.

그런데, 우리가 방금 뭘 한거죠?

[ofCircle](/ko/documentation/graphics/ofGraphics/#show_ofDrawCircle)은 오픈프레임웍스에서 제공하는 함수입니다('of' 로 시작하죠?). draw 함수내에 여러분이 원하는 만큼 몇번이고 ofCircle을 실행할 수 있습니다. 'ofCircle' 뒤의 괄호 안에 있는 숫자들은 [인자](https://en.wikipedia.org/wiki/Parameter_(computer_programming))라고 합니다. 이것들은 함수가 하는 어떻게 일할지를 정확히 결정합니다. 함수는 이렇게 응답합니다: "좋아, 원을 그리길 원하는군, 그런데 어디에? 그리고 얼마나 크게?". 함수는 어떠한 갯수의 인자라도 받을 수 있으며, 항상 콤마에 의해 구별됩니다. ofCirlce은 3개의 인자를 받습니다: x좌표, y좌표, 그리고 지름입니다. 이 인자들에 대해서 여러분이 알아두어야 할 몇가지 사항들이 있습니다:

- 오픈프레임웍스 내에서 사용되는 단위는 픽셀입니다. 우리의 원의 지름을 60으로 하라고 말하면, 원은 최종으로 PI*60^2^ 픽셀을 취하게 됩니다.
- 여기서는 좌표가 원의 중심을 뜻하지만, 다른 도형들(예를 들어 사각형의 경우)은 좌측 상단 코너를 뜻합니다.
- 좌표시스템의 기준은 윈도우의 좌측 상단입니다. 따라서 우리의 원은 윈도우의 좌측 으로부터 200픽셀, 상단으로부터 300픽셀만큼 떨어져 그려집니다.

여러분이 이것에 관해 여기서 읽지 않더라도, ofCircle에 관한 정보는 [오픈프레임웍스 도큐먼트](/ko/documentation/) 에서도 찾아보실 수 있습니다. 앞으로 여러분이 더 많이 사용할 것입니다.

#### 색 추가하기

여러분의 원은 훌륭하지만, 좀 지루합니다. 우리의 어플리케이션에 색을 사용하면 어떨까요? 이렇게 하기 위해, [ofSetColor](/ko/documentation/graphics/ofGraphics/#show_ofSetColor)함수를 사용할 필요가 있습니다. ofCircle라인 바로 위에 `ofSetColor(255, 0, 255);` 라고 추가해봅시다. draw함수는 이와 같을 것입니다:

```cpp
void ofApp::draw(){
    ofSetColor(255, 0, 255);
    ofDrawCircle(200, 300, 60);
}
```

이제 어플리케이션을 실행해봅시다.

![IMG](/tutorials/01_introduction/001_chapter1/MyFirstProject02.png)

ofCircle과 비슷하게, ofSetColor함수 역시 3개의 인자를 취합니다. 하지만 숫자들은 아주 다른 의미를 가집니다. [ofSetColor](/ko/documentation/graphics/ofGraphics/#show_ofSetColor)문서를 살펴보시면, 이 인자들은 사용하기 위한 색의 red, green, blue값을 의미하며, 각각 0-255사이의 범위를 갖는다는 것을 알 수 있습니다. red, green, blue는 [RGB 색모델 혹은 색공간](https://en.wikipedia.org/w/index.php?title=RGB_color_model)을 구성합니다. 따라서 우리가 `ofSetColor(255, 0, 255);` 라고 입력하면, "추후에 공지를 하기전까지는, 그려지는 모든것은 100%의 red, 0의 green, 100%의 blue로 칠해라" 라고 말하는 것입니다. 

**TIP**: 값을 변경해서 다른 색이 되도록 해보세요.

마지막으로 주의할검은 이것입니다: 우리가 "ofSetColor" 를 호출할때, 이는 마치 박스에서 크레용을 하나 집는것과 같습니다. 이 함수의 호출 이후부터 모든것은(이 코드의 아래), ofSetColor가 다시 호출될 때까지 여기서 지정한 색을 사용해서 그려집니다. 따라서 다른 원을 그리고 싶다면, 그냥 ofCircle함수를 다시 호출하면 됩니다:

```cpp
void ofApp::draw(){
    ofSetColor(255, 0, 255);
    ofDrawCircle(200, 300, 60);

    ofDrawCircle(500, 500, 100);
}
```

하지만 만약 저 원을 다른색으로 하고싶다면, ofSetcolor를 다시 사용하면 됩니다:

```cpp
void ofApp::draw(){
    ofSetColor(255, 0, 255);
    ofDrawCircle(200, 300, 60);

    ofSetColor(0, 255, 255);
    ofDrawCircle(500, 500, 100);
}
```

![IMG](MyFirstProject03.png)

#### 어떤 도형이든 여러분이 다룰 수 있습니다.

Of course, oF can draw more than circles.

[ofDrawRectangle](/documentation/graphics/ofGraphics/show_ofDrawRectangle)은 삼각형을 그립니다. 인자들은 세 점의 좌표입니다: (x1, y1, x2, y2, x3, y3)
[ofDrawRectRounded](/documentation/graphics/ofGraphics/#show_ofDrawRectRounded)는 모서리가 둥근 사각형을 그립니다. 인자들은 다음과 같습니다: (x, y, width, height, radius of rounded corders)
[ofDrawTriangle](/documentation/graphics/ofGraphics/#show_ofDrawTriangle)은 삼각형을 그립니다. 인자들은 세 점의 좌표입니다: (x1, y1, x2, y2, x3, y3)
[ofDrawLine](/documentation/graphics/ofGraphics/#show_ofDrawLine)은 선을 그립니다. 인자들은 시작점과 끝점의 좌표입니다: (x1, y1, x2, y2)
[ofDrawEllipse](/documentation/graphics/ofGraphics/#show_ofDrawEllipse)의 인자들은 다음과 같습니다: (x, y, width, height)
[ofDrawCurve](/documentation/graphics/ofGraphics.html#show_ofDrawCurve)는 점(x1, y1)부터 점(x2, y2)으로의 커브를 그립니다. 커브의 모양은 두개의 컨트롤 포인트 (x0, y0)와 (x3, y3)으로 결정됩니다.

**NOTE**: 컨트롤 포인트는 까다로울 수 있습니다. 여러분이 포토샵이나 일러스트에서 펜툴을 사용해본 적이 있으시다면, 아마 이것들에 대해서 이해할 수 있을것입니다. 만약 그렇지 않으시다면, [이 튜토리얼](http://www.actionscript.org/resources/articles/172/1/Understanding-curves-and-control-point-placement/Page1.html)을 살펴보십시오. 이것은 액션스크립트에 관한 내용입니다만, 커브와 컨트롤 포인트의 컨셉을 잘 소개하고 있습니다.

**TIP**: "MyFirstWorkspace" 작업공간에서 세대의 다른 프로젝트를 만들어보세요. 각각 다른 위치에, 다른 색을 사용해서 다른 도형을 그려보세요.

#### 움직임 추가하기

정적인 도형을 그리는것은 훌륭합니다만, 이 도형이 화면에서 움직이게 하고 싶다면 어떨까요?

앞에서 언급했듯이 draw()함수는 프로그램이 시작된 이후 반복적으로 호출된다고 했습니다. 이것은 아주 중요한데, 오픈프레임웍스가 애니메이션을 구현하는 방법이기 때문입니다. 이는 플래시나 스탑모션 애니메션과 같이 "스테이지"가 있고 위지를 재-지정해줘야 하는것에 익숙하신 분들께는 약간 직관적이지 못할수도 있습니다. 이러한 방법은 오픈프레임웍스(혹은 대부분의 컴퓨터 애니메이션)에서 사용하는 방법이 *아닙니다*. 실제로, 오픈프레임웍스는 보다 전통적인(고전적인 디즈니/밤비 애니메이션) 애니메이션 처럼, 매 한 "프레임"을 완벽하게 다시 그리는 방법을 사용합니다. 따라서, 실제로, 여러분이 위의 프로그램을 실행하여 보라색 원을 띄우면, 여러분이 실제로 보이는 원은 방복적으로 한번 그려지고 지워지며(한 프레임), 다시 그려지고 지워집니다. 이 과정은 정말 순식간이어서 마치 그냥 움직이지 않고 제자리에 있는것처럼 보여집니다.

위의 예제에서, 우리가 원을 그릴때, ofDrawCircle함수에 원을 윈도우의 어느 위치에에 그릴게 할것인지 두 숫자를 사용했습니다. 이 방법에 따르자면, 만약 원을 움직이게 할려면, 시간이 경과할때마다 이 숫자들을 변경해주어야 합니다. 처음 draw()출시에, 원은 (200, 300)에 그려지지만, 그 다음에는, 1픽셀만큼 우측으로 이동해 (201, 300)으로, 그 다음에는 (202, 300). 이런식으로 말이죠.

`C++`에서, 그리고 일반적인 프로그래밍에서, 어떤 값을 갖고 있고, 그것을 변경하고 싶을때에는, "변수"를 선언합니다. 변수는 표현하고자 하는 값에 따라 다른 형과 크기를 사용합니다. 가령 정수, 실수, 문자, 문자열 등이 있죠. 우리의 경우, ofDrawCircle함수에서 좌표를 의미하는 변수를 만들것이므로, 두개의 **int**(정수)를 사용할 것입니다.

ofApp.cpp의 상단 `#include` 라인의 바로 아래에, 이것을 넣어봅시다. 코드는 이렇게 시작될 것입니다:

```cpp
#include "ofApp.h"

int myCircleX;
int myCircleY;
```

위 두줄의 코드라인에서, 우리는 2개의 변수를 "선언" 했습니다: 하나는 'myCircleX', 그리고 다른 하나는 'mycircleY'입니다. 사실 여러분이 원하는대로 이름을 붙일수 있습니다만 변수가 어떻게 쓰일지를 고려하여 이름을 붙이는게 좋습니다. 또한 이 변수들은 정수값(또는 **int**)을 담도록 하였습니다.  변수를 선언하는것은 중요하며 반드시 필요합니다. 이건 마치 어플리케이션에게 "좋아, 이제부터 변할 수 있는 값을 저장할거야" 라고 말하는것과 같습니다.

다음으로 해야할 일은 이 변수들에게 시작 값을 주는 것입니다. 이 변수들이 계속 바뀔거라는것은 알고 있습니다. 하지만 값이 변경되기 전에, 초기값을 지정해줄 필요가 있습니다. 다시 말해, 우리의 원들이 움직이기 전에, 어디에 보여지게 해야할까요?

이전 섹션에서, setup() 함수가 어플리케이션이 구동될때 한번 호출된다는 것을 배웠습니다. 그리고 두번 다시 호출되지 않죠. 변수들에게 초기값을 주기에 아주 유용하게 들리는군요. 자 setup() 함수안에, 아래의 코드를 추가해봅시다.

```cpp
void ofApp::setup(){
    myCircleX = 300;
    myCircleY = 200;
}
```

완벽합니다! 자, 다시한번 돌아보면, 우리는 지금 2개의 변수인, 'myCircleX'와 'myCircleY'를 갖고 있고, 이제 막 "초기화" 하였습니다. 다른말로 "초기"값으로 만들었다고도 할 수 있죠. 유념하셔야 할것은, 수학에서의 수식과 마찬가지로, 변수에 300이라는 값을 할당하기 위해 항등 기호(=)를 사용했다는 것입니다. "할당"은 항상 우측에서 좌측으로 흐릅니다; 즉, 좌측에 있는 것들은 우측의 값으로 할당된다는 말입니다.

이제 ofDrawCircle함수 호출을 약간 고쳐봅시다:

```cpp
void ofApp::draw(){
    ofSetColor(255, 0, 255);
    ofDrawCircle(myCircleX, myCircleY, 60);
}
```

여전히 3개의 인자들을 ofdrawCirlcle함수로 전달하고 있습니다. 하지만 이번에는, 예전의 "하드코딩" 방식으로 작성했던 변하지 않는 (200, 300) 값 대신, 우리가 만든 변수들을 사용하고 있습니다.

지금 앱을 실행해보면, 아무 변화가 없음을 알 수 있습니다. 아직 변수들의 값을 변경해주지 않았기 때문이죠. 자 그럼 지금 해봅시다.

우리의 draw함수를 약간 편집해봅시다. 이렇게 말이죠:

```cpp
void ofApp::draw(){
    myCircleX = myCircleX + 1;

    ofSetColor(255, 0, 255);
    ofDrawCircle(myCircleX, myCircleY, 60);
}
```
이제 프로그램을 실행해보면, 원이 우측으로 움직이는것을 볼수 있을것입니다! 애니메이션이죠!

이 새로운 코드라인에서, setup함수에서 처럼 "할당 연산자" 를 다시한번 사용했습니다. 저 코드라인을 우리의 말로 하자면 "myCircleX의 값을 가져와 1을 더하고, 그 값을 myCircleX로 할당해" 라고 하는겁니다. 다른 말로는, myCircleX를 1씩 증가시키고 있는것이지요. `C++`에서는 다른 값에 의해 변수가 증가하는 기본적인 작업을 위한 단축표기를 제공하고 있습니다: `myCircleX += value;`이죠. 우리의 경우, 이렇게 작성할 수 있습니다: `myCircleX += 1;`. 하지만 1씩 증가하는것이 정말로 일반적이어서, 심지어 더 축약하여 표기하는 방법이 있습니다: `myCircleX++`입니다. 그러니까 실제로 우리가 코드에서 이 편리한 단축 표기를 사용하고 있는것이지요:

```cpp
myCircleX = myCircleX + 1;
```

는 아래와 같이 작성할 수 있고


```cpp
myCircleX += 1;
```

또한 아래처럼 작성할 수 있습니다

```cpp
myCircleX++;
```

좀더 아름답게 그려지도록 고민하기 전에 한 가지 더 고쳐야 할 부분이 있습니다. update()와 draw()함수가 어떻게 쓰이는지에 관한 설명으로 돌아가보면, draw함수는 뭔가를 그릴때 사용합니다(아직까지는, 아주 좋죠), 하지만 update()함수는 값을 업데이트할때 사용해야 합니다. 나중에 이렇게 해야하는 아주 훌륭한 이유를 살펴보겠지만, 우선, 방금 작성한 코드라인을 update함수로 옮겨봅시다. 자 여러분의 update와 draw 함수는 이와 같을 것입니다:

```cpp
void ofApp::update(){
    myCircleX++;
}

void ofApp::draw(){
    ofSetColor(255, 0, 255);
    ofDrawCircle(myCircleX, myCircleY, 60);
}
```

기능적인 측면에서 아무런 변화를 느끼지 못하시겠지만, 이렇게 작성하는 습관을 가지는것이 좋습니다.

#### 프레임레이트(주사율)

여러분이 이 환상적인 움직이는 원에 관해 알아차린점이 하나 있다면 바로 대체로 천천히 시작하여 점점 빨라진다는 점입니다. 이는 사실 어플리케이션의 프레임레이트 때문인데, 이 프레임레이트는 어플리케이션이 구동될때에는 느리다가, 점점 엄청 빨라집니다. 아래의 코드라인을 draw()함수의 하단에 추가하여 윈도우의 좌측 상단에 프레임레이트가 보이도록 해봅시다:

```cpp
ofDrawBitmapString(ofToString(ofGetFrameRate())+"fps", 10, 15);
```

대부분, 거의 1000fps정도로 출력될 것입니다. 즉 원이 거의 1초에 천번 정도 그려진다는 것입니다. 만약 여러분의 컴퓨터에 다른 수많은 어플리케이션들이 실행되고, 거대한 비디오를 렌더링 하고 있다고 하면, 이 프레임레이트는 뚝 떨어질것입니다. 즉 여러분의 어플리케이션은 단순히 가능한한 빨리 그릴려고 한다는 것이죠.

부드럽게 보여지기 위해, 좀더 예측 가능한 애니메이션이 되려면, 이 프레임레이트를 현실적으로 낮춰야 합니다. 60정도로요. 이렇게 하기 위해, setup()함수에 아래의 새 코드를 추가합니다.


```cpp
void ofApp::setup(){
    ofSetFrameRate(60);

    myCircleX = 300;
    myCircleY = 200;
}
```

위 코드를 추가하고 프로그램을 실행해봅시다. 원의 움직임이 일정하게 느려졌음을 알 수 있습니다. 이 함수를 사용하는 것은 초당 60프레임을 보장하는 것이 *아니라*, 프레임레이트가 이보다 더 높지 않게 구동되는 것을 보장합니다. 그리고 여러분이 정말 오래된 컴퓨터를 가지고 있거나 프로세서가 이미 다른 프로그램에 의해 혹사당하고 있는것이 아니라면, 움직이는 원을 그리는것처럼 단순한 작업의 경우 일정하게 60fps를 유지하는것은 별 문제가 아닙니다.

**TIP**: 수능 문제 #1 : 만약 update 반복이 최대 초당 60번 발생하고, update가 호출될때마다 원의 x좌표가 1씩증가한다면, 원이 240px만큼 이동할려면 얼마나 오래 걸릴까요?

**TIP**: 우리가 프레임률을 잘 다루고 있는것은 사실이지만, 60px/초 는 정말 느립니다. 이 문제를 해결하기 위해, *아마도* 프레임률을 증가시킬수 있습니다. 하지만 60fps는 충분히 좋은 프레임률이죠. 그래서 대신에, 원 자체의 속도를 변경해봅시다: 매번 1픽셀만큼 x과표가 증가하는것이 아니라, 4만큼 증가하도록 해보죠. 동일한 "증가" 축약 표기법을 사용해서, update()함수를 아래와 같이 바꿀 수 있습니다:


```cpp
void ofApp::update(){
    myCircleX+=4;
}
```


#### 팩맨 효과

튜토리얼을 마치기 전에 마지막으로 보라색 원으로 한가지를 더 해봅시다. 우리의 어플리케이션에서 원이 화면의 우측으로 영원히 사라져버리므로 여전히 약간 실망습니다. 이 문제를 원이 우측에서 사라지면 좌측에서 다시 나타나도록 해결해봅시다 : 이른바 팩맨 효과입니다.

코드를 작성하기 전에, 우리가 갖고 있는 변수의 측면에서 이것이 무슨 의미를 갖게 되는지 생각해봅시다. 현재 myCircleX는 원의 x 좌표로 사용되고 있고, 이것은 매 프레임마다 1씩 증가하고 있습니다(바로 위의 팁을 따른다면 4씩 증가하겠죠?). 기본적으로, 오픈프레임웍스 윈도우는 1024x768의 크기를 갖습니다. 따라서 팩맨 효과를 적용하는 방법중 하나는 myCircleX이 1024보다 커질경우 300으로 리셋하는것입니다.

어떻게 하면 될까요? 우리는 어떤 변수든지 update()안에서 다룬다는것을 알고 있으므로, 여기서 시작해보도록 합시다. 또한 *만약* myCircleX가 1024보다 클때*만*, 리셋하면 된다는것도 알고 있죠. 이를 위해서 `if`문을 사용합니다.


```cpp
void ofApp::update(){
    myCircleX++;
    if(myCircleX > 1024)
    {
        myCircleX = 300;
    }
}
```

코드의 뜻은 이렇습니다:

- myCircleX를 1씩 증가시킨다
- myCircleX가 1024보다 큰지 테스트한다.
- 테스트한 결과가 참일때*만*, myCircleX 를 300으로 되돌린다;

### 인터랙션 추가하기

이제 여러분은 애니메이션을 마스터했습니다. 이제 사용자의 참여에 대해서 배울 시간이군요. 이 섹션에서는, 키보드와 마우스 인터랙션에 집중해보려 합니다.

지금까지는, setup(), update(), 그리고 draw() 세 함수에 대해 알아봤습니다. 인터랙션을 위해서는, ofApp.cpp 파일안의 다른 2개의 함수로 시작합니다:


```cpp
void ofApp::keyPressed(int key){

}

void ofApp::keyReleased(int key){

}
```

프로덕션 비유로 돌아가서 보면 이런 함수들의 동작원리를 이해하는데 도움이 됩니다. 오픈프레임웍스는 여러분의 앱이 사용자가 키보드로 하는 작업들이 언제 발생하는지 알수 있도록 어려운 작업들을 해두었습니다. 이제, 여러분이 할일은 이런 특정 이벤트들이 발생했을때 수행할 것들을 이 함수들안에 코드로 작성하는것입니다:

- 사용자가 물리적인 키를 누름
- 사용자가 물리적인 키를 눌렀다 뗌

이는 여러분이 평소처럼 키를 누르는 것을 하나의 행위로 생각하는데 익숙했다면 직관적이지 않을 수 있습니다: "그냥 `o` 키를 눌렀음". 하지만 사실 여기엔 두 가지 행위, 또는 "이벤트" 로 구분됩니다. 그리고 궁극적으로 여러분이 이 둘의 차이를 구별할 수 있어야 합니다.

"myApps" 에 "keyboardInteraction" 이라는 새 프로젝트를 생성합니다. 만약 필요하다면, "여러분의 첫 프로젝트 생성하기" 로 돌아가서 어떻게 하는지 살펴보시기 바랍니다.

![IMG](/tutorials/01_introduction/001_chapter1/KeyboardInteraction01.png)

#### cout을 소개합니다!

이 기능들이 어떻게 동작하는지 알아볼 수 있는 가장 쉽고 빠른 방법은 콘솔에 메시지를 출력하는 것입니다. 콘솔에 "Hello, World" 를 출력하는 가이드 기억나시죠? ["cout"](http://www.cplusplus.com/reference/iostream/cout/)('씨-아웃' 이라고 읽습니다) 이라 불리는 것을 `C++`에서 사용했습니다. 이 문법을 사용하는 것은 약간 이상한데, 사실 기술적으로 이녀석은 함수가 아니기 때문입니다(정확히는 오브젝트이며, 추후 챕터에서 이에 대해서 다룰 것입니다). 하지만 이 문법에 대해 익숙해진다면, 디버깅을 할때 아주 유용합니다.

하지만 우선: 스스로에게 물어봅시다: 텍스트 출력을 어떻게 확인하죠? 우리는 지금 GUI를 다루고 있습니다. 다행히도, Xcode/Code::Blocks는 프로그램에서 출력되는 텍스트를 확인할 수 있는 윈도우를 제공하고 있습니다([stdout](http://www.cplusplus.com/reference/clibrary/cstdio/stdout/) 이라고 불리기도 합니다).

자, Xcode에서 메뉴의 View->Debug Area->Activate Console을 투르거나, 혹은 apple+shift+C 단축기를 눌러봅시다. 

![IMG](/tutorials/01_introduction/001_chapter1/activate-console.png)

XCode 윈도우의 하단에 아래와 같은 패널이 보일것입니다.

![IMG](/tutorials/01_introduction/001_chapter1/debug-area.png)

훌륭합니다! 이제 출력은 패널의 우측에 보여질 것입니다. 이제 키 기능을 사용하여 콘솔에 출력하는 코드를 작성해봅시다.

```cpp
void ofApp::keyPressed(int key){
    cout << "keyPressed " << key << endl;
}

void ofApp::keyReleased(int key){
    cout << "keyReleased " << key << endl;
}
```

앞에서 언급했던것처럼, cout의 문법은 약간 이상합니다. 그리고 솔직히, 이 챕터의 범위를 벗어납니다. `C++`에서는, cout은 "표준 출력 스트림(standard output stream)"을 의미하며 여기서 이게 무슨말인지 걱정할 필요는 없습니다만, "stream(흐름)" 이야 말로 이것에 대해 생각하기엔 좋은 방법입니다. `keyPressed` 가 포함된 코드라인을 살펴보면, 데이터의 "stream"이 "cout"으로 되어있음을 볼 수 있습니다. 우선 "keyPressed"문자열을 stream으로 흘려보내고, 그리고 나서 변수 key 를 흘려보냈습니다. 마지막으로, [endl](http://www.cplusplus.com/reference/iostream/manipulators/endl/)을 보냈습니다. endl은 콘솔에게 다음 줄로 넘어가라 라고 명령하는 것과 같습니다.

'key'변수는 눌렸거나, 떼었을 키를 의미합니다. 이것에 대해서 좀더 살펴보죠.

한번 직접 해봅시다. 프로그램을 실행하고 아무 키나 눌러보십시오. 저는 "qwerty"를 입력했습니다. 콘솔에는 이렇게 보일겁니다:

```bash
GNU gdb 6.3.50-20050815 (Apple version gdb-1708) (Thu Nov  3 21:59:02 UTC 2011)
Copyright 2004 Free Software Foundation, Inc.
GDB is free software, covered by the GNU General Public License, and you are
welcome to change it and/or distribute copies of it under certain conditions.
Type "show copying" to see the conditions.
There is absolutely no warranty for GDB. Type "show warranty" for details.
This GDB was configured as "x86_64-apple-darwin".tty /dev/ttys002
[Switching to process 92317 thread 0x0]
keyPressed 113
keyReleased 113
keyPressed 119
keyReleased 119
keyPressed 101
keyReleased 101
keyPressed 114
keyReleased 114
keyPressed 116
keyReleased 116
keyPressed 121
keyReleased 121
```

시작부분의 잡다한 부분은 신경쓰지 마세요 -- 이것들은 디버거에서 추가한 것들입니다.

'key'는 'int(정수형)'인데, 이건 좀 이상해 보입니다. 아마도 여러분은 문자나 문자열을 기대하고 있었죠? 사실, 이 숫자는 눌렸던 키의 [ASCII 코드](http://www.asciitable.com/)입니다. 표를 한번 살펴보죠:

![IMG](/tutorials/01_introduction/001_chapter1/ascii_table.jpg)

각 열의 우측에 붉은색을 보면, 키보드의 키를 볼 수 있습니다. 아래에 대응되는 "Dec(10진수)"열을 보시면, key 함수에서 받는 숫자를 볼 수 있습니다.

**TIP**: 사실 이 int를 'char'나 문자로 변환하기 위해 [type casting(형 변환)](http://www.cplusplus.com/doc/tutorial/typecasting/)이라 불리는 것을 사용할 수도 있습니다. "key"앞에 "(char)"만 붙여넣어 cout 구문에 넣으면 됩니다:

```cpp
cout << "keyPressed " << (char)key << endl;
```

형변환에 대해서는 이 나중에 더 살펴보도록 하죠!

훌륭합니다만, 키를 이용해 콘솔에 출력하는 그럴듯한 프로그램이 되었네요. 이번엔 키를 이용해서 화면의 공을 움직여봅시다.

ofApp에 두 변수를 추가하고 이것들을 이용해 원을 그려봅시다. 아치 움직임을 추가하는 앞 섹션과 같이요:

```cpp
#include "ofApp.h"

int myCircleX;
int myCircleY;

void ofApp::setup(){
    myCircleX = 300;
    myCircleY = 200;
}

void ofApp::update(){

}

void ofApp::draw(){
    ofSetColor(255, 0, 255);
    ofDrawCircle(myCircleX, myCircleY, 60);
}
```

움직임 추가하기 색션에서, 변수를 사용함으로써 원이 스스로 움직이게 했습니다. 이번에 할 작업이 다른점은, 원의 움직임이 키보드의 입력에 따라 반응한다는 것입니다. 즉 변수의 값이 매프레임마다 자동으로 증가하는것이 아니라 어떤 키가 눌렸는지에 따라 변수의 값을 수정해줘야 한다는 것이죠. 따라서 update()가 아닌, keyPressed() (또는 keyReleased() -- 여러분의 결정에 따르세요!)에 myCircleX와 myCircleY의 값을 변경하는 코드를 작성해야 합니다.

일반적인 컴퓨터 게임에서의 키보드 키 방식을 따르도록 하죠 : 원이 위로 움직이게 할려면 'w'를, 왼쪽으로 움직이게 할려면 'a'를, 아래로는 's'를, 오른쪽으로는 'd'를 사용하도록 합시다. ASCII 값을 살펴보니 이 값들은 각각 119, 97, 115, 100이군요, 다음으로, "위", "아래", "왼쪽", "오른쪽"의 뜻이 변수 myCircleX와 myCircleY에서 어떤 의미를 같는지 생각해봅시다. 결과는 이렇게 되겠죠:

```cpp
void ofApp::keyPressed(int key){
    if(key==119) // 'w' key
    {
        myCircleY--;
    }
    if(key==97) // 'a' key
    {
        myCircleX--;
    }
}
```

앞서 살펴본 것과 같이, 어떤 키라도 눌리면, keyPressed() 함수가 호출됩니다. 하지만, 우리는 좀더 구별되게 해야합니다. 'w'키가 눌렸을때 정확히 어떤 일이 벌어지도록 해야하는것이지요, 'a'키 등 다른 키도 마찬가지입니다. 따라서 [if 문](http://www.cprogramming.com/tutorial/lesson2.html)을 추가해주어야 합니다. keyPressed 함수가 호출되면, 먼저 수행될 과정은 'key'가 119와 같은지 테스트 하는 것입니다.

등괄호(=)가 두번 사용되었다는 것에 주의하세요. 이는 할당이 아니라 비교를 한다는 의미입니다. 즉 119를 'key' 변수 값에 할당하는것이 아니라, key와 119가 같은지 테스트 하고 싶다는 것입니다. 만약 이 결과가 참이면, if()뒤에 오는 중괄호 안의 내용이 실행됩니다.

's'와 'd'키에도 반응하도록 함수를 완성해보세요.


**TIP**: 이렇게 해도 동작합니다!

```cpp
if(key=='w')
{
    myCircleY--;
}
if(key=='a')
{
    myCircleX--;
}
```

#### 마이티 마우스

키보드 인터랙션은 훌륭합니다만, 마우스는 어떤가요? ofApp 안의 아래 함수가 역시 있다는것을 보셨을겁니다:

```cpp
void ofApp::mouseMoved(int x, int y ){

}

void ofApp::mouseDragged(int x, int y, int button){

}

void ofApp::mousePressed(int x, int y, int button){

}

void ofApp::mouseReleased(int x, int y, int button){

}
```

새로운 Mouseinteraction 프로젝트를 생성하고 한번 가지고 놀아봅시다.

![IMG](/tutorials/01_introduction/001_chapter1/MouseInteraction01.png)

키 함수들에 적용했던 코딩을 마우스 함수에도 적용해봅시다. 프로젝트에 아래와 같이 추가해보세요:

```cpp
void ofApp::mouseMoved(int x, int y){
    cout << "mouseMoved: " << x << ", " << y << endl;
}

void ofApp::mouseDragged(int x, int y, int button){
    cout << "mouseDragged: " << x << ", " << y << " button: " << button << endl;
}

void ofApp::mousePressed(int x, int y, int button){
    cout << "mousePressed: " << x << ", " << y << " button: " << button << endl;
}

void ofApp::mouseReleased(int x, int y, int button){
     cout << "mouseReleased: " << x << ", " << y << " button: " << button << endl;
}
```

cout 구문 안의 'x'와 'y'변수는 마우스를 클릭했을때의 위치를 나타냅니다 -- 아주 편리한 정보죠?

프로그램을 실행하면 이와 같은 결과를 볼 수 있을것입니다:

```bash
mouseMoved: 627, 500
mouseMoved: 619, 500
mouseMoved: 610, 500

...

mouseMoved: 426, 473
mouseMoved: 426, 476
mouseMoved: 427, 478
mousePressed: 426, 478 button: 0
mouseDragged: 427, 477 button: 0

...

mouseDragged: 548, 411 button: 0
mouseDragged: 547, 411 button: 0
mouseDragged: 546, 411 button: 0
mouseReleased: 546, 411 button: 0
mouseMoved: 544, 411
mouseMoved: 543, 411
mousePressed: 543, 411 button: 0
mouseDragged: 542, 411 button: 0

...

mouseDragged: 433, 396 button: 0
mouseDragged: 433, 377 button: 0
mouseReleased: 433, 377 button: 0
mouseMoved: 434, 370
mouseMoved: 433, 367

```

이 출력에 관해 알아야 할 몇가지 중요한 정보들이 있습니다. 첫째로, 엄청나게 많은 "mouseMoved" 메시지를 볼 수 있습니다. 실제로 단 하나의 픽셀만 움직여도 이 함수가 호출되므로, mouseMoved에 코드를 추가할 때는 주의하셔야 합니다. 두번째로, 매 "mouseDragged"가 출력되기 전에 "mousePressed" 이벤트가 출력됨을 알 수 있습니다. 그 다음 엄청난 "mouseDragged"이벤트가 출력되고, "mouseMoved"로 돌아오기 전에 "mouseReleased"가 출력됩니다.

#### 그래픽과 인터랙션 하기

자 이제 여러분은 사용자의 마우스 조작이 발생했을 때 무슨일이 벌어지는지 알고 있습니다. 하지만 콘솔창에 출력하는것은 우리가 원하는 인터랙션과는 거리가 멀죠. GUI 어플리케이션과 상호작용을 할때, 마우스는 다양한 방법으로 사용됩니다: 클릭, 더블클릭, 드래그, 마우스 올리기, 제스쳐 등등. 가장 단순한 인터랙션은 "사용자가 뭔가를 클릭하면, 뭔가 벌어진다."겠죠? 자 이걸 한번 해보도록 합시다. 

아마도, 예를 들어, 사용자가 원을 클릭하면 커지게 해본다고 할 수 있을것입니다. 새로운 MouseInteraction2 프로젝트를 세팅해봅시다. 이것은 'MouseInteraction' 프로젝트와 아주 비슷하게 시작할겁니다:

```cpp
int myCircleX=200;
int myCircleY=300;
int myCircleRadius=100;

void ofApp::setup(){
}

void ofApp::update(){
}

void ofApp::draw(){
    ofSetColor(255, 0, 255);
    ofDrawCircle(myCircleX, myCircleY, myCircleRadius);
}
```

보시다시피, 'myCircleRadius'라는 새로운 변수를 추가했습니다. 우리가 원을 키우고 싶다면, myCircleRadius를 증가시키면 되는거죠. 이 트릭을 언제 사용할건지만 결정하면 됩니다.

우리가 위에서 살펴봤듯이, mousePressed 함수로 뭔가를 하면 될거니다. 사용자가 마우스를 클릭할 때마다 mousePressed가 호출된다는것을 우리가 알고 있으니, mousePressed 함수에 'myCircleRadius++'만 추가해주면 됩니다. 절반은 온 셈입니다. 한번 시도해보죠.

```cpp
void ofApp::mousePressed(int x, int y, int button){
    myCircleRadius++;
}
```

마우스를 클릭할때마다 원이 커지는것을 볼 수 있을 것입니다. 그런데 어떻습니까? 원 안 뿐만 아니라 다른 아무곳을 클릭해도 원이 커집니다. 하지만 우리의 목표는 원의 *안*을 클릭할 때만 커지게 하는것이죠. 그렇다면 어떻게 해야할까요?

뭐, 다행이 우리는 원을 다루고 있습니다. 이것을 아주 쉽게 해결할 수 있죠. 왜냐하면, 원의 중심과 마우스를 클릭할때의 위치의 거리를 계산하여 해결할 수 있으니까요. 이 거리와 원의 반지름을 비교해서, 원의 반지름보다 작으면 원 안에 있다고 결정할 수 있으니까요. 그림을 한번 봅시다:

![IMG](/tutorials/01_introduction/001_chapter1/hit-test-01.png)

우리는 저 원의 반지름이 100임을 알고 있습니다. 그리고 마우스를 클릭했을 때의 커서가 원의 중심으로부터 230픽셀 떨어져 있다는 것도 말이죠. 마우스가 원안에서 클릭되었나요?

![IMG](/tutorials/01_introduction/001_chapter1/hit-test-02.png)

위의 경우, 원의 중심에서 92픽셀 떨어진곳에서 클릭했다는것을 알 수 있습니다. 확실히 원 안에서 클릭된 거겠죠.

그렇다면, 어떻게 거리를 계산할 수 있을까요? 오픈프레임웍스는 ofDist([x1], [y1], [x2], [y2]) 라고 하는 함수를 제공하고 있습니다. 이것으로 어떠한 기본 삼각함수와 관련한 계산을 쉽게 할 수 있죠. 우리가 할 일은 두 좌표만 제공하면 되는것입니다.

```cpp
void ofApp::mousePressed(int x, int y, int button){
    float distance = ofDist(myCircleX, myCircleY, x, y);
    cout << distance << endl;

    myCircleRadius++;
}
```

'cout' 은 윌에게 ofDist의 결과로 얻은 값을 체크할 수 있게 해줍니다. 프로그램을 실행해보세요. 화면에서 마우스를 클릭하고 콘솔에 어떤 값들이 출력되는지 보시기 바랍니다.

자 이제 남은것은 'myCircleRadius'와 'distance'를 비교하는 것이고, 우리는 이것을 간단한 if문에 사용할 수 있습니다.

```cpp
void ofApp::mousePressed(int x, int y, int button){
    float distance = ofDist(myCircleX, myCircleY, x, y);
    if(distance < myCircleRadius)
    {
        myCircleRadius++;
    }
}
```

위 코드는 "먼저 원의 중심과 마우스를 클릭했을때의 커서 위치를 계산하고, 그리고 나서 'distance'와 'myCircleRadius'를 비교한다. 만약 distacne가 myCircleRadius보다 작으면(작을 경우에만), myCircleRadius를 1씩 증가시킨다" 라는 뜻입니다.

보십시오! 지금 여러분은 그래픽과 인터랙션을 하고 있습니다!

#### 기술적인 주제들

위의 예제에서, 우리는 아주 기초적인 제어 구조 중 하나를 살펴봤습니다: 바로 [if 문](http://www.cprogramming.com/tutorial/lesson2.html) 입니다. if 문과 같은 제어 구문은 여러분이 선언한 기준을 가지고 프로그램의 흐름을 제어할 수 있게 해줍니다. 제어 구문은 오픈프레임웍스의 "것"이 아닙니다, 바로 'C++' 언어의 요소입니다. 자 그렇다면 잠깐 'C++' 언어의 기초에 대해서 살펴보도록 하죠.

#### 변수

"움직임 추가하기"섹션에서, 프로그램의 구동중에 값이 계속 변화하는 값을 의미하는 변수의 사용법을 소개했습니다. 우리는 2개의 정수, 혹은 *int* 를 사용했습니다 - 'int myCircleX' 그리고 'int myCircleY'죠 - 바로 원의 위치를 표현하기 위해서입니다. 'int' 라는 변수를 선언할 때에는, 컴퓨터에게 "이 변수에 모든 정수만을 담을거야" 라고 말하는 것과 같습니다. 이는 예제에서 문제가 되지 않았습니다. 원을 한 픽셀씩 이동시켰기 때문이죠, 소수점에 대해서는 걱정하지 않아도 되었던 겂니다.

하지만 어떨때는 소수점, 혹은 전혀 다른 뭔가를 담는 변수를 필요로 할 때도 있을것입니다, 가령 문자, 단어, 심지어 메모리의 주소 같은 것 말이죠. 이러한 다양한 경우에 따라 변수형이 존재합니다. 아래에 [cplusplus.com](http://www.cplusplus.com/doc/tutorial/variables/)에서 가져온 이에 관한 리스트들이 있습니다.

![IMG](/tutorials/01_introduction/001_chapter1/variable-types.png)

자, 보시다시피, 우리의 기본적인 정수는 메모리에서 4 byte를 차지하고 있습니다. 이게 바로 메모리의 유한한 양이죠, 그리고 그렇기 때문에 담을 수 있는 값의 범위가 제한되어 있습니다(하지만 엄청 큽니다!): -2,147,483,648 에서 2,147,483,647 입니다. 만약 더 큰(또는 더 작은) 숫자를 저장하고 싶다면, 'long int' 를 사용해야 합니다, 이 변수에 담을 수 있는 값의 범위는 (상대적으로) 훨씬 큰 -9,223,372,036,854,775,808 에서 9,223,372,036,854,775,807 입니다.

변수들을 다룰때에 이런식으로 구별하는것이 애매할 수 있습니다. 숫자는 숫자쟎아요, 그렇죠? 십진수와 정수를 왜 다르게 취급할까요? 이는 변수가 컴퓨터의 메모리에 어떻게 저장되는지와 관련이 있습니다. 결국 프로그래머가 필요로 하는 변수의 범위와 정확도를 확실하게 제공함으로써, 컴퓨터가 좀 더 효율적으로 구동할 수 있는것입니다.

위 차트에서 포함하고 있지 않는 중요한 변수가 하나 있습니다: 'string' 입니다. string은 문자의 열을 담을 수 있습니다. ... 원하는 만큼 많이요 ...

**TIP**: Compile and run this program to see information about how your computer treats different kinds of variables.

```cpp
#include <iostream>
#include <limits.h>
#include <float.h>
using namespace std;

int main ()
{
    cout << "type \t\tsize \tmin \t\t\tmax" << endl;
    cout << "---------------------------------------------------------------" << endl;
    cout << "bool\t\t" << sizeof(bool) << endl;
    cout << "char\t\t" << sizeof(char) << "\t" << CHAR_MIN << "\t\t\t" << CHAR_MAX << endl;
    cout << "unsigned char\t" << sizeof(unsigned char) << "\t\t\t\t" << UCHAR_MAX << endl;
    cout << "short\t\t" << sizeof(short) << "\t" << INT_MIN << "\t\t" << INT_MAX << endl;
    cout << "int\t\t" << sizeof(int) << "\t" << INT_MIN << "\t\t" << INT_MAX << endl;
    cout << "unsigned int\t" << sizeof(unsigned int) << "\t\t\t\t" << UINT_MAX << endl;
    cout << "float\t\t" << sizeof(float) << "\t" << FLT_MIN << "\t\t" << FLT_MAX << endl;
    cout << "long\t\t" << sizeof(long) << "\t" << LONG_MIN << "\t" << LONG_MAX << endl;
    cout << "double\t\t" << sizeof(double) << "\t" << DBL_MIN << "\t\t" << DBL_MAX << endl;
    return 0;
}
```

#### 반복문

반복문은 프로그래머에게는 아마도 가장 친숙하고 중요한 개념중 하나일 것입니다. 이것들은 틀립없이, 컴퓨터를 사용하는 주요한 장점입니다: 뭔가를 아주 빠르게 반복해서 수행하는 것은 컴퓨터가 잘 하는 것이라 정의할 수 있죠. 반복문은 몇가지 다른 종류가 있습니다, 그리고 이 모든 것에 친숙해지는것이 중요합니다.

자 원이 20픽셀씩 윈도우를 가로지르게 하고싶다 생각해봅시다. 한가지 옵션은 ofDrawCircle 명령을 아래처럼 복사하여 붙여넣는 방법입니다:

```cpp
void ofApp::draw(){
    ofDrawCircle(20, 300, 10);
    ofDrawCircle(40, 300, 10);
    ofDrawCircle(60, 300, 10);
    ofDrawCircle(80, 300, 10);
    // ...
    ofDrawCircle(1000, 300, 10);
    ofDrawCircle(1020, 300, 10);
}
```

위에 50라인의 코드가 있습니다- 으읔.. 그런데 만약에 20픽셀씩이 아니라 30픽셀식 이동하는것으로 바꿀려면요? 맨앞으로 돌아가서 코드의 한줄 한줄을 다 편집해줘야 합니다. 그리고 만약에 윈도우의 크기가 변경되면요? 이건 분명 받아들일 수 없군요. 코드를 봅시다:

```cpp
void ofApp::draw(){
    int x = 10;

    ofDrawCircle(x, 300, 10);
    x += 20;
    ofDrawCircle(x, 300, 10);
    x += 20;
    ofDrawCircle(x, 300, 10);
    x += 20;
    ofDrawCircle(x, 300, 10);
    x += 20;
    // copy and paste 47 more times
}
```

어떤 경우에, 더 심각할 수 있습니다. 위 코드에는 각 원마다 2개의 코드라인이 작성되어 있죠. 하지만, 아주 중요한 차이점이 있습니다: 이 경우, 두줄의 코드라인은 매번 동일합니다. "추출된" 작업을 갖고 있는 셈이죠 -- 즉, 상세한 내용을 취해서, 그것을 좀더 일반적인 형태로 바꿔보는 겁니다.

자 이제, 우리가 직접 붙여넣지 말고, 컴퓨터에게 저 두줄을 계속 반목하라고 시켜봅시다. 이 때가 바로 반복문을 사용할 때 입니다.

#### do...while 반복문

모든 반복문은 동일한 형태를 취합니다:

- 몇가지 초기값을 지정한다 (초기화)
- 반복문의 몸통을 실행한다.
- 두번째의 단계로 돌아갈지, 아니면 반복문을 빠져나갈지 결정한다

가장 단순한 반복문은 do/while 반복문입니다. 이름에서 유추할 수 있듯이, 반복문은 컴퓨터에게 "do(실행)" 하도록 합니다, "while(동안)" 조건을 만날 때 까지요. do/while 반복문을 사용하라면, 51개의 원을 아주 쉽게 그려낼 수 있습니다.


```cpp
void ofApp::draw(){
    int i = 0;
    int x = 20;
    do {
        ofDrawCircle(x, 300, 10);
        x+=20;
        i++;
    } while( i < 51 );
}
```

자 어떤 일이 벌어졌나요? 우리가 컴퓨터라 생각하고 코드를 하나하나 훑어봅시다. 아마도 지금까지 중에 가장 지루한 과정일테니 미리 양해를 구합니다만, 이를 통해 반복문에서 어떤 일이 벌어지는지 이해할 수 있을것입니다.

- 변수 i를 0으로 초기화한다
- 변수 x를 20으로 초기화한다.
- 지금이 10인 원을 (20, 30)에 그린다.
- x를 20만큼 증가시킨다 (지금은 40)
- i를 1씩 증가시킨다 (지금은 1)
- 1이 51보다 작은가? : **맞네!**
    - 반복문의 처음으로 돌아간다
    - 지금이 10인 원을 (40, 30)에 그린다.
    - x를 20만큼 증가시킨다 (지금은 60)
    - i를 1씩 증가시킨다 (지금은 2)
- 2가 51보다 작은가? : **맞네!**
    - 반복문의 처음으로 돌아간다
    - 지금이 10인 원을 (60, 30)에 그린다.
    - x를 20만큼 증가시킨다 (지금은 80)
    - i를 1씩 증가시킨다 (지금은 3)
- 3이 51보다 작은가? : **맞네!**
    - 반복문의 처음으로 돌아간다
    - *[i가 50, x 가 1000이 될 때까지 46번 반복한다]*
    - 지금이 10인 원을 (1000, 30)에 그린다.
    - x를 20만큼 증가시킨다 (지금은 1020)
    - i를 1씩 증가시킨다 (지금은 51)
- 51이 51보다 작은가? : **아니네!**
    - 반복문을 빠져나가고 다음에 올 명령을 계속 수행한다.

**TIP**: 사실 아래와 같이 좀 더 효율적으로 코드를 작성해서 'x'변수로 두가지를 한번에 해결할 수 있습니다:

```cpp
int x = 20;
do {
    ofDrawCircle(x, 300, 10);
    x+=20;
} while(x < ofGetWidth());
```
이 방법은 또한 윈도우 크기가 변경되었을때에도 문제없이 동작합니다. 윈도우를 크게 또는 작게 변경해보세요 -- 원은 항상 윈도우의 끝에 그려질겁니다.

#### while 반복문

while 문에서는, 'while' 부분이 반복문의 맨앞으로 이동합니다. 따라서 while 문에서 원들을 그릴때에는, 이렇게 작성하면 됩니다:

```cpp
int i = 0;
int x = 20;
while(i < 51)
{
    ofDrawCircle(x, 300, 10);
    x+=20;
    i++;
}
```

do...while 문과 한가지 다른점이라면, 반복문의 몸통이 실행되기 전에 조건을 먼저 확인한다는 것입니다. 예를들어, 우리의 do...while를 이렇게 편집한다고 해봅시다:

```cpp
int x = 10;
do {
    ofDrawCircle(x, 300, 10);
    x += 20;
} while( x < mouseX );
```

'x' 가 마우스의 x 위치보다 작을때까지만 원이 그려지도록 하기 위해 조건문이 어떻게 바꼈는지 보십시오. 이 코드를 실행하면 어떻게 되나요? 일반적으로 마우스가 좌측에서 얼마나 떨어져있는지와 상관없이 항상 하나의 원이 그려집니다. 이것을 wihle문으로 바꿔보죠:


```cpp
int x = 10;
while( x < mouseX )
{
    ofDrawCircle(x, 300, 10);
    x += 20;
}
```

이제, 마우스를 윈도우의 좌측으로 이동시켜보면, 아무것도 그려지지 않습니다. 이는 반복문의 몸통(즉 ofDrawCircle 명령)에 다다르기 전에 반복문이 실행된다는 것이죠. 따라서 mouseX가 x보다 작으면, 원은 전혀 그려지지 않는것입니다.

#### for 반복문

무사히 가장중요한 마지막에 다다랐군요. for 반복문은 아마도 여러분이 가장 많이 사용할 반복문 입니다. 이는 반복문의 세 부분(초기화, 조건, 증가)가 하나의 함축된 문법으로 조합되어 있기 때문입니다. for 반복문을 이용해서 원들을 한번 그려봅시다.

```cpp
int x = 20;
for(int i=0; i<51; i++)
{
    ofDrawCircle(x, 300, 10);
    x+=20;
}
```


for 반복문의 문법은 처음에 보면 별거 아닌것처럼 보일겁니다만, 하나하나 뜯어서 살펴봅시다. 첫 부분은 초기화입니다: "int i=0;" 충분히 직관적이네요: 이제 우리는 i라는 정수형 변수를 갖고 있고, 0으로 초기화하였습니다. 다음 부분은 조건입니다: "i<51". 즉, i가 51보다 작으면 반복을 계속 하는것이죠. 그리고 마지막으로 증가입니다: "i++". 반복문의 모든 반복 다음에는, i를 1씩 증가할겁니다.

지금까지 다양한 종류의 반복문을 각각 살펴 보았습니다. for 문에서 차이점이 있다면 이것들을 한줄로 압축했다는 점입니다.


#### 배열

컴퓨터의 강점중 하나는 박식하다는 것입니다: 즉, 한번에 많은 수들을 가질 수 있다는 점이죠. 6000개의 움직이는 파티클을 그리고 싶다고요? 반복문 섹션에서 봤듯이 그 작업을 계속해서 반복하면 됩니다, 별거 없죠, 하지만 아직까지는, 일관적인 패턴에만 반복문을 사용해왔습니다. 만약 엄청난 수의 파티클을 그리고 싶다면, 파티클 각각의 위치들을 다뤄야 할것이고, 이것들은 점점 더 복잡해집니다

*50000개의 파티클!*

![IMG](/tutorials/01_introduction/001_chapter1/Arrays01.png)

```cpp
float circle1x;
float circle1y;
float circle1r;
float circle2x;
float circle2y;
float circle2r;
float circle3x;
float circle3y;
float circle3r;

void ofApp::setup(){
    ofSetFrameRate(24);

    circle1x = ofRandom(0, ofGetWidth());
    circle1y = ofRandom(0, ofGetHeight());
    circle1r = ofRandom(10, 40);

    circle2x = ofRandom(0, ofGetWidth());
    circle2y = ofRandom(0, ofGetHeight());
    circle2r = ofRandom(10, 40);

    circle3x = ofRandom(0, ofGetWidth());
    circle3y = ofRandom(0, ofGetHeight());
    circle3r = ofRandom(10, 40);

}

void ofApp::update(){
    circle1x += ofRandom(-1,1);
    circle1y += ofRandom(-1,1);

    circle2x += ofRandom(-1,1);
    circle2y += ofRandom(-1,1);

    circle3x += ofRandom(-1,1);
    circle3y += ofRandom(-1,1);
}

void ofApp::draw(){
    ofDrawCircle(circle1x, circle1y, circle1r);

    ofDrawCircle(circle2x, circle2y, circle2r);

    ofDrawCircle(circle3x, circle3y, circle3r);
}
```

**TIP**: NofRandom()의 사용을 보십시오. 이 함수는 랜덤한 숫자를 리턴해줍니다. 이 함수는 2개의 인자를 갖습니다: 결과로 나올수 있는 값의 최소값과 최대값이지요. 이 코드는 "0에서 화면의 가로 사이즈 사이의 값을 다오"라고 하는것과 같습니다.

기술적으로 이는 동작합니다, 하지만 겨우 3개의 원을 그렸네요, 그리고 코드는 이미 너무 길어져서 다루기가 힘듭니다. 1000개를 그리고 싶은데요! 분명히 이와같은 방법을 사용하면 엄청난 수의 변수들을 가져야 할것입니다. 그룹을 지어보는건 어떨까요? 모든 x 좌표들을 하나의 세트로 만드는겁니다, 그리고 y 좌표, 등등 말이죠.

이러한 세트들을 배열이라고 합니다. 아래의 코드를 살펴보죠:

```cpp
float circleX[3];
float circleY[3];
float circleRad[3];

void ofApp::setup(){
    ofSetFrameRate(24);

    circleX[0] = ofRandom(0, ofGetWidth());
    circleY[0] = ofRandom(0, ofGetHeight());
    circleRad[0] = ofRandom(10, 40);

    circleX[1] = ofRandom(0, ofGetWidth());
    circleY[1] = ofRandom(0, ofGetHeight());
    circleRad[1] = ofRandom(10, 40);

    circleX[2] = ofRandom(0, ofGetWidth());
    circleY[2] = ofRandom(0, ofGetHeight());
    circleRad[2] = ofRandom(10, 40);
}

void ofApp::update(){

    circleX[0] += ofRandom(-1,1);
    circleY[0] += ofRandom(-1,1);

    circleX[1] += ofRandom(-1,1);
    circleY[1] += ofRandom(-1,1);

    circleX[2] += ofRandom(-1,1);
    circleY[2] += ofRandom(-1,1);
}

void ofApp::draw(){

    ofDrawCircle(circleX[0], circleY[0], circleRad[0]);
    ofDrawCircle(circleX[1], circleY[1], circleRad[1]);
    ofDrawCircle(circleX[2], circleY[2], circleRad[2]);
}
```

보시다시피, int circle1x, int circle2x, 그리고 int circle3x를 단순히 int circleX[3]으로 대체했습니다. 이제 circleX은 1개가 아니라 3개의 정수를 담을 수 있는 "배열" 입니다. 좀더 읽어보면, 무슨의미인지 아실거니다, 하나의 정수을 배열 내에서 할당하고 있죠, 대괄호(square bracket, [])를 사용하고 있습니다, 이렇게요: circleX[0] = 50;

draw 함수로 내려가보면, 배열 내에서 앞에서 할당한 값들을 사용하기 위해 마찬가지로 같은 문법(특정 기호를 사용하는 것)을 사용하고 있음을 알 수 있습니다.

하지만, 여전히 복잡합니다. 아직 반복문을 가능한 한 확실하게 이용하지 않은 부분이 있는데, 코드의 패턴을 보면 알 수 있습니다. -- 바로, 코드가 계속 비슷한 과정을 반복하고 있다는 것이죠. 자, 'for' 반복문을 이용해서 더 깔끔하게 만들어 봅시다.


```cpp
float circleX[3];
float circleY[3];
float circleRad[3];

void ofApp::setup(){
    ofSetFrameRate(24);

    for(int i=0; i<3; i++)
    {
        circleX[i] = ofRandom(0, ofGetWidth());
        circleY[i] = ofRandom(0, ofGetHeight());
        circleRad[i] = ofRandom(10, 40);
    }
}

void ofApp::update(){

    for(int i=0; i<3; i++)
    {
        circleX[i] += ofRandom(-1,1);
        circleY[i] += ofRandom(-1,1);
    }
}

void ofApp::draw(){

    for(int i=0; i<3; i++)
    {
        ofDrawCircle(circleX[i], circleY[i], circleRad[i]);
    }
}
```

이제, 대괄호를 이용하여 하드-코딩하는 대신, 반복문의 'i' 변수를 사용했습니다.

##### #define

한 영리한 사람이 말했습니다: 프로그래머의 미덕의 근본은 바로 게으름이다. 아마도 화면에 보여지는 원의 수를 3에서 500으로 바꾸고 싶을 수 있을것입니다. 분명히, 첫 단계는 circleX[3]을 circleX[500]으로 바꾸는 것일겁니다, circleY와 circleRad도 마찬가지로요. 이런, 하지만 이게 다가 아닙니다. "for" 반복문으로 가서 i<3을 i<50으로 바꿔줘야 하는군요. 거 참 할일이 많네요!

배열에 얼마나 많은 아이템이 들어있는지를 추적할 수 있는 변수를 사용하면 얼마나 좋겠습니까! 아래와 같이 말이죠:

```cpp
int num = 500;
float circleX[num];
float circleY[num];
float circleRad[num];
```

불행이도, 이는 불가능합니다. 변수를 선언하기위해 변수를 사용할수 없습니다.

대신에, 우리는 #define ("pound define" 이라고 읽습니다) 이라는 새로운 녀석을 사용합니다. 한번 살펴보죠:

```cpp
#define NUM_CIRCLES 500

float circleX[NUM_CIRCLES];
float circleY[NUM_CIRCLES];
float circleRad[NUM_CIRCLES];
int circleR[NUM_CIRCLES];
int circleG[NUM_CIRCLES];
int circleB[NUM_CIRCLES];

void ofApp::setup(){
    ofSetFrameRate(24);

    for(int i=0; i<NUM_CIRCLES; i++)
    {
        circleX[i] = ofRandom(0, ofGetWidth());
        circleY[i] = ofRandom(0, ofGetHeight());
        circleRad[i] = ofRandom(10, 40);

        circleR[i] = ofRandom(0, 255);
        circleG[i] = ofRandom(0, 255);
        circleB[i] = ofRandom(0, 255);
    }
}

void ofApp::update(){

    for(int i=0; i<NUM_CIRCLES; i++)
    {
        circleX[i] += ofRandom(-1,1);
        circleY[i] += ofRandom(-1,1);
    }
}

void ofApp::draw(){

    for(int i=0; i<NUM_CIRCLES; i++)
    {
        ofSetColor(circleR[i], circleG[i], circleB[i]);
        ofDrawCircle(circleX[i], circleY[i], circleRad[i]);
    }
}
```

맨 위를 보시면, "#define NUM_CIRCLES_500"이라는 라인이 보입니다. 이는 사실 `C++`코드가 아닙니다, 이는 컴파일러에게 보내는 메시지죠. 이 코드는 컴파일러에게 "코드를 컴파일 하기 전에, NUM_CIRCLES로 작성된것을 싹 다 500으로 바꿔버려"라고 말하는 것과 같습니다. 이게 답니다! #define은 컴파일러(또는, 좀 더 정확히, 전처리기)에게 전할 수 있는 메세지중 하나입니다. 이 메시지는 좀 더 광범위하게 말하면 [전처리기 지시자](http://www.cplusplus.com/doc/tutorial/preprocessor/) 라고 합니다. 이것들에 대해서는 나중에 시간을 내서 알아보도록 하죠., 하지만 지금으로썬, 여러분은 "#define이라는 것은 찾기/바꾸기 절차" 정도로만 이해하면 충분합니다.


#### 함수

위 예제에서, 중괄호({})로 묶인 코드의 블록들을 볼 수 있습니다. 좀더 추상적인 기능들을 구성하기 위해, 명령어들을 그룹짓고, 이 그룹을 이름으로 부를 수 있습니다. 아래의 예제를 살펴봅시다:

```cpp
void drawStar(float xpos, float ypos, float radius, int npts)
{
    bool useInner = false;
    ofBeginShape();
    for(int i=0; i<360; i+=360/npts)
    {
        int r = useInner ? radius*.6 : radius;
        int x = xpos + cos( ofDegToRad(i) ) * r;
        int y = ypos + sin( ofDegToRad(i) ) * r;
        ofVertex(x, y);
        useInner = !useInner;
    }
    ofEndShape();
}
```

여러분이 보고 계신것은 [함수](http://www.cplusplus.com/doc/tutorial/functions/)의 선언입니다. 함수는 이름이 있는 명령의 그룹이며, 변수의 형태로 입력을 가질수도 있고 출력값을 리턴할 수도 있습니다. 함수는 또한 맭락에 따라 [서브루틴](https://en.wikipedia.org/wiki/Subroutine) 이라고 불릴 수도 있습니다. 첫번째 라인이 함수의 서명이라 불리는 곳입니다. 처음에 작성된 것이 리턴되는 값의 형입니다. void란 아무것도 리턴되지 않는다는 의미이고, int는 정수가 리턴된다는 것입니다. 각 변수형도 마찬가지입니다. 리턴형 다음으로는 함수의 이름인 ("drawStar")가 오며, 그 뒤로 인자들의 리스트가 있습니다. 인자들의 리스트들은 앞에 자료형(가령 "int")이, 그 뒤로 변수명(가령 "xpos")으로 구성되어 있습니다. 인자 변수들은 함수의 몸통 내부({}로 감싸여진 부분)에서 각자의 이름으로 보여지며, 몸통 바깥에서는 보여지지 않습니다. 아래의 코드를 살펴보시면 이러한 개념이 명확히 이해되실 겁니다.


```cpp
int add2(int number)
{
    return number + 2;
}

...

void other(float arg)
{
    int ivalue = 4;
    ivalue = add2(ivalue);
}
```

함수 "add2"는 인자("number")로써 정수를 받아 2를 더합니다. 이 값은 "return" 구문에 의해 리턴됩니다. "void"함수는 (일반적으로) return 구문을 갖지 않습니다. 변수 "number"는 함수 "add2" 내부에서만 접근할 수 있으며, "다른" 함수 내에서는 접근할 수 없습니다. 함수 "add2"가 호출될 때, "ivalue"의 값 (4)는 "number"에 복사됩니다. 그리고 나서 "add2"함수가 실행되고, 계산된 값 (4 + 2 = 6)을 리턴합니다. 이 값은 "ivalue"로 할당됩니다.

"drawStar"함수에 대하여 주목할만한 점이 몇가지 있습니다. 코드에서 볼 수 있읏이, 함수는 자신만의 변수("useInner" 와 같은)를 가질 수 있습니다. 이 변수는 함수 내부에서만 존재합니다. 또한 "ofBeginShape()", "ofDegToRad()"에서 보여지는 것처럼, 함수는 다른 함수를 호출할 수 있습니다. 코드의 7번째 라인은 if문을 단축하여 작성한 것입니다. 좀더 보여지기 쉽게 작성하면 이와 같습니다:

```cpp
int r;
if (useInner) {
    r = radius * 0.6;
} else {
    r = radius;
}
```

이러한 단축된 문법은 조건문의 각 갈래에서 하나의 구문만 수행되어야 할 경우 유용하지만, 버그(프로그래밍 에러)를 찾을려고 할 때 쉽게 훑어볼 수 있습니다. 좀더 자세항 곳은 보다 찾고 이해가기 쉬울것입니다. 또한 필요할 경우 확장 하기도 쉽죠.

여러분이 학습하기 위한, 그리고 제공된 예제코드들을 이해하기 위한 모든 개념들을 소새했습니다. 기본적인 모든것을 다뤘으니, 이제 다른 예제들을 가지고 지지고 볶아보세요!
