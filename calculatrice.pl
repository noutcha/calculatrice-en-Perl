#============================================================
#========= Exercices pour debutant.e =================
# Script : calculatrice.pl
# Auteur: Michel Noutcha  <noutchamichel@yahoo.fr>
# Date : 23/02/2018
#==============Description du programme ==========================================
# Ce Ce programme simule le fonctionnement d’une calculatrice simple. 
#Il permet de réaliser les quatre opérations de base que sont l’addition, 
#la soustraction, la multiplication et la division. Destiné à des élèves de 
#l’école primaire, il utilise les symboles +, -, x et : pour réaliser respectivement 
#l’addition, la soustraction, la multiplication et la division. Il ne réalise en outre 
#que les divisions entières et affiche le reste de ces divisions si nécessaire. Il vérifie 
#bien évidemment que, dans le cas d’une division, le dénominateur n’est pas 0.
#============================================================
# Usage :
# perl calculatrice.pl <nombre1> <signe> <nombre2>
#============================================================
# recuperation des arguments
$nb1 = $ARGV[0]; # recuperation du premier argument
$signe = $ARGV[1]; # recuperation du second argument(le signe)
$nb2 = $ARGV[2]; # recuperation du troisieme argument

#on doit controler systematiquement le signe et effectuer l'operation correspondante

if($signe eq "+") #addition
{
	$resultat = $nb1+$nb2;
	print("$nb1 $signe $nb2 = $resultat");
}elsif($signe eq "-") #soustraction
{
	$resultat = $nb1-$nb2;
	print("$nb1 $signe $nb2 = $resultat");
}elsif($signe eq "*") #multiplication
{
	$resultat = $nb1*$nb2;
	print("$nb1 $signe $nb2 = $resultat");
}elsif($signe eq ":")  #pour la division on va verifier la division par zero
{
	if($nb2 == 0){
			print("La division par zero n’est pas autorisee");
	}else{
	
		$resultat = int($nb1/$nb2);
		$reste = $nb1 % $nb2; # ici on calcul le modulo(reste de la division)
		print("$nb1 $signe $nb2 = $resultat (reste: $reste)");
	}
}
else{ #penser au cas autres
		print("Seule les operation d'addition, soustraction, multiplication et division sont autorisees \n(pour la division utilisez le symbole':') "); 

}
