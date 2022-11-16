# Probability and Statistics with R assignment

This is our group assignment for the first semester in Probability and Statistics with R at Chennai Mathematical Institute (C.M.I),Chennai.

The assignment was completed by the following students:  
- Roudranil Das [Roll: `MDS202227`]
- Saikat Bera [Roll: `MDS202228`]
- Shreyan Chakraborty [Roll: `MDS202237`]

The complete code of the solutions to the problems is available [here](https://github.com/Roudranil/probability-and-statistics-with-r-assignment/blob/main/code/assignment-2-code.Rmd). The corresponding pdf is available [here](https://github.com/Roudranil/probability-and-statistics-with-r-assignment/blob/main/report/assignment-2-code.pdf).

The folders [rough-work-roudranil](https://github.com/Roudranil/probability-and-statistics-with-r-assignment/tree/main/rough-work-roudranil), [rough-work-saikat](https://github.com/Roudranil/probability-and-statistics-with-r-assignment/tree/main/rough-work-saikat), [rough-work-shreyan](https://github.com/Roudranil/probability-and-statistics-with-r-assignment/tree/main/rough-work-shreyan) contains all the individual work done by the 3 collaborators.

- Problem 1 was solved by Saikat Bera and Shreyan Chakraborty
- Problem 2 and 3 were solved by Roudranil Das
- Problem 4 was solved by Saikat Bera
- Problem 5 was solved by Shreyan Chakraborty

Summary of Problem 1:  
- We had to fit a probabilistic model for the number of goals scored by the home team in Premier League.
- From given sample statistis we had to estimate parameters and abide by desired assumptions.
- Comparison between Geometric and Poisson Distribution model was done.

Summary of Problem 2:
- We had to define a function to compute the maximum likelihood estimator of `log(alpha)` of a gamma distribution.
- We simulated a sample from certain gamma distributions, computed the MLE 1000 times for each distribution and plotted histograms for each case.
- We computed the difference between the 2.5 and 97.5 percentile points of each distribution and confirmed that the difference shrinks as sample size increases.

Summary of Problem 3:
- We estimated the parameters of the three models using MLE method.
- We found out the AIC of all three models once we had the parameters and found that model 3 offered the best fit.
- Using the third model, we calcualted the probability $\mathbb{P}[60<\texttt{waiting}<70] = 0.0908132$.

Summary of Problem 4:
- We worked with the `Insurance` datasets in the `MASS` package. 
- We predicted the `Claims` as function of `Holders` by follwing models -
  $\texttt{Claims}_i=\beta_0 + \beta_1~\texttt{Holders}_i + \varepsilon_i,~~~i=1,2,\cdots,n
 * $\texttt{Claims}_i\sim N(\mu_i,\sigma^2),~~where \mu_i =\beta_0 + \beta_1~\texttt{Holders}_i + \varepsilon_i,~~~i=1,2,\cdots,n
 * $\varepsilon_i\sim Laplace(0,\sigma^2)
 * $\texttt{Claims}_i\sim LogNormal(\mu_i,\sigma^2), where \mu_i=\beta_0 + \beta_1 \log(\texttt{Holders}_i), ~~i=1,2,...,n
 * $\texttt{Claims}_i\sim Gamma(\alpha_i,\sigma), where log(\alpha_i)=\beta_0 + \beta_1 \log(\texttt{Holders}_i), ~~i=1,2,...,n
- We found that `Laplace Distribution` is the best fit.

Summary of Problem 5:  
- We had to fit a linear model for the return of TCS with that of the return of NIFTY
- We had to estimate the coefficients of the linear model using Method Of Moments
- We again estimated the coefficients using lm() function and then compare it with that of Method Of Moments.
- Then prediction was mad for a new data using the fitted model.
