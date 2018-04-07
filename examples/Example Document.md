## Pandoc {.subtitle}

# Example Document

## About this Theme

:::Description
This is a **Markdown** document generated with 
the stylesheet in this repository.

To generate these, follow the `README.md` requirements, 
place the contents of the project (i.e., `generate.sh` and `theme.css`) 
in the same directory where this file is located.

It should produce output similar to this:

```bash
$ ./generate.sh
[WARNING] This document format requires a nonempty <title> element.
  Please specify either 'title' or 'pagetitle' in the metadata.
  Falling back to 'Example Document'
Loading pages (1/6)
Counting pages (2/6)
Resolving links (4/6)
Loading headers and footers (5/6)
Printing pages (6/6)
Done
Generated Example Document.html and Example Document.pdf
```

:::

### Optional Extra Markup

:::Description
The theme supports additional styles through classes
and can be used through `pandoc`'s syntax.

- `.subtitle` is best used for describing the **title** just like in this document.
- `.description` works well with **headers** by adding a mild *grey* background and connects
  the gap between the heading and the description. Pretty nifty if you want a "card"
  look.
:::

## Examples

:::Description
Here's a preview of the theme.
:::

This is body text.

This is *italicized text* and **bold text**.

Reference style footnotes[^1] should be nice, although your engine may vary how they're rendered.

You can write inline [links](http://www.github.com) or [references][1]

### Tables

-------   -----
 Tables   should work
   like   this one
headers   shouldn't be present here.
-------   -----

I personally prefer tables written like this:

Table | Column A | Column B | Column C
--- |:---:|:---:|:---:| ---
Row 1 | 1A | 1B | 1C
Row 2 | 2A[^2] | 2B | 2D
Row 3 | 3A | **3B** | *3D*

### Subheading Spam

#### Here's another level

While we're at it, here's a *numbered list*.

1. Item 1
2. Item 2
3. Item 3

##### And another

How about **bulleted lists**?

- Item 1
- Item 2
- *Item 3*

###### And another

### Code Blocks

Quote blocks look like this

    This is a quote
    in a block

Inline blocks work nicely for **`class`** and object references. like `String` and such.

And here's a code block.

```java
    public static void main(String args[]) {
        System.out.println("Hello world!");
    }
```

### Images

Here's a **picture of a trombone**.

![Image 1: A Trombone[^3]](https://upload.wikimedia.org/wikipedia/commons/1/11/Posaune.gif)


[1]: http://www.github.com

[^1]: Your results may vary.
[^2]: Another example footnote.
[^3]: Reference: Wikimedia Commons. https://commons.wikimedia.org/wiki/File:Posaune.gif
