# Para executar um bloco de código, basta selecioná-lo e apertar 'Ctrl + Enter'
# Alternativamente, selecione o código e pressione o botão 'Run' (canto superior direito)

# Caso haja alguma função que você não entendeu como funciona, por exemplo 'print()',
# basta digitar no console '?print()'; e a documentação aparecerá na janela do canto inferior direito

# Variáveis
name = 'André'
vec1 = c(1:10) # vetor: 1, 2, ..., 10
vec2 = seq(0, 20, by = 2) # vetor: 0, 2, ..., 20

# Impressão na tela
print(paste0('Meu nome é ', name, '!')) # paste0() concatena sem espaço adicional, em oposição à função paste()
print(vec1)

# Estrutura de controle
if (name != 'André') {
  print('Você não é o André!')
} else {
  print('Usuário autenticado!')
}

# Estrutura de repetição
for (i in vec2) {
  print(i)
}

c = 0

while (c <= 10) {
  print(c)
  c = c + 1
}

# Funções
myfunc = function (x) {
  return (x ** 2)
}

x = seq(-5, 5, by = 0.1)
y = myfunc(x)

# Gráficos (Na próxima aula, vamos gerar alguns gráficos)
plot(x, y)
