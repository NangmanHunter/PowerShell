# ```
# 📌.
#  └📁Glossary
#    └📁01SynOnym
#    └📁02AntOnym
#    └📁03HypOnym
# ```
md Glossary/01SynOnym,
   Glossary/02AntOnym,
   Glossary/03HypOnym


# ♻️EquivalentCommands
mkdir Glossary
cd Glossary
mkdir 01SynOnym, 02AntOnym, 03HypOnym


mkdir Glossary; cd Glossary; mkdir 01SynOnym, 02AntOnym, 03HypOnym


mkdir Glossary; 
cd Glossary; 
mkdir 01SynOnym, 02AntOnym, 03HypOnym


mkdir Glossary; 
cd Glossary; 
mkdir 01SynOnym, 02AntOnym, 03HypOnym;
cd ../


md Glossary/01SynOnym,
   Glossary/02AntOnym,
   Glossary/03HypOnym


mkdir Glossary/01SynOnym,
      Glossary/02AntOnym,
      Glossary/03HypOnym


("01SynOnym","02AntOnym","03HypOnym") | % { mkdir "Glossary/$_" }


"01SynOnym", "02AntOnym", "03HypOnym" | ForEach-Object {
    New-Item -ItemType Directory -Path "Glossary/$_"
}


foreach ($name in "01SynOnym", "02AntOnym", "03HypOnym") {
    New-Item -ItemType Directory -Path "Glossary/$name"
}