## La inceput crearea unui Docker custom:
 - am facut Dockerfile pentru a putea pune pe localhost:8080 cu ajutorul nginx.
 - folosind imaginea nginx:alpine practic imi hostez index.html.

 ---

## Conexiunea dintre container-ul pentru nginx si container-ul pentru mariadb:
 - am container pentru nginx care imi hosteaza fisierul html
 - am un container pentru mariadb pentru baza de date cu volum atasat mariadb-data
 - conexiunea dintre ele se face pe un network comun spre exemplu network-app creat
	docker network create network-app
 - inainte de creearea celor doua containere trebuie sa le pun pe acelasi network adaugand --network network-app la amandoua.

## Crearea celor doua containere cu docker-compose.yml :
 - practic eu imi definesc tot setup-ul aplicatiei intr-un singur.
 - fata de crearea manuala ale celor doua containere este mai simplu deoarece se creeaza ele automat dupa folosierea comenzii: docker-compose up -d
 - automat , eficient , fara timp pierdut de scris comenzi in terminal
 
