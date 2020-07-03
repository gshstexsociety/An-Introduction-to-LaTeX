# LaTeX 및 편집 도구 설치 가이드
## LaTeX 설치
### 1. Windows
#### 1-1. 네트워크로 설치
 - [여기](http://mirror.navercorp.com/CTAN/systems/texlive/tlnet/install-tl-windows.exe)에서 `install-tl-windows.exe`를 다운받는다.
 - 다운받은 폴더에서 Shift+오른쪽 클릭 후 `여기에 PowerShell 창 열기`를 선택한 후, 아래 명령어를 입력한다.
 ```
 .\install-tl-windows.exe --repository http://mirror.navercorp.com/CTAN/systems/texlive/tlnet
 ```
 - 설치 과정을 진행한다.
 
#### 1-2. ISO 파일로 설치
 - [네이버 미러](http://mirror.navercorp.com/CTAN/systems/texlive/Images) 또는 [박기현 선생님이 관리하시는 저장소](http://gofile.me/3SyFU/mqwExIgLI)에서 texliveXXXX-XXXXXXXX.iso 파일을 다운받는다. 다운로드한 후, 경로에 한글이나 띄어쓰기가 없는 위치(ex. C:\)에 파일을 옮긴다.
 - iso 파일을 압축해제한 후 `install-tl-windows.bat`을 실행한다.
 - 설치 과정을 진행한다.
 
### 2. Mac
--수정중--
### 3. Linux
#### 1-1. 네트워크로 설치
 - [여기](http://mirror.navercorp.com/CTAN/systems/texlive/tlnet/install-tl)에서 `install-tl`을 다운받는다.
 - 터미널에서 `./install-tl --repository http://mirror.navercorp.com/CTAN/systems/texlive/tlnet`을 입력한다.
 - 설치 과정을 진행한다.
 
#### 1-2. ISO 파일로 설치
 - [네이버 미러](http://mirror.navercorp.com/CTAN/systems/texlive/Images) 또는 [박기현 선생님이 관리하시는 저장소](http://gofile.me/3SyFU/mqwExIgLI)에서 texliveXXXX-XXXXXXXX.iso 파일을 다운받는다.
 - iso 파일을 압축해제한 후 `install-tl`을 실행한다.
 - 설치 과정을 진행한다.
 
## 에디터(문서 편집기)
### TeXstudio
- **강력추천**. Windows, macOS에서 모두 사용가능.
- [TeXstudio](http://texstudio.org/) 를 다운받고 설치한다.

#### TeXstudio 에서 TeXlive 설치여부 확인하기
Help - Check LaTeX Installation

### TeXworks?
- TeXlive 설치 시 기본으로 설치된다.
- **비추천**. 이거 쓰면 개고생한다.

## 첫 컴파일
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
