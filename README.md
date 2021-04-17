![](https://raw.github.com/HaxeFlixel/haxeflixel.com/master/src/files/images/flixel-logos/flixel-templates.png)

[flixel](https://github.com/HaxeFlixel/flixel) | [addons](https://github.com/HaxeFlixel/flixel-addons) | [ui](https://github.com/HaxeFlixel/flixel-ui) | [demos](https://github.com/HaxeFlixel/flixel-demos) | [tools](https://github.com/HaxeFlixel/flixel-tools) | [templates](https://github.com/HaxeFlixel/flixel-templates) | [docs](https://github.com/HaxeFlixel/flixel-docs) | [haxeflixel.com](https://github.com/HaxeFlixel/haxeflixel.com)

[![CI](https://img.shields.io/github/workflow/status/HaxeFlixel/flixel-templates/CI.svg?logo=github)](https://github.com/HaxeFlixel/flixel-templates/actions?query=workflow%3ACI)
[![Haxelib Version](https://badgen.net/haxelib/v/flixel-templates)](https://lib.haxe.org/p/flixel-templates)
[![Haxelib Downloads](https://badgen.net/haxelib/d/flixel-templates?color=blue)](https://lib.haxe.org/p/flixel-templates)
[![Haxelib License](https://badgen.net/haxelib/license/flixel-templates)](LICENSE.md)

## About

This is set of templates for HaxeFlixel, compatible with the most commonly used Haxe IDEs:

* Visual Studio Code
* FlashDevelop
* Sublime Text
* IntelliJ IDEA

To generate a project from the templates, you can use [flixel-tools](https://github.com/HaxeFlixel/flixel-tools)' `template` command as documented [here](https://haxeflixel.com/documentation/hello-world/).

## Updating the template

If you change the default template, be sure to update the FlashDevelop `.fdz`-template in `ide-data/flash-develop-fdz` accordingly as well. Afterwards, the `generate.bat` should be run to update the `pregenerated` folder.
