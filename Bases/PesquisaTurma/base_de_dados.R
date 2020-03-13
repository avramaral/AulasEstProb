setwd(dirname(rstudioapi::getActiveDocumentContext()$path)) # IMPORTANTE: utiliza o diretório do arquivo como caminho base

dados = read.csv(file = 'formulario.csv')

# Gráfico de barra
curso = unique(sort(dados$curso))
freq  = table(dados$curso)
barplot(height = freq, names = curso,
        ylim = c(0, 40),
        main = 'Quantidade de alunos por curso',
        xlab = 'Cursos', ylab = 'Frequência absoluta')


# Histograma
hist(sort(dados$idade)[1:length(dados$idade) - 1], col = 'gray',
     main = 'Histograma para distribuição de idade',
     xlim = c(18, 23),
     xlab = 'Idade', ylab  = 'Frequência absoluta',
     probability = FALSE
)

# Histograma de idade para mulheres
filtro = dados$sexo == 'Feminino'
idade_fem = dados[filtro,]$idade
hist(idade_fem, col = 'gray',
     main = 'Histograma para distribuição de idade das mulheres',
     xlim = c(18, 23),
     xlab = 'Idade', ylab  = 'Frequência absoluta')

# Gráfico de pizza
pie(table(dados$motivo_curso))

# Diagrama de dispersão
altura_fem = dados[filtro,]$altura
plot(idade_fem, altura_fem) # POUCO INFORMATIVO

# Boxplot
boxplot(dados$idade ~ dados$sexo,
        main = 'Boxplot para comparação de idades',
        xlab = '', ylab = 'Idade', 
)
