# Posaune

A simple Pandoc stylesheet.

## Requirements

- The stylesheet uses [*Roboto Condensed* font](https://fonts.google.com/specimen/Roboto+Condensed) as its primary font.
- `pandoc` is used to generate other document formats
- *PDF engines* are used to generate PDF.
 - `tex`
 - `wkhtml2pdf`

## Usage

### Generate HTML and PDF: 

Use `build.sh` to generate HTML and PDF for all `.md` files in the directory.

### HTML:

- Using `pandoc` on a terminal...

```bash
pandoc -f markdown --css theme.css --to=html5 <input-file.md> -o <output-file.html> --self-contained
```


### PDF:

- With a PDF engine installed (e.g., BasicTeX)...

```bash
pandoc -f markdown --to=pdf <input-file.md> -o <output-file.pdf>
```    

### Styled PDF:

- With `wkhtmltopdf` PDF engine installed, along with a generated HTML file:

```bash
    wkhtmltopdf --dpi [preferred-dpi] [--disable-smart-shrinking] "output-file.html" "output-file.pdf"
```

- You may want to use "300" or "500" for the preferred DPI. This is needed because some high-resolution displays can affect how `wkhtmltopdf` generates its PDFs.
- Other builds of `wkhtmltopdf` (MacOS) may strip CSS data with smart-shrinking on. See if it works out for you.
- `pandoc` and `wkhtmltopdf` may vary across Linux distros / MacOS. For example, MacOS can opt for BasicTeX instead of the entre TeX package, and Arch Linux may prefer wkhtmltopdf-static in AUR to match a version of QT that it needs. Your mileage may vary.

## Credits

The original stylesheet was based off on [killercup/pandoc.css](https://gist.github.com/killercup/5917178). 
