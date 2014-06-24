glyphoverlay
============

## Glyph Overlays
Glyphs denoting the class of a subject can be augmented with an overlay glyph denoting action to perform on that subject

### Examples
Our current implementation envisions using html subscript and superscript tags to scale and displace the overlays

```html
      <span class="glyph-group"><i class="glyphicon glyphicon-heart"></i><sup class="glyph-overlay top right"><i class="glyphicon glyphicon-lock"></i></sup></span><span class="sr-only">Lock Heart</span>
      <span class="glyph-group"><sub class="glyph-overlay bottom left"><i class="glyphicon glyphicon-edit"></i></sub><i class="glyphicon glyphicon-lock"></i></span><span class="sr-only">Edit Lock</span>
      <span class="glyph-group"><sup class="glyph-overlay top left"><i class="glyphicon glyphicon-lock"></i></sup><i class="glyphicon glyphicon-heart"></i></span><span class="sr-only">Lock Heart</span>
      <span class="glyph-group"><i class="glyphicon glyphicon-lock"></i><sub class="glyph-overlay bottom right"><i class="glyphicon glyphicon-edit"></i></sub></span><span class="sr-only">Edit Lock</span>
```

<span class="glyph-group"><i class="octicon octicon-bug"></i><sup class="glyph-overlay top right"><i class="octicon octicon-beer"></i></sup></span><span class="sr-only">Beer Bug</span>
<span class="glyph-group"><sub class="glyph-overlay bottom left"><i class="octicon octicon-bug"></i></sub><i class="octicon octicon-beer"></i></span><span class="sr-only">Bug Beer</span>
<span class="glyph-group"><sup class="glyph-overlay top left"><i class="octicon octicon-beer"></i></sup><i class="octicon octicon-bug"></i></span><span class="sr-only">Beer Bug</span>
<span class="glyph-group"><i class="octicon octicon-bug"></i><sub class="glyph-overlay bottom right"><i class="octicon octicon-beer"></i></sub></span><span class="sr-only">Bug Beer</span>

### Contributors ###
  * Joris van Lier - Artronics
  * Ernst Erik Wolzak - Ernst Erik Designs
  * Martijn Langereis - Explicit Design
  * Bas Nijland - Explicit Design


### Made with these awesome libraries
  * Bootstrap https://github.com/twbs/bootstrap
  * Glyphicons http://glyphicons.com
