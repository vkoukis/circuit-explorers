<div align="center" width="100%">
    <img alt="Circuit Explorers logo" width="25%" src="docs/static/logo.png">
</div>


<div align="center">

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)
[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)
[![GitHub Action: Documentation](https://github.com/vkoukis/circuit-explorers/actions/workflows/docs-publish.yaml/badge.svg)](https://github.com/vkoukis/circuit-explorers/actions/workflows/docs-publish.yaml)

</div>

Welcome to **Circuit Explorers**, a hands-on tutorial on exploring, designing,
simulating, building, and testing digital circuits.

🎯 **Goal:** To build a full-featured, programmable 8-bit computer using only
chips in the [74LS family of integrated circuits](https://en.wikipedia.org/wiki/List_of_7400-series_integrated_circuits).

📈 **Journey:** Circuit Explorers aims to be an educational journey where you
start from zero knowledge of electronics to learn about analog and digital
circuits via a set of **Adventures**, and eventually build your every own
programmable CPU from scratch.

Each adventure redirects you to curated documentation and video tutorials so
you can quickly understand the basic concepts, and encourages you to experiment
both by simulating circuits on your computer, and by building physical circuits
to test them yourself.

This is the repository where development for the public
[Circuit Explorers website](https://vkoukis.github.io/circuit-explorers) happens.


## Development

🚧 🚧 🚧 This is Work-in-Progress 🚧 🚧 🚧

Here is how to contribute to this repository.
The instructions below assume a Debian-like Linux system, e.g., Debian itself,
or Ubuntu. They will also work on Debian inside Windows, using [Windows
Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install).

To get started, follow the [Contributing to a
project](https://docs.github.com/en/get-started/exploring-projects-on-github/contributing-to-a-project)
guide on GitHub to fork this repository.

Then, here is how to build the project locally:

1. Install system-wide dependencies as the `root` user:
   ```console
   $ sudo apt install git make python3 inotify-tools
   ```

1. Clone your own fork of Circuit Explorers repository.
   Replace the URL below with the URL of your own fork.
   ```console
   $ git clone https://github.com/vkoukis/circuit-explorers
   ```

1. Change into your new git working directory:
   ```console
   $ cd circuit-explorers
   ```

1. Build the project:
   ```console
   $ make
   ```

1. Open file `_build/docs/html/index.html` with your browser to see the result
   of the build.

And here is how to make your own changes:

1. Watch the source directory for changes, and rebuild automatically:
   ```console
   $ make watch
   ```
   Leave this running inside a terminal window.

1. Edit files locally using your favorite browser.
   Notice `make watch` will rebuild all artifacts whenever you modify
   files inside the repository.

Finally, when you are satisfied with the results:

1. Commit your changes locally
1. Push to your cloned repository
1. Submit a PR against the official repository for Circuit Explorers,
   https://github.com/vkoukis/circuit-explorers.

See the [Contributing to a
project](https://docs.github.com/en/get-started/exploring-projects-on-github/contributing-to-a-project) for detailed instructions.


## Contact

For all comments, bug reports, suggestions for improvements, please contact:

* Vangelis Koukis &lt;vkoukis@gmail.com&gt;

Looking forward to hearing from you!


## License

The documentation in this repository is licensed under the [Creative Commons
Attribution-ShareAlike 4.0 International
license](https://creativecommons.org/licenses/by-sa/4.0/).

The code in this repository is licensed under the [Apache
2.0](https://www.apache.org/licenses/LICENSE-2.0) license.
