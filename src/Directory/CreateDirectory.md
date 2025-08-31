# CreateDirectory
- [Single`CreateDirectory`](#singlecreatedirectory)
- [Multi`CreateDirectory`](#multicreatedirectory)
- [SubSingle`CreateDirectory`](#subsinglecreatedirectory)
- [SubMulti`CreateDirectory`](#submulticreatedirectory)


## Single`CreateDirectory`
- ```ps1
  mkdir 📁01Folder
  ```


## Multi`CreateDirectory`
- ```ps1
  mkdir 📁01Folder, 📁02Folder
  ```
- ```ps1
  mkdir 📁01Folder, 
  📁02Folder
  ```
- ```ps1
  mkdir 📁01Folder, 
        📁02Folder
  ```


```
📌.
 └📁etc
 └📁src
```
- ```ps1
  mkdir etc, src
  ```
- ```ps1
  mkdir src, etc
  ```

  
```
📌.
 └📁01OverView
 └📁02Content
```
- ```ps1
  mkdir 01OverView, 02Content
  ```


```
📌.
 └📁01SQL기본
 └📁02SQL활용
 └📁03관리구문
```
- ```ps1
  mkdir 01SQL기본, 
  02SQL활용,
  03관리구문
  ```


```
📌.
 └📁〈폴더1〉
 └📁〈폴더2〉
```
- ```ps1
  mkdir 〈폴더1〉, 
  〈폴더2〉
  ```
  - < ▶️ 〈   
  - < ▶️ ＜



## SubSingle`CreateDirectory`
```
📌.
 └📁Glossary
  └📁01SynOnym
```
- ```ps1
  mkdir Glossary/01SynOnym
  ```

## SubMulti`CreateDirectory`
```
📌.
 └📁Glossary
   └📁01SynOnym
   └📁02AntOnym
   └📁03HypOnym
```

- ```ps1
  mkdir Glossary
  ```
  ```ps1
  cd Glossary
  ```
  ```ps1
  mkdir 01SynOnym, 02AntOnym, 03HypOnym
  ```
- ```ps1
  mkdir Glossary; cd Glossary; mkdir 01SynOnym, 02AntOnym, 03HypOnym
  ```
- ```ps1
  mkdir Glossary; 
  cd Glossary; 
  mkdir 01SynOnym, 02AntOnym, 03HypOnym
  ```
- ```ps1
  mkdir Glossary/01SynOnym,
        Glossary/02AntOnym,
        Glossary/03HypOnym
  ```
- ```ps1
  ("01SynOnym","02AntOnym","03HypOnym") | % { mkdir "Glossary/$_" }
  ```
- ```ps1
  "01SynOnym", "02AntOnym", "03HypOnym" | ForEach-Object {
      New-Item -ItemType Directory -Path "Glossary/$_"
  }
  ```
- ```ps1
  foreach ($name in "01SynOnym", "02AntOnym", "03HypOnym") {
      New-Item -ItemType Directory -Path "Glossary/$name"
  }
  ```



```
📌.
 └📁00Glossary
   └📁01SynOnym
   └📁02AntOnym
   └📁03HypOnym
```
```ps1
mkdir 00Glossary/01SynOnym,
      00Glossary/02AntOnym,
      00Glossary/03HypOnym
```