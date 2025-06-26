# DirectoryCreate
- [SingleDirectoryCreate](#singledirectorycreate)
- [MultiDirectoryCreate](#multidirectorycreate)
- [SubSingleDirectoryCreate](#subsingledirectorycreate)
- [SubMultiDirectoryCreate](#submultidirectorycreate)


Alias
- CreateDirectory
- Create
- Directory
## SingleDirectoryCreate
- ```ps1
  mkdir 📁01Folder
  ```

## MultiDirectoryCreate
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



## SubSingleDirectoryCreate
```
📌.
 └📁Glossary
  └📁01SynOnym
```
- ```ps1
  mkdir Glossary/01SynOnym
  ```

## SubMultiDirectoryCreate
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
