Shiny Web Application and Reproducible Pitch
========================================================
author: Nelson H. Tejara
date: January 8, 2019
autosize: true

Course Project Details
========================================================
- This project was the  final requirement for the developing data products at  coursera under JHU.
- This presentation was created using the  RStudio slide presentation.
- The  main objective of this proect was to create a shiny web application.


 
Shiny Web Application
========================================================
- A shiny web application has been developed as part of the  requirements of the  course "Developing Data Products".
- This web application will calculate the BMI of a person.
- The motivation of this project includes monitoring and knowing the  BMI especially for health reasons.




Embedded R Code
========================================================
- The  code below calculates the  BMI of an individual.
- The height and weight were used as parameters in order to calculate the  BMI.


```r
height <- 162
weight <- 63
BMI <- weight / (height/100 * height/100)

BMI
```

```
[1] 24.00549
```


The  Application 
========================================================
- The  github repostory of this project is found in the  following link <https://support.rstudio.com/hc/en-us/articles/200486468>.
- The  shiny web application is hosted via shinyapps.io website and can be accessed via <https://nson28.shinyapps.io/courseproject/>.
