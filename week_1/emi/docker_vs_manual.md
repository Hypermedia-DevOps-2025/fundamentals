## Diferente usor notabile intre Docker si instalare manuala (opinie personala)

- greu de inteles initial Docker-ul si multe chestii de luat in considerare  
- instalarea manuala e usoara dar, din ce am observat, are dezavantaje  
- avantajul Docker-ului: containerul e ca o valiza – daca functioneaza, oriunde o duci va da acelasi rezultat (i hope not a bomb 😅)

---

## Instalare manuala

- ia mult timp pana instalezi chestiile si consuma resurse  
- mai usor de implementat un container facut de altcineva  
- daca vrei sa scapi de anumite tehnologii, sunt greu de sters  
- unele servicii raman active permanent, chiar daca nu ai nevoie de ele tot timpul

---

## Docker

- imaginile sunt un fel de sabloane: de exemplu, pornesti de la o imagine Ubuntu goala  
- creezi un container cu ce ai nevoie (bash, MariaDB etc.) => un sistem impachetat, reutilizabil  
- presupun ca e bun la scalabilitate (mai multe calculatoare conectate intre ele)  
- adauga un layer de protectie

