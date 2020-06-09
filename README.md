# Stripe-Haskell-Library
[![CircleCI](https://circleci.com/gh/Haskell-OpenAPI-Code-Generator/Stripe-Haskell-Library.svg?style=svg)](https://circleci.com/gh/Haskell-OpenAPI-Code-Generator/Stripe-Haskell-Library)

This code was auto generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator
available on Hackage https://hackage.haskell.org/package/openapi3-code-generator.

## Generation
The files were auto generated and formatted (with [ormolu](https://github.com/tweag/ormolu)) with:

```bash
openapi3-code-generator-exe stripe-api.yml --force --property-type-suffix="'" --module-name "StripeAPI" --convert-to-camel-case --package-name "stripeapi"
for file in $(find out -name "*.hs"); do ormolu -m inplace $file; done
```

# How to use
See `example/src/StripeHandling.hs` for an example usage.
The example can be run as follows (add your Stripe API key to `example/src/StripeHandling.hs`):

```bash
cd example
stack run --fast
```

## On the package level
### From hackage
-  install [cabal](https://www.haskell.org/cabal/)
- `cabal install stripeapi` (This may take a while, 24gb of memory is recommended)

### From source
See https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator#example-package for an example project generated with the same code generator.

# Hackage
This library is available at https://hackage.haskell.org/package/stripeapi.
