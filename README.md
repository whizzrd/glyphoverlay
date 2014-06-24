glyphoverlay
============

## Glyph Overlays
Glyphs denoting the class of a subject can be augmented with an overlay glyph denoting action to perform on that subject

### Examples
Our current implementation envisions using html subscript and superscript tags to scale and displace the overlays

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
