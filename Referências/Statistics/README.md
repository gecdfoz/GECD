# Estatística

## R

### Básica

- Média:

```R
 > mean(dist)
```

- Mediana:

```R
 > median(dist)
```

- Variância:

```R
 > var(dist)
```

- Desvio Padrão:

```R
 > sqrt(var(dist))  # Standard deviation #1
 > sd(x) #Standard deviation #2
```

- Moda:

```R
> names(sort(-table(dist)))[1]
```

- Outros:

```R
> fivenum(x) #Tukey's five number summary, usefull for boxplots
> IQR(x) #Interquartile range
> quantile(x) #Compute sample quantiles
> range(x) # Get minimum and maximum
```

## Referências

- [How to calculate mean, median, mode, std dev from distribution](https://stats.stackexchange.com/questions/157661/how-to-calculate-mean-median-mode-std-dev-from-distribution)