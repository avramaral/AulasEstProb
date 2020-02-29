# Galeria de gráficos pode ser encontrada em: https://www.r-graph-gallery.com/

# Gráfico de barra
x = c('Banana', 'Maçã', 'Laranja', 'Morango', 'Limão')
y = sample.int(25, 5)
barplot(height = y, names = x,
        ylim = c(0, 25),
        main = 'Quantidade de frutas',
        xlab = 'Frutas', ylab = 'Quantidade')

# Gráfico de linhas
myfunc = function(x, n){ return (2 * x + rnorm(n, 0, 1)) }
n = 11
x = c(0:(n - 1))
y = myfunc(x, n)
plot(x, y, type = 'l',
     xlim = c(0, 10), ylim = c(-1, 21),
     main = 'Evolução da variável resposta ao longo do tempo',
     xlab = 'Tempo', ylab = 'Variável Resposta')

# Histograma
obs = rnorm(1000, 0, 1)
hist(obs, col = 'gray',
     xlim = c(-4, 4), # ylim = c(0, 0.5),
     breaks = seq(-4, 4, l = 11),
     main = 'Histograma para distribuição Normal',
     xlab = 'Variável de interesse', ylab = 'Densidade', # ylab  = 'Frequência absoluta',
     probability = TRUE
     )
x = seq(-4, 4, by = 0.01)
y = dnorm(x)
lines(x, y)

# Gráfico de Pizza
x = c(10, 22, 45, 6, 17) # total = 100
pie(x, labels = c('Classe A', 'Classe B', 'Classe C', 'Classe D', 'Classe E'),
    main = 'Gráfico de pizza')

# install.packages('plotrix')
library(plotrix)
pie3D(x, col = rainbow(length(x)),
      main = 'Gráfico de pizza')
legend("topright", c('Classe A', 'Classe B', 'Classe C', 'Classe D', 'Classe E'),
       fill = rainbow(length(x)),
       inset = 0.05, cex = 0.5)

# Gráfico de Pontos (ou Gráfico de Dispersão)
dados = data.frame(
  x = seq(1:500),
  y = seq(1:500) + 500 + rnorm(500, 0, 50)
)
plot(dados$x, dados$y,
     xlim = c(0, 500), ylim = c(400, 1200),
     main = 'Gráfico de dispersão',
     xlab = 'Variável A', ylab = 'Variárel B')

# Regressão linear
model = lm(dados$y ~ dados$x)
abline(model, col = 'red', lwd = 3)