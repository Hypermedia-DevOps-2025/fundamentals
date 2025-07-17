Diferente usor notabile intre docker si instalare manuala (opinia personala):
	-greu de inteles inital docker-ul si multe chestii de luat in considerare
	-instalarea manuala e usoara dar din ce am observat are dezavantaje
	-avantajele docker-ului container e ca si cum ai pune totul intr-o valiza si daca functioneaza oriunde ai transfera valiza ea va da acelasi rezultat (i hope not a bomb)

Instalare manuala:-ia mult timp pana instalezi chestiile si mananca si din resurse sa ai toate tehnologiile. Mai usor de implementat un container de la altcineva care sa fie folosit
		  -daca vrei sa scapi de anumite tehnologii,sunt greu de sters dupa manual
		  -alta chestie nu prea buna ca unele servicii iti raman active tot timpul pe durata folosirii sistemului si poate nu ai vrea tot timpul sa ruleze in background.
Docker: -din ce am inteles imaginile sunt un fel de sablon, plec spre exemplu de la o imagine de ubuntu care nu face nimic. Urmeaza sa fac un container pentru a invia acea imagine sa pot lucra de ex in bash si ii adaug si MariaDB => un sistem impachetat care pot sa ma intorc oricand la el.
	-presupun ca e bun la scalabilitate , cum se pot conecta mai multe calculatoare intre ele pentru a crea un network aici de ce nu s-ar aplica acelasi principiu :)))
	-mai adauga un lair de protectie
