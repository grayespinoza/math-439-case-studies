#import "@preview/touying:0.6.1": *
#import themes.simple: *

#show: simple-theme.with(aspect-ratio: "4-3")

#set document(
  title: [Gray Espinoza's 1st Presentation],
  author: "Gray Espinoza",
)

= Spend and Revenue in the First Year of a Tech Startup

== Background
We have gathered the financial data of 268 other app development companies and have two goals:
+ To analyze the relationship between spend and revenue within the first year of tech startups.
+ To decide whether to spend #sym.dollar;500,000 or #sym.dollar;700,000 within our first year.

== Modeling Spend and Revenue
We can try fitting the relationship between spend and revenue of our data as a linear model, however, it is highly influenced by a singular #emph[leverage point]. This company spends #sym.dollar;1,255,897 and has a revenue of #sym.dollar;0. #figure(image("regression-diagnostic-plots-with-leverage-point.pdf", height: 50%))

== Modeling Spend and Revenue (cont.)
Hence, it is reasonable to refit our model excluding this company as they are an outlier. #figure(image("regression-diagnostic-plots-without-leverage-point.pdf", height: 50%))

== The Linear Model

== #sym.dollar;500,000 or #sym.dollar;700,000

== Conclusion
