# Documentation

The documentation created here is written in reStructuredTexT and generated using [Sphinx](https://www.sphinx-doc.org/en/master/) via a Github action.

## reStructuredText

reStructured text is similar to Markdown in that it is ASCII formatted text that is mostly human readable and contains directives that specify how the text should be rendered in HTML, and other output formats.

reStructuredText is more complex than Markdown and allows for much greater flexibility in formatting as well as additional features such as *directives* that act like variables/macros that are defined once and expanded in place.

## Document Generation

The Github action rules can be found in `.github/workflows/docs.yml`

C++ API documentation is generated using [Doxygen](https://github.com/doxygen/doxygen)

## Variables

Frequently used values that may change can be defined in the `conf.py` file in the `rst_prolog` section. The `rst_prolog` gets including in every `.rst` file and the variables can be referenced by using the format `|VARIABLE_NAME|` which will get expanded into the generated text.