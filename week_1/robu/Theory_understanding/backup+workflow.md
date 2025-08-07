Un container este o instanta a unei imagini cand facem backup la un container salvat totul inauntrul containerului.
Dezavantaje daca stergem continerul datele for fi pierdute iar acestea pot fi updatate sau schimbate usor.
Utile atunci cand setul de date este mic.

Cand facem un backup la volume asiguram datele intrucat volumele functioneaza in afara containerelor.
Avantajele ar fi ca poti face backup sau restore fara sa te atingi de containere si suporta disater recovery prin recuperare datelor din volum. 

Backup proceduri

-Backup frecvent recomandat o data pe zi sau o dat pe saptamana

-Stocarea Backup stocate in afara docker host , pot fi incriptate si tine backupul pana la 30 de zile

          Understand workflow syntax: triggers, jobs, steps, and actions

Triggers : defineste cand workflow-ul ruleaza
Jobs : Un workflow are mai multe jobs inside care ruleaza independent intro secventa
 Steps : sunt comenzi sau actiuni executate inauntru joburilor
Actions : Actions are reusable units, either official or community-made, that do common tasks, like checking out code, setting up environments