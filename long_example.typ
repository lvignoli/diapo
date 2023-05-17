#import "template.typ": diapo, transition

#show: diapo.with(
	title: "Elucidation of the mechanical energy",
	author: "Émilie du Châtelet",
	date: "1759-04-19",
	// display-lastpage: false,
	// short-title: "The mechanical energy",
)

= Introduction

This is a small demo of the `diapo` package.

== State of the art
#lorem(20)

#lorem(30)

== Current work
#lorem(20)

#transition[
	Transition slide \
	Now some $cal(M) a t HH$	
]

= Argument

#grid(columns: (1fr, 1fr), column-gutter: 1em,
	lorem(40),
	align(horizon)[$ x_plus.minus = (-b plus.minus sqrt(b^2 - 4 a c) ) / (2 a) $]
)

= Discussion

#place(dx: 10cm, dy: -1cm)[
	#rotate(30deg)[#text(fill: green)[_weird text_]]
]

#align(center+horizon)[
	#text(size: 50pt)[Big boring text]
]

#pagebreak()

#align(horizon)[
	A new slide with content on the horizon, without a title, obtained by a simple `pagebreak()` call.
]

= Sparse text

Top text

#v(1fr)

Bottom text

#transition(accent-color: navy)[We are about to conclude]

= Conclusion

- Fruits
	- Apple
	- Banana
	- Others

- Vegetables
	- Carrot
	- Eggplant
