---
title: LAGraph documentation test
titlepage: true
logo: "graphblas-logo.pdf"
logo-width: "90mm"
---

# Test site

\newcommand{\suitesparse}{SuiteSparse\xspace}
\newcommand{\grb}{GraphBLAS\xspace}
\newcommand{\ssgrb}{SuiteSparse:GraphBLAS\xspace}
\newcommand{\gxb}{\ssgrb}
\newcommand{\lagraph}{LAGraph\xspace}
\newcommand{\pygrb}{pygraphblas\xspace}
\newcommand{\grblas}{grblas\xspace}
\newcommand{\grbm}[1]{\mathbf{#1}}
\newcommand{\grbv}[1]{\mathbf{#1}}
\newcommand{\grba}[1]{\textbf{\textit{#1}}}
\newcommand{\grbs}[1]{\mathit{#1}}

\newcommand{\grbmask}[1]{\langle #1 \rangle}
\newcommand{\grbstr}[1]{s(#1)}
\newcommand{\grbmaskreplace}[1]{\langle #1, \mathrm{r} \rangle}
\newcommand{\grbneg}{\neg}

\newcommand{\grbf}[2]{\grboperation{#1}{#2}}
\newcommand{\grbreduce}[4]{[ {#1}_{#2}\, #3(#4) ]}
\newcommand{\grbt}{^\mathsf{T}}
\newcommand{\grbdiv}{\grbbinaryop{\oslash}}
\newcommand{\grbminus}{\grbbinaryop{\ominus}}
\newcommand{\grbaccum}{\texttt{\ensuremath{\odot}}}
\newcommand{\grbaccumeq}[1]{\mathbin{\ensuremath{\ifstrempty{#1}{\grbaccum}{#1}\!\!=}}}

\newcommand{\grbplus}{\oplus}
\newcommand{\grbtimes}{\otimes}
\newcommand{\grbapply}{\odot}

\newcommand{\grbfrac}[2]{\frac{#1}{#2}}

\newcommand{\grbbool}{\mathbb{B}}
\newcommand{\grbuint}{\mathbb{N}}
\newcommand{\grbint}{\mathbb{Z}}
\newcommand{\grbfloat}{\mathbb{Q}}

\newcommand{\grbplaceholder}[1]{\mathsf{#1}}

\newcommand{\grbscalartype}[2]{#1_{#2}}
\newcommand{\grbvectortype}[3]{#1_{#2}^{#3}}
\newcommand{\grbmatrixtype}[4]{#1_{#2}^{#3 \times #4}}

\newcommand{\grbnewscalar}[3]{\text{let: } #1 \in \grbscalartype{#2}{#3}}
\newcommand{\grbnewvector}[4]{\text{let: } #1 \in \grbvectortype{#2}{#3}{#4}}
\newcommand{\grbnewmatrix}[5]{\text{let: } #1 \in \grbmatrixtype{#2}{#3}{#4}{#5}}

\newcommand{\grbalpha}{\alpha}
\newcommand{\grboperator}[1]{\mathsf{#1}}

\newcommand{\grbrange}[2]{#1 \! : \! #2}
\newcommand{\grbdontcare}{\textvisiblespace}

\newcommand{\grboperationnoarg}[1]{\mathrm{#1}}

\newcommand{\grbewiseadd}[1]{\grbbinaryop{\cup[#1]}}
\newcommand{\grbewisemult}[1]{\grbbinaryop{\cap[#1]}}

\newcommand{\grbbooleanvalue}[1]{\mathtt{#1}}
\newcommand{\grbtrue}{\grbbooleanvalue{TRUE}}
\newcommand{\grbfalse}{\grbbooleanvalue{FALSE}}
\newcommand{\grbT}{\grbbooleanvalue{T}}
\newcommand{\grbF}{\grbbooleanvalue{F}}
\newcommand{\grbstring}{\textrm{String}}
\newcommand{\grbdate}{\textrm{Date}}

## BFS algorithm

* $\grbv{f}(\grbs{startVertex}) = \grbT$
* $\grbs{level} = 1$ to $\grbs{n}-1$
  * $\grbv{s} \grbmask{\grbv{f}} = \grbs{level}$
  * $\grbv{f} \grbmaskreplace{\grbneg \grbv{s}} = \grbv{f} \grbm{A}$

## Some code

```c
GrB_mxm(&frontier, numsp, GrB_NULL, Int32AddMul, A, frontier, desc_tsr);
```


<!-- \newcommand{\tuple}[1]{\langle #1 \rangle} -->
<!-- $$\tuple{a, b, c}$$ -->

