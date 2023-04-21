#let scriptsize = 8pt

#let transition(
	// The slide accent color. Default is a vibrant yellow.
	accent_color: rgb("f3bc54"),

	// The slide content.
	body,
) = {
	page(
		width: 15cm,
		height: 10cm,
		background: rect(width: 100%, height: 100%, fill: accent_color),
		header: none,
		footer: none,
	)[
		#set align(center+horizon)
		#set text(28pt, fill: white, weight: "bold")
		#body
	]
}

#let diapo(
	// The presentation's title, which is displayed on the title slide.
	title: [Title],

	// The presentation's author, which is displayed on the title slide.
	author: none,

	// The date, displayed on the title slide.
	date: none,

	// If true, display the total number of slide of the presentation.
	display_lastpage: true,

	// If set, this will be displayed on top of each slide.
	short_title: none,

	// The presentation's content.
	body
) = {
	// Set the metadata.
	set document(title: title, author: author)

	// Configure page and text properties.
	set text(font: "PT Sans", weight: "regular")
	set page(
		width: 15cm,
		height: 10cm,
		header: if short_title != none {
			set align(right)
			set text(size: scriptsize)
			short_title
		},
		footer: [
			#let lastpage_number = locate(pos => counter(page).final(pos).at(0))
			#set align(right)
			#text(size: scriptsize)[
				*#counter(page).display("1")* 
				#if (display_lastpage) [\/ #lastpage_number]
			]
		],
	)

	// Display the title page.
	page(background: none, header: none, footer: none)[
		#set align(center+horizon)
		#set text(24pt, weight: "light")
		#title

		#set text(14pt)
		#author

		#text(features: ("case",))[#date]
	]

	// Customize headings to show new slides.
	show heading: set text(font: "Avenir")
	show heading.where(level: 1): it => {
		pagebreak()
		align(top, it)
		v(1em)
	}

	// Add the body.
	body
}
