# diapo

A simplistic [Typst](https://typst.app) template for presentations.

Copy the [template](template.typ) to your project folder and start your document with a global show rule using `diapo.with()`.

For a new slide with a title, use the first level heading syntax `= Title`. \
For a new slide without a title, use a `pagebreak()`. \
To get a transition slide with additional impact, call `#transition[BANG]`.

It is intentionally basic and _not_ dynamic.
Customize it to your liking if needed.

## Minimal document

[This example](example.pdf) is given by the following code:

```typst
#import "template.typ": diapo, transition

#show: diapo.with(
  title: "My last vacations",
  author: "John Doe",
  date: "2023-04-20",
  // display_lastpage: false,
)

= Introduction

It was great!

#lorem(20)

#transition[Day one]

= Travelling

#lorem(30)

#lorem(30)

= Relax

#align(horizon)[
 #set text(size: 28pt)
 $ e^(i pi) + 1 = 0 $
]

= The journey back home

It was exhausting.

= Conclusion

That was short.
```

See also [a longer example](long_example.typ).
