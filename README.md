# Asymptote: The Vector Graphics Language
공주대학교 문서작성 워크숍 2021에서 **Asymptote: The Vector Graphics Language**를 주제로 발표한 자료입니다.

## Asymptote란?
본 발표에서는 Asymptote에 보다 쉽게 접근할 수 있도록 여러 예시들을 소개하였습니다.

Asymptote는 벡터 그래픽스 언어로, 좌표 기반의 2차원 및 3차원 이미지를 그릴 수 있습니다.
Asymptote로 생성되는 이미지는 LaTeX을 사용해서 레이블을 조판하기 때문에, TeX 기반 문서들에 어울릴 뿐만이 아니라 다양한 기술적 문서들에 첨부하기에 적합합니다.

Asymptote를 사용하면 3차원 그림을 C/C++ 기반의 문법으로 쉽게 작성할 수 있습니다.
비슷한 역할을 하는 Ti*k*Z의 특이한 문법에 비하여 Asymptote의 확실한 장점입니다.
이는 Ti*k*Z가 TeX 위에 만들어진 PGF 언어로 만들어졌기 때문입니다.
반대로 Ti*k*Z를 사용하면, 문서 안에 그림을 넣을 때 별도의 프로그램 없이 TeX 엔진만으로 조판을 할 수 있다는 장점으로 이어집니다.
다만 2차원 그림을 그릴 때는 Ti*k*Z가, 3차원 그림을 그릴 때는 Asymptote가 적합하다는 점에는 큰 이견이 없을 것입니다.
나아가 Asymptote에 비해 Ti*k*Z의 사용자층이 훨씬 두텁습니다.

Asymptote는 [훌륭한 매뉴얼](https://asymptote.sourceforge.io/asymptote.pdf)을 갖추고 있을 뿐만이 아니라, [Charles Staats III](http://math.uchicago.edu/~cstaats/index.html)분이 작성한 [상세한 튜토리얼](https://asymptote.sourceforge.io/asymptote_tutorial.pdf)도 존재합니다.
본 발표자료를 통해 Asymptote에 흥미가 생기셨다면, 꼭 참고하셨으면 좋겠습니다.
참고로 공식 매뉴얼은 터미널에서
```sh
texdoc asymptote
```
명령어를 입력하여 PDF 뷰어를 통해 확인하실 수 있습니다.

## Asymptote 사용법
Asymptote는 [TeX Live](https://www.tug.org/texlive/) 배포판을 설치하면 함께 설치됩니다.
혹은 [공식 홈페이지](https://asymptote.sourceforge.io)에서 개별로 다운로드하거나 [브라우저 개발 환경](http://asymptote.ualberta.ca)에서 설치하지 않고 온라인으로 사용해볼 수 있습니다.

## 튜토리얼 자료에 관하여
[materials](materials) 디렉터리 안에서 실습자료들을 확인할 수 있습니다.
`.asy` 파일들은 본 발표의 주제인 [Asymptote](https://asymptote.sourceforge.io) 언어로 작성된 코드들입니다.
확장자를 제외한 동명의 `.pdf` 파일들이 각각에 대응하는 출력 이미지입니다.

## 발표자료에 관하여
발표자료는 macOS Monterey(12.0.1)의 Keynote(11.2)를 사용하여 제작되었습니다.
[Keynote 파일](Asymptote.key)을 직접 열어보시려면
1. macOS 혹은 iOS을 구동하는 기기에서 무료 프로그램인 Keynote에서 확인하거나
2. 그렇지 않은 운영체제에서는 최신 웹브라우저에서 iCloud.com에 접속 후 (회원이 아니라면 가입하여) 웹 기반 Keynote에서 확인할 수 있습니다.

물론, 그렇지 않더라도 [PDF로 변환된 발표자료](Asymptote.pdf)를 확인할 수 있습니다.
이 경우 움직이는 GIF 이미지 한 장을 확인할 수 없는 것을 제외하고는 보는데 제한이 없습니다.
해당 이미지는 또한 [여기](https://github.com/Zeta611/cycloidal-surface/blob/b7d057f379fdca491aa80da13971d96884fdd6ee/anim.gif)에서 원본을 볼 수 있습니다.
