# LaTeX 설치 가이드 (Windows)
## 인터넷 환경이 좋을 경우
- [여기](https://www.tug.org/texlive/acquire-netinstall.html)에 들어가서 `install-tl-windows.exe` 를 다운받는다.
- 실행(더블클릭)한다.
- 설치가 완료될 때까지 기다린다.

하지만 이 방법은 다운로드와 설치를 같이 하기 때문에 매우 오래 걸릴 수 있다. (>2시간)

## 인터넷 환경이 나쁘거나 없을 경우
- [여기](https://www.tug.org/texlive/acquire-iso.html)에서 `texlive2020.iso.torrent` 를 다운받는다.
- (시간 따로 내어서 인터넷 잘되는 곳에 간 뒤) 토렌트를 통해 iso 파일(약 2GB)을 얻는다.
  - 교내 인터넷망으로는 토렌트가 작동되지 않는다. 
  - 따라서 **학습관 컴퓨터 바탕화면**에 있는 이 파일을 USB로 가져가면 된다.
- iso 파일을 압축해제한 뒤 `install-tl-windows.bat` 를 찾아 실행(더블클릭)한다.
- 설치가 완료될 때까지 기다린다. (약 50분 소요)
- 참고 : 설치가 진행되는 중 설치하고 있는 창을 클릭하면 '응답 없음'이 뜰 수도 있다. 웬만하면 설치 중에는 컴퓨터를 아예 건드리지 말자.

## iso 직접 다운로드 하기
- [네이버 미러](http://mirror.navercorp.com/CTAN/systems/texlive/Images) 또는 [박기현 선생님이 관리하시는 저장소](http://gofile.me/3SyFU/mqwExIgLI)에서 texliveXXXX-XXXXXXXX.iso 파일을 다운받는다.
- 그리고 iso 파일을 압축해제한 뒤 위와 같이 한다.
- 교내망에서는 이렇게 다운로드 하면 조금 편할거 같다.

##Latex 2020 설치하기
###환경
- windows 10 64비트임
- Latex 2016버전 설치 과정
- 'install-tl-windows.exe'를 다운로드 한 후, 인터넷 좋은 곳에서 설치하는 상황임

###설치과정
- 'install-tl-windows.exe'를 더블클릭해 실행
- simple install 선택 후 next

<img src=./latex_2016_install/setup_latex8.png width=300px>

- install을 클릭하면 되겠죠?

<img src=./latex_2016_install/setup_latex9.png width=300px>

- 그럼 뭔가 압축을 풀고 설치되는거 같이 보임.

<img src=./latex_2016_install/setup_latex10.png width=300px>

- 하지만 진짜 설치는 지금부터 ^^ 'next'를 클릭

<img src=./latex_2016_install/setup_latex11.png width=300px>
- 그럼 다음의 과정들이 쭈욱~ 진행됨

<img src=./latex_2016_install/setup_latex12.png width=300px>

<img src=./latex_2016_install/setup_latex13.png width=300px>

* 응답없음이 뜨더라도 당황하지 말고 기다림
- 기다리면 뜸. 설치 디렉토리는 바꾸지 말고 그냥 'next'

<img src=./latex_2016_install/setup_latex27.png width=300px>
- 기본 paper size : a4 등 모두 체크하고 'next'

<img src=./latex_2016_install/setup_latex28.png width=300px>
- 설치 전 최종 확인. 이상없으면 그냥 'install'

<img src=./latex_2016_install/setup_latex30.png width=300px>
- 설치는 쭈욱 계속 됨

<img src=./latex_2016_install/setup_latex33.png width=300px>

<img src=./latex_2016_install/setup_latex34.png width=300px>
- 끝났으니까 'finish'
- 여기까지 오는데 빠르면 1시간.. 늦으면..... 2시간 이상 걸림 

- iso파일로 설치하면 1시간 이내로 끝난다고 함.

###설치된거 확인하기
- 설치가 완료되었으면 한번 tex으로 'hi wool'을 출력(?) 해보자
- 프로그램 목록에 들어가면 tex live 2016이 설치된게 보인다. 그 중 'TexWorks Editor'를 실행

<img src=./latex_2016_install/setup_latex36.png width=300px>

- 에디터에 다음을 입력한다.

<pre>
\documentclass{article}
\begin{document}
Hello World!
\end{document}
</pre>

<img src=./latex_2016_install/setup_latex40_1.png width=300px>

- 그리고 상단 메뉴에 녹색의 재생표시를 클릭하거나 'ctrl+T'을 입력해 조판하면 짜잔~! 뜬다.

<img src=./latex_2016_install/setup_latex40_2.png width=300px>


그럼 끝!!!! Tex live 2016 설치 끝!!

# 에디터(문서 편집기)
## TeXstudio
- **강력추천**. Windows, macOS에서 모두 사용가능.
- [TeXstudio](http://texstudio.org/) 를 다운받고 설치한다.

### TeXstudio 에서 TeXlive 설치여부 확인하기
Help - Check LaTeX Installation

## TeXworks?
- TeXlive 설치 시 기본으로 설치된다.
- **비추천**. 이거 쓰면 개고생한다.

# 첫 컴파일
- TeXstudio 실행
- File-New(단축키 Ctrl+N)
- 아래의 코드를 입력
<pre>
\documentclass{article}
\begin{document}
Hello World!
\end{document}
</pre>
- Compile(단축키 F6, 혹은 초록색 화살표 클릭)
- 밑에 뭐라뭐라고 뜨는데 일단 기다린다. `pdflatex -synctex=1 -interaction=nonstopmode "texstudio_asdf12".tex` 
- `Process exited normally`라고 뜨면 성공적으로 컴파일된 것이다. 축하합니다.
- View(단축키 F7, 혹은 초록색 화살표 두칸 오른쪽의 돋보기 클릭)
- 컴파일 결과물 pdf 가 보인다.
- 이제 파일을 저장해보자. File-Save(Ctrl+S) 로 원하는 곳에 저장.
  - tex 파일과 pdf 파일 외에도 보조파일들이 마구마구 생기니까 바탕화면 같은 곳보다는 새 폴더 안에 저장...
- 다시 컴파일해보자. 해당 폴더 안에 pdf 파일이 생겨있을 것이다.
 
## 연습
### 입문서
- 경기과학고 텍 사용자협회 제공 : ver2.0 입문서([Day0](http://latex.gs.hs.kr/files/An-Introduction-to-LaTeX/An%20Introduction%20to%20LaTeX-ver2.0_beamer/GSHSLaTeXIntro_Day0.pdf), [Day1](http://latex.gs.hs.kr/files/An-Introduction-to-LaTeX/An%20Introduction%20to%20LaTeX-ver2.0_beamer/GSHSLaTeXIntro_Day1.pdf), [Day2](http://latex.gs.hs.kr/files/An-Introduction-to-LaTeX/An%20Introduction%20to%20LaTeX-ver2.0_beamer/GSHSLaTeXIntro_Day2.pdf))
- 잘 알려진 입문서로는 [142분동안 익히는 LaTeX](http://texdoc.net/texmf-dist/doc/latex/lshort-korean/lshort-kr.pdf)이 있다.

### 각 코드의 의미 알아내기
- [경기과학고 TeX 사용자협회](http://latex.gs.hs.kr)에서 '예시' 또는 '양식' 다운로드.
- tex 파일들 열고 컴파일해보면서 결과물을 확인하고, 코드를 줄 단위로 과감히 **바꿔보면서**(삭제, 복사, 수 바꾸기 등) 컴파일하고 결과물이 어떻게 바뀌었는지 보며 각 줄의 코드가 갖는 의미를 알아보자.
- 코드와 View(F7)을 같이 띄운 상태에서는 코드의 특정 부분을 우클릭한 후 `Go to PDF` 하면 pdf에서 해당 파트가, pdf에서 특정 부분을 우클릭한 후 `Go to Source` 하면 코드에서 해당 파트가 잠시 연노란색으로 강조된다.


### 32기 박승원이 작성한 글에 추가함.
