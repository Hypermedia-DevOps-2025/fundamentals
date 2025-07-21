Cum funsctioneaza dockerfile este un manual de instructiuni unde eu ii adaug imaginea de la care sa poneasca ii adaug ce fisiere sa includa ce comenzi sa ruleze si cum sa configureze containerul final 
Poate fi rulata usor ulterior pe orice device. 

Cum docker network permite comunicarea intre cele 2 containere
Un docker network functioneaza ca si o retea LAN in leptop.Containerele care sunt atasate de docker network pot comunica intre ele folosind numele ca hostnames. 
Daca ar fi connectate la un alt docker network nu ar putea comunica intre ele.Docker aloca o adresa DNS  la fiecare network.
Cand containerele sunt adugate la un network docker le genereaza o adresa IP in subnet.
Porturile din containere (ex 80 ce am folosit pt ngix sau 3306 pt mariabd ) sunt accesabile de alte containere by default
Avantajeunui 
Pot segmenta usor adica pot control ace containere pot comunica unu cu altu prin intermediul
network. Poti separa usor diferite parti ale aplicatiei.


Multiple docker run commands 
Pot controla fiecare container individual le pot da assign la cenetwork vreau eu si pot controla cu ce alte containere sa comunice dar sunt foarte multe lucruri de controlat si verificat precut network-ul containerele variabilele volumele etc.
Fiecare container trebuie sa il pornesc/ opresc individual.
Pot segmenta usor adica pot controla ce containere pot comunica unu cu altu prin intermediul
network. Poti separa usor diferite parti ale aplicatiei.

Docker Compose
Toata aplicatia mea am facuta in docker-compose.yml . Pot opri porni totul cu o singura comanda(docker-compose up -d) nu mai trbuie sa opresc/pornesc totul individual. Toate volumele containerele etc. sunt menegeriate de de docker automat(sau cel putin eu asa am inteles) .  a durat putin pana mi-am dat seam ace ar trebuie sa contina docker-compose.yml si ce este cu viata lui.
