# exemplo de sintaxe
all: alvo # o alvo 'all' é chamado pelo comando make por padrão

alvo:	dependencia
	echo "comando 1, printa o comando antes de executar"
	@echo "comando 2, executa o comando sem printar"

dependencia:
		@echo "comando dentro do escopo de de 'dependencia'"
	@echo "executado antes do escopo 'alvo'"

#variaveis, não pode declarar dentro de um escopo
nomevar= "variavel que guarda uma string"
cmdecho= @echo
variavel:
	$(cmdecho) $(nomevar) #usar variaveis dentro de comandos com $()
%escopo: 	
	$(cmdecho) "é um alvo generico, qualquer nome que termine com 'escopo'"
	$(cmdecho) "se executar 'make nnnnnescopo' ele executa esse %escopo "make
	
