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

extensions = ["myst_parser", "sphinx_copybutton"]

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
