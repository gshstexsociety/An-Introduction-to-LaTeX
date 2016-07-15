# LaTeX 설치 가이드 (Windows)
## 인터넷 환경이 좋을 경우
- [여기](https://www.tug.org/texlive/acquire-netinstall.html)에 들어가서서 `install-tl-windows.exe` 를 다운받는다.
- 실행(더블클릭)한다.
- 설치가 완료될 때까지 기다린다.

하지만 이 방법은 다운과 설치를 같이 하기 때문에 경우에 따라서는 매우 오래걸릴 수 있다. (>1시간)

## 인터넷 환경이 나쁘거나 없을 경우
- [여기](https://www.tug.org/texlive/acquire-iso.html)에서 `texlive2016.iso.torrent` 를 다운받는다.
- (시간 따로 내어서 인터넷 잘되는 곳에 간 뒤) 토렌트를 통해 iso 파일(약 2GB)을 얻는다.
- 이 iso 파일은 우리학교 **학습관 컴퓨터 바탕화면**에 있기도 하다.
- iso 파일을 압축해제한 뒤 `install-tl-windows.bat` 를 찾아 실행(더블클릭)한다.
- 설치가 완료될 때까지 기다린다. 

# 에디터(문서 편집기)
## TeXstudio
- **강력추천**. Windows, macOS에서 모두 사용가능.
- [TeXstudio](http://texstudio.org/) 를 다운받고 설치한다.

## TeXworks
- 기본으로 설치된다.
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
- - tex 파일과 pdf 파일 외에도 보조파일들이 마구마구 생기니까 바탕화면 같은 곳보다는 새 폴더 안에 저장...
- 다시 컴파일해보자. 해당 폴더 안에 pdf 파일이 생겨있을 것이다.
 
## 연습
- [경기과학고 TeX 사용자협회](http://chanspi.ddns.net/gshs/LaTeX/)에서 '예시' 또는 '양식' 다운로드.
- 마찬가지의 방법으로 tex 파일들 열고 컴파일해보면서 결과물을 확인하고, 코드를 과감히 **바꿔보면서** 컴파일하고 결과물을 보며 각 코드의 의미를 살펴보자.
- ver2.0 입문서([Day0](http://chanspi.ddns.net/gshs/LaTeX_Files//An-Introduction-to-LaTeX/An%20Introduction%20to%20LaTeX-ver2.0_beamer/GSHSLaTeXIntro_Day0.pdf), [Day1](http://chanspi.ddns.net/gshs/LaTeX_Files//An-Introduction-to-LaTeX/An%20Introduction%20to%20LaTeX-ver2.0_beamer/GSHSLaTeXIntro_Day1.pdf), [Day2](http://chanspi.ddns.net/gshs/LaTeX_Files//An-Introduction-to-LaTeX/An%20Introduction%20to%20LaTeX-ver2.0_beamer/GSHSLaTeXIntro_Day2.pdf)) 도 읽어보자.
