# Sicp Racket

Based on [Hexlet Sicp Racket Boilerplate](https://github.com/hexlet-boilerplates/sicp-racket)

### Requirements

*  [Racket](https://racket-lang.org)
*  Don't forget to add racket bin to your $PATH variable, e.g. 
```echo 'export PATH="/Applications/Racket\ v8.1/bin:$PATH"' >> ~/.bash_profile``` or ```fish_add_path /Applications/Racket\ v8.7/bin/```
*  Rackunit (`raco pkg install rackunit`)
*  [SICP Support for DrRacket](https://docs.racket-lang.org/sicp-manual/index.html) (`raco pkg install sicp`)
*  [Racket-review](https://github.com/Bogdanp/racket-review) surface-level linter (`raco pkg install review`)
*  Make

### Using

1.  Write code (look `sicp/chapter1/02.rkt`)
2.  Run tests `make test`
3.  Run linter `make lint`
