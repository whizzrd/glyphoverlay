glyphoverlay
============

## Glyph Overlays
Glyphs denoting the class of a subject can be augmented with an overlay glyph to convey additional status of and/or action affecting the subject.

### Examples
Our current implementation envisions using html or CSS subscript and superscript to denote adjectives and verbs while scaling and displacing the overlays.
	html
		adjective
			<sub>
				<i class="glyph-heart">beloved/lovely</i>
				</sub>
		noun
			<i class="glyph-heart">heart/love</i>
		verb
			<sup>
				<i class="glyph-heart">love</i>
				</sup>
	css
		adjective
			.adjective:before {vertical-align: sub}
		noun
			.noun:before {vertical-align: baseline}
		verb
			.verb:before {vertical-align: super}

```html
<span class="glyph-group"><span class="octicon octicon-bug"></span><sup class="glyph-overlay top right"><span class="octicon octicon-beer"></span></sup></span><span class="sr-only">Beer Bug</span>
<span class="glyph-group"><sub class="glyph-overlay bottom left"><span class="octicon octicon-bug"></span></sub><span class="octicon octicon-beer"></span></span><span class="sr-only">Bug Beer</span>
<span class="glyph-group"><sup class="glyph-overlay top left"><span class="octicon octicon-beer"></i></sup><span class="octicon octicon-bug"></span></span><span class="sr-only">Beer Bug</span>
<span class="glyph-group"><span class="octicon octicon-bug"></span><sub class="glyph-overlay bottom right"><span class="octicon octicon-beer"></span></sub></span><span class="sr-only">Bug Beer</span>
```

<span class="glyph-group"><span class="octicon octicon-bug"></span><sup class="glyph-overlay top right"><span class="octicon octicon-beer"></span></sup></span><span class="sr-only">Beer Bug</span>
<span class="glyph-group"><sub class="glyph-overlay bottom left"><span class="octicon octicon-bug"></span></sub><span class="octicon octicon-beer"></span></span><span class="sr-only">Bug Beer</span>
<span class="glyph-group"><sup class="glyph-overlay top left"><span class="octicon octicon-beer"></i></sup><span class="octicon octicon-bug"></span></span><span class="sr-only">Beer Bug</span>
<span class="glyph-group"><span class="octicon octicon-bug"></span><sub class="glyph-overlay bottom right"><span class="octicon octicon-beer"></span></sub></span><span class="sr-only">Bug Beer</span>

### Contributors ###
  * Joris van Lier - Artronics
  * Ernst Erik Wolzak - Ernst Erik Designs
  * Martijn Langereis - Explicit Design
  * Bas Nijland - Explicit Design


### Made with these awesome libraries
  * Bootstrap https://github.com/twbs/bootstrap
  * Glyphicons http://glyphicons.com
