---
title: LAGraph table test
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

\newcommand{\grbbinaryop}[1]{\mathbin{\grboperator{#1}}}
\newcommand{\grbsemiringops}[2]{\mathbin{\grboperator{#1.#2}}}
\newcommand{\grbplustimes}{\grbsemiringops{\grbplus}{\grbtimes}}
\newcommand{\grbgenericop}{\grboperator{op}}

\newcommand{\grboperation}[2]{\grboperationnoarg{#1}(#2)}
\newcommand{\grbnrows}[1]{\grboperation{nrows}{#1}}
\newcommand{\grbncols}[1]{\grboperation{ncols}{#1}}
\newcommand{\grbnvals}[1]{\grboperation{nvals}{#1}}
\newcommand{\grbclear}[1]{\grboperation{clear}{#1}}
\newcommand{\grbdiag}[1]{\grboperation{diag}{#1}}
\newcommand{\grbselect}[1]{\grbmask{#1}}
\newcommand{\grbkron}[1]{\grboperation{kron}{#1}}
\newcommand{\grbtril}[1]{\grboperation{tril}{#1}}
\newcommand{\grbtriu}[1]{\grboperation{triu}{#1}}
\newcommand{\grbondiag}[1]{\grboperation{ondiag}{#1}}
\newcommand{\grboffdiag}[1]{\grboperation{offdiag}{#1}}

## Table


operation/method | description | notation
-------|-----------|------------
`mxm` | matrix-matrix multiplication | $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbm{A} \grbplustimes \grbm{B}$
`vxm` | vector-matrix multiplication | $\grbv{w}\grbt \grbmask{\grbv{m}\grbt} \grbaccumeq{} \grbv{u}\grbt \grbplustimes \grbm{A}$
`mxv` | matrix-vector multiplication | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbm{A} \grbplustimes \grbv{u}$
`eWiseAdd` | element-wise addition using operator $\grbgenericop$ | $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbm{A} \grbewiseadd{\grbgenericop} \grbm{B}$
|          | on elements in the set union of structures of $\grbm{A}/\grbm{B}$ and $\grbv{u}$/$\grbv{v}$ | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbv{u} \grbewiseadd{\grbgenericop} \grbv{v}$
`eWiseMult` | element-wise multiplication using operator $\grbgenericop$ | $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbm{A} \grbewisemult{\grbgenericop} \grbm{B}$
|           | on elements in the set intersection of structures of $\grbm{A}/\grbm{B}$ and $\grbv{u}$/$\grbv{v}$  |  $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbv{u} \grbewisemult{\grbgenericop} \grbv{v}$
`extract` | extract submatrix from matrix $\grbm{A}$ using indices $\grba{i}$ and indices $\grba{j}$    |  $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbm{A}(\grba{i}, \grba{j})$
|         | extract the $\grbs{i}$th row vector from matrix $\grbm{A}$ | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbv{A}(\grbs{i}, :)$
|         | extract the $\grbs{j}$th column vector from matrix $\grbm{A}$                    | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbv{A}(:, \grbs{j})$
|         | extract subvector from $\grbv{u}$ using indices $\grba{i}$ | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbv{u}(\grba{i})$
`assign`  | assign matrix to submatrix with mask for $\grbm{C}$        | $\grbm{C} \grbmask{\grbm{M}} (\grba{i},\grba{j}) \grbaccumeq{} \grbm{A}$
|         | assign scalar to submatrix with mask for $\grbm{C}$        | $\grbm{C} \grbmask{\grbm{M}} (\grba{i},\grba{j}) \grbaccumeq{} \grbs{s}$
|         | assign vector to subvector with mask for $\grbv{w}$        | $\grbv{w} \grbmask{\grbv{m}} (\grba{i}) \grbaccumeq{} \grbv{u}$
|         | assign scalar to subvector with mask for $\grbv{w}$        | $\grbv{w} \grbmask{\grbv{m}} (\grba{i}) \grbaccumeq{} \grbs{s}$
`apply`   | apply unary operator $\mathit{f}$ with optional thunk $k$  | $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbf{f}{\grbm{A}, \grbs{k}}$
|         |                                                            | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbf{f}{\grbv{u}, \grbs{k}}$
`select`  | apply select operator $\mathit{f}$ with optional thunk $k$ | $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbm{A}\grbselect{\grbf{f}{\grbm{A}, \grbs{k}}}$
|         |                                                            | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbv{u}\grbselect{\grbf{f}{\grbv{u}, \grbs{k}}}$
`reduce`  | row-wise reduce matrix to column vector                    | $\grbv{w} \grbmask{\grbv{m}} \grbaccumeq{} \grbreduce{\grbplus}{\grbs{j}}{\grbm{A}}{:,\grbs{j}}$
|         | reduce matrix to scalar                                    | $\grbs{s} \grbaccumeq{} \grbreduce{\grbplus}{\grbs{i}, \grbs{j}}{\grbm{A}}{\grbs{i},\grbs{j}}$
|         | reduce vector to scalar                                    | $\grbs{s} \grbaccumeq{} \grbreduce{\grbplus}{\grbs{i}}{\grbm{u}}{\grbs{i}}$
`transpose` | transpose                                                | $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbm{A}\grbt$
`kronecker` | Kronecker multiplication using operator $\grbgenericop$  | $\grbm{C} \grbmask{\grbm{M}} \grbaccumeq{} \grbkron{\grbm{A}, \grbgenericop, \grbm{B}}$

GraphBLAS operations and methods. Notation:
Matrices and vectors are typeset in bold, starting with uppercase ($\grbm{A}$) and lowercase ($\grbv{u}$) letters, respectively.
Scalars including indices are lowercase italic ($\grbs{k}$, $\grbs{i}$, $\grbs{j}$) while arrays are lowercase bold italic ($\grba{x}$, $\grba{i}$, $\grba{j}$).
$\grbplus$ and $\grbtimes$ are the addition and multiplication operators forming a semiring and default to conventional arithmetic $+$ and $\times$ operators.
$\grbaccum$ is the accumulator operator.
Operations can be modified via a descriptor;
matrices can be transposed ($\grbm{B}\grbt$),
the mask can be complemented ($\grbm{C}\grbmask{\neg \grbm{M}}$), and
the mask can be valued (shown above) or structural ($\grbm{C}\grbmask{\grbstr{\grbm{M}}}$).
A structural mask can also be complemented ($\grbm{C}\grbmask{\grbneg\grbstr{\grbm{M}}}$).
The result can be cleared (replaced) after using it as input to the mask/accumulator step ($\grbm{C}\grbmaskreplace{\grbm{M}}$).
Not all methods are listed (creating new operators, monoids, and semirings, clearing a matrix/vector, etc.).
