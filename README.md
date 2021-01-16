# RIDIBatang-subset
리디바탕은 

## 사용법
먼저 파일들을 적당한 자리에 넣어준 후 둘 중 한가지 방법으로 추가하시면 됩니다.
```html
<link href="/path/to/RIDIBatang-subset-local.css" rel="stylesheet">
```
```css
@import url('/path/to/RIDIBatang-subset-local.css');
```
웹폰트 파일들을 서버에 둘 수 없다면 jsDelivr를 사용할 수도 있습니다.
```html
<link href="/path/to/RIDIBatang-subset-local.css" rel="stylesheet">
```
```css
@import url('//cdn.jsdelivr.net/gh/teamYOMI/RIDIBatang-subset/RIDIBatang-subset-web.css')
```
이후 `font-family`에서 `RIDIBatang-subset`을 사용하시면 됩니다.

## 포함되어 있는 글자들

* KS X 1001(완성형) 한글 2350자
* 알파벳 및 한글 자모, 숫자, 특수문자
* '노민지', '윤민구'님의 'KS 코드 완성형 한글의 추가 글자 제안'에 따른 한글 224자
* 개인적으로 추가한 한글(`script/glyphs.txt` 하단 참조)

## 용량 감소
원본 파일(OTF)와 비교해서 WOFF/WOFF2가 얼마나 줄어들었냐면...

* RIDIBatang: 1.38MB → 307KB(WOFF) / 259KB(WOFF2)

## 직접 서브셋 만들기
`convert.sh`는 우분투 환경에서 구동한다는 가정 하에 작성되었습니다. 스크립트 파일과 원본 OTF 파일을 같은 디렉토리에 넣어주세요. 결과물은 `output` 디렉토리에 저장됩니다.
  
필요한 패키지:
* Python3: `sudo apt install python3`
* fonttools: `pip3 install fonttools`

## 기타
개인적으로 ['스포카 한 산스'](https://spoqa.github.io/spoqa-han-sans/ko-KR/)를 직접 서브셋으로 만들어 쓰시는 것도 좋다고 생각합니다. 마침 [이 글](https://spoqa.github.io/2017/02/15/using-shs-as-webfonts.html)에 서브셋을 만드는 법에 대해 간략하게 소개하고 있네요.
  
도움이 된 글: [웹폰트 경량화](https://www.44bits.io/ko/post/optimization_webfont_with_pyftsubnet)

## 원본 라이선스
원본 폰트인 [리디바탕](https://ridicorp.com/ridibatang/) 폰트는 [SIL Open Font License, Version 1.1](https://scripts.sil.org/OFL)하에 배포되었습니다.
