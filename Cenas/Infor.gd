extends Node2D
onready var infor =$"."
onready var timer =$Timer
var fecha_info=false
var info_titulo=["Sobre a minha vida:","Minha inserção no mundo artístico:"," A escola do Pirambu:",
"A premiação da 33° Bienal de Veneza em 1966:", "Homenagens e exposições:"]
var info=["'Nasci no Alto Tejo no Acre, por volta de 1910, fui filho de uma cearense e um índio peruano, embora não tivesse tido acesso à educação formal, fui um artista autodidata que aprendeu arte sozinho. Antes de ser reconhecido como artista sofri fortes estereótipos ligados a minha condição de saúde mental. A migração foi um aspecto marcante em minha vida, após minha mudança do Acre, fui para o interior do Ceará e devido a seca, posteriormente fixei minha residência em Fortaleza, no bairro do Pirambu, minhas mudanças estão estritamente ligadas ao fenômeno da seca e do processo de segregação na cidade.'",
"'Fui descoberto artisticamente pelo artista suiço Jean Pierre Chabloz. Na região do Pirambu pintei as paredes das casas dos pescadores na Praia Formosa com giz, carvão e mato. Representei para os críticos uma arte genuinamente primitivista, marcada pela construção de uma temática colorida, com pássaros, cobras e elementos que remetem às lendas, a vida amazônica e nordestina a qual vivi. Tive dificuldades de me inserir e compreender o circuito burguês da arte que estava em voga.'",
"'A escola do pirambu foi o primeiro ateliê de arte que eu criei para garantir a alta demanda em torno da minha arte. Ela era formada por crianças e jovens moradores e da circunvizinhança da minha casa no Pirambu. A escola também representou o surgimento de novas temáticas e novos traços na minha pintura'",
"'12 guaches produzidos por mim participaram que me permitiram receber o prêmio de Menção Honrosa. Como homem afro-indígena fui alvo de racismo quando foi cogitada a minha participação na comitiva artística que representaria o Brasil em Veneza, agentes responsáveis pela delegação brasileira de arte procuraram impedir a minha participação. Nesse momento, apesar da tentativa de inviabilizar meu trabalho, os juízes outorgam pela primeira vez o prêmio de menção honrosa a mim e a outros dois artistas participantes.'",
"'Em 18 de julho de 2013 foi inaugurada a estação de metrô Chico da Silva, o Carnaval de 2020 em Fortaleza teve o tema: Fortaleza em Cantos e Cores de Chico e 2020 foi meu  110° aniversário. Algumas das minhas principais exposições foram em 1944 no III Salão Cearense de Pintura, em 1945 na Galeria Askanasy e em 1978 na Bienal Latino-Americana de São Paulo.'"]
var info_footer=["Os dois grandes autores que escreveram sobre Chico foram Roberto Galvão e Estrigas, o artista veio a falecer no dia 5 de dezembro de 1985.",
"Roberto Galvão classificou a arte de Chico em duas fases: a fase individual e a fase da Escola do Pirambu.",
"Chico foi muito solicitado como artista pelo universo burguês da arte, principalmente do Turismo.",
"O artista se tornou um dos grandes representantes de dois estilos: a Arte Naif e o Primitivismo no Brasil. ",
"Em 1959, Chico é apresentado ao reitor Antônio Martins Filho da Universidade Federal do Ceará e iniciou um trabalho como servidor no Museu de Arte por 2 (dois) anos."]
onready var label_info=$Label
onready var label_info_titulo =$Label2
onready var label_info_footer =$Label3

func abre_info():
	fecha_info=false
	timer.start()
	
func _on_Pino_infor(valor):
	label_info_titulo.text=info_titulo[valor]
	label_info.text=info[valor]
	label_info_footer.text=info_footer[valor]
func bt_fecharinfo_clicado():
		infor.visible=false
		

func _on_Timer_timeout():
	if(fecha_info==false):
		infor.visible=true
		fecha_info=true
		
