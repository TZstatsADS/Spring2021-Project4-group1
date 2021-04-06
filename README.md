# Project 4: Causal Inference

### [Project Description](doc/project4_desc.md)

Term: Spring 2021

+ Team #1
+ Projec title: Algorithm implementation and evaluation
+ Team members
	+ Ai, Haosheng
	+ He, Changhao
	+ Maslova, Olha
	+ Morrissey, Mark
	+ Yang, Qizhen
	
+ Project summary: This project aims to explore different algorithms for causal inference. Causal inference refers to the process of drawing a conclusion about a causal connection based on the conditions of the occurrence of an effect. The goal is to estimate the average treatment effect (ATE) in detail through implementation (using R), evaluation, and comparison. The algorithms include **Inverse Propensity Weighting**, **Doubly Robust Estimation**, and **Regression Estimate**. For the first two algorithms, we also had to compute propensity score using classification and regression trees (CART). To evaluate our algorithms, we were given two data sets (low-dimensional and high-dimensional) as well as correct ATE.

**Project Result for High-dimenssional data**

**True ATE: -54.8558**

| Algorithm | Estimated ATE | Execution Time | Performance |
| --------------- | --------------- | --------------- | --------------- |
| Inverse Propensity Weighting | -60.0944 | 1.93s | 27.4433 |
| Doubly Robust Estimation | -57.4785 | 0.47s | 6.8787 |
| Regression Estimate | -57.4266 | 0.28s | 6.6089 |

**Project Result for Low-dimenssional data**

**True ATE: 2.0901**

| Algorithm | Estimated ATE | Execution Time | Performance |
| --------------- | --------------- | --------------- | --------------- |
| Inverse Propensity Weighting | 6.6209 | 0.68s | 20.5288 |
| Doubly Robust Estimation | 2.1755 | 0.05s | 0.0073 |
| Regression Estimate | 2.1251 | 0.02s | 0.0012 |

**The best algorithm:** Regression Estimate
	
+ **Contribution statement**: All team members approve our work presented in this GitHub repository including this contributions statement. 

	+ **Ai, Haosheng**: Collaborated on implementing the Doubly robust estimation algorithm, contributed to PPT, presented the project.  
	+ **He, Changhao**: Implemented Inverse propensity score algorithm, contributed to PPT.
	+ **Maslova, Olha**: Implemented and fine tuned Propensity score function, wrote final report, contributed to PPT, run the test of all algorithms, updated GitHub ReadMe files.
	+ **Morrissey, Mark**: Implemented and fine tuned Regression estimation algorithm, contributed to PPT and final report. 
	+ **Yang, Qizhen**: Collaborated on implementing the Doubly robust estimation algorithm, contributed to PPT.


Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
