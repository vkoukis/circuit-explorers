# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = "Circuit Explorers"
copyright = "2024, Vangelis Koukis"
author = "Vangelis Koukis"

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ["myst_parser", "sphinx_copybutton", "sphinx_togglebutton",
              "sphinx.ext.githubpages"]

templates_path = ["templates"]
exclude_patterns = ["_build", "Thumbs.db", ".DS_Store"]

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_static_path = ["static"]
html_theme = "sphinx_nefertiti"
html_logo = "static/logo.png"  # Sphinx-nefertiti seems to ignore this
html_favicon = "static/logo.png"
html_theme_options = {
    "logo": "logo.png",
    "logo_alt": "Circuit Explorers logo",
    "logo_width": 100,
    "logo_height": 100,
    "show_colorset_choices": True
}

# Enable MyST parser extensions based on
# https://myst-parser.readthedocs.io/en/stable/syntax/optional.html
myst_enable_extensions = [ "amsmath", "attrs_inline", "colon_fence", "deflist",
                           "dollarmath", "fieldlist", "html_admonition",
                           "html_image", "replacements",
                           "smartquotes", "strikethrough", "substitution",
                           "tasklist"]

# Have all external links open in a new window, so the reader doesn't lose
# track of our instructions. See
# https://github.com/executablebooks/MyST-Parser/issues/856
myst_links_external_new_tab = True

# Support parsing $$ even in inline contexts, i.e., inside a paragraph. See
# https://myst-parser.readthedocs.io/en/latest/syntax/optional.html#dollar-delimited-math
myst_dmath_double_inline = True
