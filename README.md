# Posaune

A simple Pandoc stylesheet.

## Requirements

- The *Roboto Condensed* [font](https://fonts.google.com/specimen/Roboto+Condensed)
- `pandoc`
- A PDF engine.
 - `tex`
 - `wkhtml2pdf`

## Usage

### HTML:

    pandoc -f markdown --css theme.css --to=html5 <input-file.md> -o <output-file.html> --self-contained


### PDF:

- Install a PDF engine (BasicTeX)

    pandoc -f markdown --to=pdf <input-file.md> -o <output-file.pdf>


### Styled PDF:

- Install the `wkhtmltopdf` PDF engine
- Do the HTML steps, then:

    wkhtmltopdf --dpi 500 [--disable-smart-shrinking] "output-file.html" "output-file.pdf"


### Notes

- Other builds of wkhtmltopdf (MacOS) may strip CSS data with smart-shrinking on.
- pandoc and wkhtmltopdf may vary across Linux distros / MacOS. For example, MacOS can opt for BasicTeX instead
  of the entre TeX package, and Arch Linux may prefer wkhtmltopdf-static in AUR to match a version of QT that it
  needs. Your mileage may vary.
