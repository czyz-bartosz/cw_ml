library(ggplot2)

# funkcja liczy parametr y na podstawie zbioru danych x
# x - zbiór danych w postaci wektora liczbowego 
# funkcja sprawdza, czy zmienna jest typu numerycznego 

new_f <- function(x){
  
  if (!is.numeric(x)) { stop("Obiekt wejściowy x nie jest typu numeric") }
  
  srednia <- mean(x)
  
  y <- srednia / 10 + sqrt(srednia)
  
  return(y)
  
}

# test 1 funkcji 

dane <- 1:10
dane
new_f(x = dane)

ggplot(data.frame(x = 1:10), aes(x = x)) +
  stat_function(fun = new_f, color = "blue") +
  labs(title = "Plot of f(x)",
       x = "x",
       y = "f(x)") +
  theme_minimal()

# test 2 - sprawdzamy, czy odporna

new_f(x = letters)

letters |> str()