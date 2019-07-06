---
.. author: Jeff Crouse <jeff@crouse.cc>
.. title: 오픈프레임웍스 튜토리얼 - 소개
.. date: 2013/09/01 10:00:00
.. author_site: http://www.jeffcrouse.info
.. summary: 이 챕터에서는 openFrameworks를 소개하고 여러분이 첫 프로젝트를 시작할 수 있도록 준비하는 과정을 소개합니다.
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

이 챕터에서는 openFrameworks를 소개하고 여러분이 첫 프로젝트를 시작할 수 있도록 준비하는 과정을 소개합니다.

## 오픈프레임웍스가 뭔가요?

> 오픈프레임웍스는 실험적인 작업을 위한 간단하고 직관적인 프레임워크를 제공하여 생산적인 프로세스를 돕는 창조적 [오픈소스](/about/license.html) C++ 저작도구입니다. 이 저작도구는 범용적인 "접착제" 의 역활을 하도록 디자인 되었으며 아래에 나열된 일반적으로 사용되는 라이브러리들을 포함하고 있습니다:

- 그래픽스: [OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [GLFW](http://www.glfw.org/), [libtess2](https://code.google.com/p/libtess2/) 그리고 [cairo](http://cairographics.org/)
- 오디오 입출력 및 분석 : [rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/) or [FMOD](http://www.fmod.org/) 그리고 [Kiss FFT](http://kissfft.sourceforge.net/)
- 서체: [FreeType](http://freetype.sourceforge.net/index2.html)
- 이미지 불러오기 및 저장: [FreeImage](http://freeimage.sourceforge.net/)
- 비디오 재생 및 가져오기: [Quicktime](http://developer.apple.com/quicktime/) 그리고 [videoInput](https://github.com/ofTheo/videoInput) 
- 다양한 유틸리티: [Poco](http://pocoproject.org/)

openFrameworks는 강력한 크로스플랫폼을 지원합니다. 현재만 하더라도 5개의 운영체제와(윈도우, 맥OSX, 리눅스, iOS, 안드로이드) 네 종류의 IDE(XCode, Code::Blocks, Visual Studio, Eclipse)를 지원합니다. API는 최소한으로, 그리고 쉽게 이해되도록 디자인 되었습니다.

간단히 요약하자면, openFrameworks는 코드를 사용하여 쉽게 무언가를 제작할 수 있는 도구라고 할 수 있습니다. 저희에게 상당히 유용한 이 툴이 여러분들께도 도움이 되었으면 좋겠습니다.


오픈프레임웍스는 [Zach Lieberman](http://thesystemis.com/), [Theodore Watson](http://muonics.net/), 그리고 [Arturo Castro](http://arturocastro.net/)에 의해 활발히 개발되었으며, [OF community](/community/)의 도움을 받았습니다. 오픈프레임웍스는 두 선지자들의 은혜를 입었습니다: [Casey Reas](http://reas.com/), [Ben Fry](http://benfry.com/)에 의해 개발된 [Processing development environment](the http://processing.org/), 프로세싱 커뮤니티; 그리고 Ben Fry와 [MIT Media Lab's Aesthetics and Computation Group](http://acg.media.mit.edu/)의 구성원들에 의해 개발된 비공개 C++ 배포판 ACU Toolkit입니다.

몇몇 이러한 (openGL과 같은) 퍠키지들은 다른 문서의 파트들보다 좀더 깊게 살펴볼 필요가 있습니다만, 이것들은 백그라운드 단에서 동작하므로 아마도 절대 걱정할 필요가 없을것입니다. 이러한 각 라이브러리들은 자신만의 문법, 변환(conversion), 기교(quirk)가 있지만, 오픈프레임웍스의 아름다움은 이런것들에 대해 여러분이 걱정할 필요가 없다는 것입니다 - 오픈프레임웍스는 이러한 라이브러리들이 제공하는 기능들을 단일의, 일관적인 인터페이스로 제공합니다.

#### Q&A

- *이것은 프로그램인가요? * 오픈프레임웍스는 [program](http://en.wikipedia.org/wiki/Computer_program)이나 [application](http://en.wikipedia.org/wiki/Software_application)자체는 아닙니다만, 여러분이 오픈프레임웍스를 사용해 여러분의 프로그램과 어플리케이션을 작성할 수 있습니다.

- *이것은 프로그래밍 언어인가요?* 오픈프레임웍스가 자체의 [프로그래밍 언어](http://en.wikipedia.org/wiki/Programming_language)를 구성하지는 않습니다. 오픈프레임웍스로 작성할때 작성하는 언어는 [C++](http://en.wikipedia.org/wiki/C%2B%2B)입니다.

- *그렇다면 이것이 라이브러리인가요?* 오픈프레임웍스는 사실 몇몇 [소프트웨어 라이브러리들](http://en.wikipedia.org/wiki/Software_library)로 만들어졌습니다만, 정확하게 말해 이러한 라이브러리들을 통합한다는 의미에서 보다 적절한 표현으로 소프트웨어 프레임워크라고 할 수 있습니다.

- *소프트웨어 프레임워크가 뭔가요?* [소프트웨어 프레임워크](http://en.wikipedia.org/wiki/Software_framework)는 미리 만들어진 소프트웨어 기본 구조의 일종으로, 프로그래머가 어플리케이션이 해야만 하는 것들의 상위레벨 디테일들을 커스텀하기 위해 어플리케이션이 필요로 하는 하위 레벨 기능의 모든 것을 제공하도록 디자인되어있습니다. 프레임워크를 사용하는것과 라이브러리를 사용하는것의 차이점 중 하나는, 제어의 흐름이 [반대](http://en.wikipedia.org/wiki/Inversion_of_control)라는 점입니다. 라이브러리는 여러분의 코드에 의해 바로 제어되어 일종의 작업을 수행합니다. 프레임워크에서 여러분의 코드는 프레임워크에 제어되는 이벤트에 응답하고, 다른 라이브러리의 기능에 접근하기 위해 프레임워크를 인터페이스처럼 사용합니다.

복잡하게 들리나요?

사실 많은 다른 멀티미디어 저작 환경들 또한 덜 투명하게 동작하지 않다 할지라도 이런 방법으로 동작합니다.

이런 상황을 고려해봅시다: 당신은 작가이자 당신의 영화를 감독하고 있으며, 영화 제작사와 함께 작업하기로 결정했습니다. 제작회사는 장소를 예약하고, 모든 시설을 제공하고, 카메라 크루, 조명감독, 사운드 엔지니어 등 중요한 스태프들을 찾습니다. 이렇게 해야 모든 이들이 세트에 정시에 도착하여 필요할 때 작업이 가능하죠, 당신도 포함해서요. 당신의 역할은 세트장에 모든인원이 준비가 되었을 때 뭘 해야할지 결정하는 겁니다. 오픈프레임웍스는 여러분의 프로그램에서의 영화 제작회사와 같습니다. 관리해야할 것, 필요한 디테일등을 관리해주므로 여러분이 창작에만 몰두할 수 있게 해주죠.


## C++는 프로그래밍 언어입니다

앞 섹션에서 오픈프레임웍스는 프로그래밍 언어가 *아니*라, [`C++`](http://en.wikipedia.org/wiki/C%2B%2B)프로그램을 위한 소프트웨어 프레임워크라고 했습니다. 그렇다면 C++은 뭔가요?

노트 : 이 문서는 여러분이 오픈프레임웍스를 통해 `C++`언어에 익숙해지도록 안내하는 것을 목표로 하고 있습니다. 하지만 이는 bottom-up 방식으로 `C++` 를 소개하는 것에 너무 깊게 탐구하게 될 경우 튜토리얼의 범위를 벗어나게 되므로, 이후에 리스트된 추가적인 부록 자료들을 살펴본다면 많은 도움이 될 것입니다.

`C++`은 [C 언어](http://en.wikipedia.org/wiki/C_)(프로그래밍 언어)의 확장으로, 1979년에 벨 연구소에 의해 개발되었습니다. 이 두 언어 모두 세상의 어떠한 컴퓨터 플랫폼에서도 동작이 가능한 범용 컴퓨터 언어입니다. 대부분의 기본 C++ 프로그램은 아래와 같이 생겼습니다:

```cpp
// my first program in C++

#include <iostream>
using namespace std;

int main()
{
  cout << "Hello World!\n";
  return 0;
}
```

TIP : 이 프로그램의 한줄한줄은 [cplusplus.com "프로그램의 구조"](http://www.cplusplus.com/doc/tutorial/program_structure/)튜토리얼에서 얻으실 수 있습니다.

이후 컴파일러를 통해 실행되면, 이 코드는 완전히 실행가능한 프로그램으로 생성됩니다. 이 프로그램은 콘솔에 "Hello World!" 를 출력하는 아주 단순한 명령행 프로그램입니다만, 그럼에도 프로그램이지요. 아래 단계를 통해 직접해보실 수 있습니다:

WARNING : 이 단계는 플랫폼에 따라 약간씩 다릅니다. 아래 지시들은 매킨토시 운영체제를 위한것으로, 실행을 위해 XCode가 설치되어있어야 합니다.

### 여러분의 첫 C++ 프로그램 컴파일하기

![IMG](/tutorials/01_introduction/000_introduction/PlainText.png)

- 위의 코드를 텍스트파일에 붙여넣고 바탕화면에 *hello.cpp* 로 저장합니다.(만약 여러분이 텍스트 편집기를 사용한다면, 저장할때 "rich text" 나 다른 포맷이 아닌, plain text" 로 저장해야 합니다.)
- 맥에서는, /응용프로그램/유틸리티로 가서, 터미널.app을 더블클릭합니다. 리눅스에서는, 터미널을 엽니다.
- 아래의 명령을 터미널 윈도우에 입력하고, 각 라인뒤에 엔터를 입력합니다:

```bash
cd Desktop
g++ -o hello hello.cpp
./hello
```

- 바탕화면으로 이동("디렉토리 변경")합니다.
- [g++](http://gcc.gnu.org/)프로그램을 이용하여 hello.cpp(소스코드 파일)를 "hello"라는 프로그램으로 컴파일합니다.
- 방금 생성된 "hello"를 실행합니다.

결과는 아래와 같습니다:

![IMG](/tutorials/01_introduction/000_introduction/HelloWorld.png)

축하드립니다, 여러분은 방금 여러분의 첫번째 C++프로그램을 생성(그리고 실행)하였습니다! 바탕화면에 아래와 같은 화면이 보여질 것입니다:

![IMG](/tutorials/01_introduction/000_introduction/hello.png)

이는 아마도 여러분이 사용해왔던 프로그램과는 다르게 보입니다 -- 그리픽을 사용하며 윈도우를 실행하는 깜찍한 아이콘을 갖고 있는 그런 프로그램들 말이죠 -- 하지만 그럼에도 이것도 프로그램입니다. 사실, 충분이 깊게 파고들면, 컴퓨터의 모든 프로그램은 'hello' 프로그램과 같습니다. 나머지는 장식같은 것이죠.

중요: 지금 몇몇 분들의 비명소리가 들리는군요, 하지만 걱정마세요! 오픈프레임웍스로 시작하면 훨씬 흥미로워질테니깐요. 이 예제는 단지 C++ 기본적인 하위레벨을 보여주기 위한 것입니다. 아마 여러분은 다시는 명령행 모드에서 커맨드라인 프로그램을 컴파일할 일이 없을겁니다.

### 컴파일러가 뭐죠? 그리고 IDE는요 ? 

Flash나 프로세싱과 같은 프로그램을 사용해보셨다면, 코드를 작성하고 결과를 보기위해 "플레이 버튼을 누르는" 과정에 익숙하실 겁니다. 이것을 "컴파일" 또는 "컴파일링"이라고 하며, 이것이 바로 앞 섹션에서 했던 겁니다. 비디오 편집에 익숙하신 분이라면, 컴파일링은 렌더링과 비슷합니다. 개념은 "사람이 읽을 수 있는"코드를 컴퓨터가 실행할 수 있는 포맷으로 번역해야 한다는 것입니다. C, C++, Java, Objective-C, Fortran, Lisp, Pascal... 이것들은 모두  [컴파일된 언어](http://en.wikipedia.org/wiki/Compiled_language) 입니다. 이것들이 숨은 것처럼 보여지지듯, 이 모든 언어들은 "사람이 읽을 수 있다"고 가정합니다. 이것들은 명확하게 작성되고, 읽히며 사람이 이해할 수 있습니다. 하지만 어떤 언어로 시작하든, 결국에는 컴퓨터가 이해할수 있는 무언가로 번역됩니다. 이를 [기계 코드](http://en.wikipedia.org/wiki/Machine_code)라고 합니다..

NOTE: PHP나 Python과 같은 몇몇 언어들은, "스크립트 언어"라고 합니다. 이 언어들은 컴파일링이 필요하지만, 컴파일과정은 프로그램 실행 직전에 발생합니다.

여러분의 코드를 가져다가 기계코드로 번역하는 작업을 하는 프로그램을 "컴파일러"라고 합니다. [GCC](http://gcc.gnu.org/)는 가장 유명한 컴파일러중 하나입니다. 이녀석은 다양한 언어들을 컴파일 할 수 있습니다. GCC는 컴파일링을 위해서는 훌륭하지만, 정확히 어떻게 프로그램에게 여러분이 원하는 것을 하라고 전달하는 방법을 이해하는 것은 혼란스럽고 머리가 아픈 주제입니다. 앞 섹션에서는, "g++ -o hello hello.cpp"라는 아주 간단한 명령을 통해 프로그램을 컴파일 했습니다. 하지만 라이브러리를 사용한다거나, 특정 프로세서를 위해 코드를 최적화한다거나, 이미지 등등의 리소스들로 어플리케이션을 번들링하기 등등의 경우, 적당히 복잡한 오픈프레임웍스 프로젝트를 컴파일할 떄에는 수백라인의 특정한 문법과 다수의 헬퍼 도구들 가져오도록 GCC에게 말해줘야합니다. 이건 엄청나게 복잡한 과정이지요.

따라서 대신, 대부분의 개발자들은 코드 프로젝트를 관리하고 생성하는데 [IDEs (Integrated Development Environments)](http://en.wikipedia.org/wiki/Integrated_development_environment)를 사용합니다. 대부분의 IDE는 텍스트 데이터, 파일관리자, 컴파일러뿐만 아니라, 컴파일 프로세스의 세부사항 및 옵션의 모든것을 커스터마이징 할 수 있는 GUI인터페이스들을 포함하고 있습니다. [몇몇 유명한 IDE들](http://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments)로는: Xcode, 비주얼 스튜디오, CodeBlocks, Eclipse, Netbean이 있습니다. 운영체제와 언어들을 위한 IDE는 많이 있습니다. 몇몇 IDE들은 특정 언어를 위한것도 있고, 다양한 언어들을 지원하기도 합니다.

*아마도* 여러분은 Flash,프로세싱, VVVV, MaxMSP들로 모면할 수 있을수도 있습니다 -- 대부분의 중요한 기능들이 있지요. IDE가 이런 툴들과 다른점이라면 일반적으로 비어있다는 점입니다 -- IDE는 특정한 기능을 포함하지 않습니다. 언급한 도구들은, 반대로, 일반적으로 특정 목적을 위해 최적화된 다양한 기능을 내장하고 있습니다. 예를들어 Flash는 웹에서 동작하는 프로그램을 컴파일하고, 프로세싱은 빠른 프로토타이핑을 위한 도구라고 할 수 있죠.

오픈프레임웍스는 분명히 많은 기능들을 포함하고 있습니다. 오픈프레임웍스의 차이점이라면, 자신만의 IDE를 포함하고 있지 않다는 점입니다. 기술적으로, 여러분이 오픈프레임웍스 프로젝트를 생성하기 위해서 어떠한 IDE라도 사용할 수 있습니다. 하지만, 컴파일러와 붙이는 작업은 어려울 수 있습니다. 어떤 복잡한 IDE라도 프로젝트를 세팅하는것 역시 복잡하고 지루할 수 있습니다. 오픈프레임웍스에서는 주요한 3가지 플랫폼과 3종류의 다른 IDE를 위한 프로젝트 제작 탬플릿이 공을 들여 구현되어 있으므로, 여러분은 그냥 다운받아 코딩을 시작하시면 됩니다.

오픈프레임웍스를 시작하기 위해, 여러분의 운영제제와 IDE용 파일을 다운받아 설치할 수 있습니다. 설치를 위한 가이드는 [이곳](/ko/download)에서 찾을 수 있습니다.

### 오픈프레임웍스로 뭘 만들수 있죠?

아래의 프로젝트 모음은 오픈프레임웍스로 제작할 수 있는 범주를 보여주기 위함입니다.


#### Puppet Parade(꼭두각시 퍼레이드)

by Emily Gobeille and Theo Watson

> Puppet Parade는 Emily Gobeille와 Design I/O의 Theo Watson에 의해 만들어졌으며, 아이들이 자신의 팔을 이용해 벽에 투사되는 거대한 생명체를 조종할 수 있는 인터랙티브 설치작업입니다. 이 듀얼 인터랙티브 셋업은 아이들이 꼭두각시와 함께 행위할 수 있게 함으로써, '관객'과 꼭두각시 조종사 간의 경계를 허물고, 공간 속의 아이들과 가상의 생명체간의 대화를 통해 끊임없는 재미를 만들어냅니다.

<iframe src="http://player.vimeo.com/video/34824490?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

[더 많은 정보](http://www.creativeapplications.net/openframeworks/puppet-parade-openframeworks/)


#### Interactive Wall at UD

> Dayton 대학의 입학센터 있는 36피트의 벽은 대학내의 유망한 학생들의 일상을 담은 비디오를 보여줍니다. 벽에 비친 화면에는 생성된 패턴 그래픽이 벽을 마주본 사람들에 반응하여 계속 변화합니다.

> 화면에 가득찬 정육면체는 파도 모양으로 애니메이션되고, 관객의 존재 유무에 따라 각각이 회전하며 학생들의 경험을 담은 영상이 드러납니다. 관객들은 벽 주변을 돌아다니며 각각의 다른 영상들의 내용을 찾아내고, 탐색할 수 있습니다. 관객들이 함께 서있는 경우 그들의 실루엣은 하나가 되서 더 많은 영상을 찾아낼 수 깄습니다.  만약 벽 앞에 아무도 없을경우, 작품은 타이포그래픽 애니메이션을 동적으로 애니메이션되는 그래픽 패턴이 덮혀 보여집니다.

디자인과 개발에 대한 더 많은 영상과 자세한 내용들은 [사례연구](the http://www.flightphase.com/main_wp/case-studies/ud-interactive-wall)에서 보실 수 있습니다.

<iframe src="http://player.vimeo.com/video/27500054?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

[더 많은 정보](http://www.flightphase.com/main_wp/expanded-media/interactive-wall-at-ud)

#### Scramble Suit
by Arturo Castro and Kyle McDonald

오픈프레임웍스의 장점중 하나는 C++로 작성된 대부분의 라이브러리와 쉽게 통합 할 수 있다는 점 입니다. 이러한 장점때문에 Arturo 와 Kyle은 Kyle이 "Scramble Suit" 라고 이름붙인 필립K 딕의 1977년작 소설 "A Scanner Darkly"에서 등장한 허구의 얼굴 교체 기술을 위해 [Face Tracker library by Jason Saragih](http://web.mac.com/jsaragih/FaceTracker/FaceTracker.html)을 사용할 수 있었습니다. "A Scanner Darkly"는 착용자를 기억하지 못하게 하고 설명을 불가능하게 하는 효과적인 망토 입니다.

<iframe src="http://player.vimeo.com/video/29391633?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>


#### 왜 오픈프레임웍스죠?

오픈프레임웍스는 존재하고 있는 창의적인 코딩 프레임워크 뿐만이 아닙니다. 그렇다면 왜 여러분이 오픈프레임웍스를 사용해야(혹은 사용하지 않아야) 하나요?

- 포터블하며, 작성된 코드는 맥, 리눅스, 윈도우에서 구동될 수 있습니다.
  약간의 세팅/조정이 필요하지만, 안드로이드나 iOS로 포팅할 수도 있습니다. 0.9 릴리즈부터는 웹브라우저에서 스케치를 구동할 수도 있습니다.

- 2D/3D 그래픽스, 컴퓨터 비전, 사운드/오디오 컴퓨팅, 딥 러닝 등등 다양한 범위를 커버할 수 있는 범용적인 도구입니다. Being able to work with one tool in different fields favorites the intersection of different disciplines.  

- 다양한 하드웨어를 지원합니다. 오픈프레임웍스 코드/코어 라이브러리에서 직접 지원하지 않더라도, 여러분이 찾고 있는 하드웨어가 다른 분들이 작성한 [애드온](http://www.ofxaddons.com/categories/4-hardware-interface)을 통해 지원될 가능성을 제공합니다.

- 여러분을 지원할 수 있는 크고 활발한 커뮤니티가 있습니다.

#### 오픈프레임웍스에 관한 부가 정보들

- [오픈프레임웍스 소개](/ko/about/): 디자인 방법론을 포함하는 오픈프레임웍스에 관한 소개.
- [공식 도큐먼트](/ko/documentation/): 오픈프레임웍스를 구성하고 있는 클래스와 함수들에 대한 설명을 찾을수 있습니다.
- [오픈프레임웍스 포럼(영문)](http://forum.openframeworks.cc/): 아마도 궁금한 질문에 대한 답을 구할수 있는 최적의 곳입니다.
- [오픈프레임웍스 포럼(한글)](http://forum.openframeworks.kr/): 한국어 포럼도 있습니다!
- [Programming Interactivity](http://www.amazon.com/Programming-Interactivity-Designers-Processing-Openframeworks/dp/0596154143): 오픈프레임웍스, 프로세싱, 아두이노를 다루는 훌륭한 서적입니다.
- [Creative Applications](http://www.creativeapplications.net/)
