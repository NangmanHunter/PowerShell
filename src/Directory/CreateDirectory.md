# CreateDirectory
- [Single`CreateDirectory`](#singlecreatedirectory)
- [Multi`CreateDirectory`](#multicreatedirectory)
- [SubSingle`CreateDirectory`](#subsinglecreatedirectory)
- [SubMulti`CreateDirectory`](#submulticreatedirectory)


## Single`CreateDirectory`
```ps1
md 📁Directory
```
<details open>
    <summary></summary>

```ps1
md 📁Directory
```
```ps1
mkdir 📁Directory
```
```ps1
New-Item 📁Directory -ItemType Directory
```
```ps1
New-Item -Path 📁Directory -ItemType Directory
```
```ps1
New-Item -Path "📁Directory" -ItemType Directory
```
```ps1
New-Item -Path "C:\📁Directory" -ItemType Directory
```
</details>


## Multi`CreateDirectory`
```ps1
md 📁01Directory, 📁02Directory
```
<details open>
    <summary></summary>

```ps1
md 📁01Directory, 📁02Directory
```
```ps1
md 📁01Directory, 
📁02Directory
```
```ps1
md 📁01Directory, 
📁02Directory,
📁03Directory
```
```ps1
md 📁01Directory, 
📁02Directory,
📁03Directory,
📁04Directory
```
```ps1
md 📁01Directory, 
📁02Directory,
📁03Directory,
📁04Directory,
📁05Directory
```
```ps1
md 📁01Directory, 
   📁02Directory,
   📁03Directory,
   📁04Directory,
   📁05Directory
```
```ps1
md 📁01Directory 
md 📁02Directory
md 📁03Directory
md 📁04Directory
md 📁05Directory
```


```ps1
mkdir 📁01Directory, 📁02Directory
```
```ps1
mkdir 📁01Directory, 
      📁02Directory
```
```ps1
mkdir 📁01Directory, 
📁02Directory
```
</details>


`etc-src`
```
📌.
 └📁etc
 └📁src
```
> ```ps1
> mkdir etc, src
> ```
<details open>
    <summary></summary>

```ps1
mkdir etc, src
```
```ps1
mkdir src, etc
```
</details>


`01OverView`
```
📌.
 └📁01OverView
 └📁02Content
```
> ```ps1
> mkdir 01OverView, 02Content
> ```


`01SQL기본`
```
📌.
 └📁01SQL기본
 └📁02SQL활용
 └📁03관리구문
```
> ```ps1
> mkdir 01SQL기본, 
>       02SQL활용,
>       03관리구문
> ```
<details open>
    <summary></summary>

```ps1
mkdir 01SQL기본, 
02SQL활용,
03관리구문
```
```ps1
mkdir 01SQL기본, 
      02SQL활용,
      03관리구문
```
</details>


`〈폴더1〉`
```
📌.
 └📁〈폴더1〉
 └📁〈폴더2〉
```
> ```ps1
> mkdir 〈폴더1〉, 
> 〈폴더2〉
> 
> # < 🚥 〈   
> # < 🚥 ＜
> ```


## SubSingle`CreateDirectory`
```
📌.
 └📁Glossary
  └📁01SynOnym
```
> ```ps1
> mkdir Glossary/01SynOnym
> ```


## SubMulti`CreateDirectory`
```
📌.
 └📁Glossary
   └📁01SynOnym
   └📁02AntOnym
   └📁03HypOnym
```
> ```ps1
> md Glossary/01SynOnym,
>    Glossary/02AntOnym,
>    Glossary/03HypOnym
> ```  
<details open>
    <summary></summary>

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
  mkdir Glossary; 
  cd Glossary; 
  mkdir 01SynOnym, 02AntOnym, 03HypOnym;
  cd ../
  ```
- ```ps1
  md Glossary/01SynOnym,
     Glossary/02AntOnym,
     Glossary/03HypOnym
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
</details>
