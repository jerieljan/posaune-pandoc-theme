# Posaune

A `pandoc` stylesheet that gives your Markdown files a nice and fresh look that's friendly for a single webpage and in PDF.

## Requirements

- The stylesheet uses [*Roboto Condensed* font](https://fonts.google.com/specimen/Roboto+Condensed) as its primary font.
- `pandoc` is used to generate other document formats
- *PDF engines* are used to generate PDF.
 - `tex`
 - `wkhtml2pdf`

## Usage

### Using the build script (HTML and PDF)

- Copy `build.sh` and `theme.css` to the same directory where your *Markdown* files are located
- Run `build.sh` to generate HTML and PDF for all `.md` files in the directory.


### Manually via pandoc

Just like how the build script generates pages, you can always generate HTML and PDF output 
manually through the terminal using `pandoc`.

See the examples below:

**HTML**

```bash
pandoc -f markdown --css theme.css --to=html5 <input-file.md> -o <output-file.html> --self-contained
```

**Basic PDF**

- With a PDF engine installed (e.g., BasicTeX)...

```bash
pandoc -f markdown --to=pdf <input-file.md> -o <output-file.pdf>
```    

**Styled PDF**

- With `wkhtmltopdf` PDF engine installed, along with a generated HTML file:

```bash
    wkhtmltopdf --dpi [preferred-dpi] [--disable-smart-shrinking] "output-file.html" "output-file.pdf"
```

**Some additional notes**

- You may want to use "300" or "500" for the preferred DPI. This is needed because some high-resolution displays can affect how `wkhtmltopdf` generates its PDFs.
- Other builds of `wkhtmltopdf` (MacOS) may strip CSS data with smart-shrinking on. See if it works out for you.
- `pandoc` and `wkhtmltopdf` may vary across Linux distros / MacOS. For example, MacOS can opt for BasicTeX instead of the entre TeX package, and Arch Linux may prefer wkhtmltopdf-static in AUR to match a version of QT that it needs. Your mileage may vary.

## Issues?

You can always file an issue at GitHub. I'm not available all the time though, so it may take
a while for me to handle them, sorry about that.

Feel free to submit pull requests though.

## Credits

The original stylesheet was based off on [killercup/pandoc.css](https://gist.github.com/killercup/5917178). 
