# make-phd
Write your phd in Markdown, and automatically run the code in ipython notebooks and generate word doc, pdf and html.

Handy if your supervisor will only give you feedback in Word track changes!

## Convert markdown -> ipynb, then to html and pdf

Write your thesis chapters in the markdown directory e.g. markdown/ch1.markdown etc.
If needed, edit the Makefile so it has all your chapters in it. 
e.g TITLES := ch1 ch2

```
# From repository root directory
make all
```

## Dependencies (Mac OSX)
- [Anaconda](http://continuum.io/downloads) Python 3.4, IPython notebook, nbconvert
- [Pandoc](http://pandoc.org/installing.html)
- [MacTeX](https://tug.org/mactex/downloading.html)
