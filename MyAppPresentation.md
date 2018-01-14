Developing Data Products: Week 4 Project
========================================================
author: Debanik Basu
date: 14 January, 2018
autosize: true

Assignment Objective
========================================================

The assignment objective is create a Shiny application and deploy it on Rstudio's servers. After that, we need to use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about the application.

The Shiny application for the assignment can be found on this link:
<https://debanikbasu.shinyapps.io/finalapp/>

All the files and source codes for the assignment are available on the GitHub repo: <https://github.com/debanikbasu/DataProducts/>


Application Description
========================================================

The application provides a data analysis from the airquality dataset in R. The application displays a scatter plot of the Ozone levels (in parts per billion) against three different variables - Solar Radiation, Wind Speed, and Temperature.

The user can also select the number of observation for which the plot is to be displayed.


Dataset
========================================================

The data used in the app comes from the airquality dataset. The first few rows are provided for reference.


```r
head(airquality,3)
```

```
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
3    12     149 12.6   74     5   3
```

Pairs Plot
========================================================

The relationship between the key variables is displayed below:

![plot of chunk unnamed-chunk-2](MyAppPresentation-figure/unnamed-chunk-2-1.png)

Thank You
========================================================
