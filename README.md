# diapo

A simplistic [Typst](https://typst.app) template for presentations.

Apply the template to your document with a global show rule using `diapo.with()`.

For a new slide with a title, use the first level heading syntax `= Title`. \
For a new slide without a title, introduce a `pagebreak()`. \
To get a transition slide with additional impact, call `#transition[BANG]`.

It is intentionally very basic.

## Minimal document

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
 $ e^(i pi) - 1 = 0 $
]

= The journey back home

It was exhausting.

= Conclusion

That was short.
```

See also [the example document](example.pdf)
