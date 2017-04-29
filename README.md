# MathSass [![NPM version](https://badge.fury.io/js/mathsass.png)](http://badge.fury.io/js/mathsass) [![Build Status](https://travis-ci.org/terkel/mathsass.png?branch=master)](https://travis-ci.org/terkel/mathsass) [![Dependency Status](https://david-dm.org/terkel/mathsass.png)](https://david-dm.org/terkel/mathsass) [![devDependency Status](https://david-dm.org/terkel/mathsass/dev-status.png)](https://david-dm.org/terkel/mathsass#info=devDependencies)

A Sass implementation of mathematical functions.

## Install

#### Git

```
git clone git@github.com:terkel/mathsass.git && cd mathsass
```

#### Bower

```
bower install mathsass --save-dev
```

#### npm

```
npm install mathsass --save-dev
```

## Usage

Import `dist/_math.scss` partial to the Sass document.

```scss
@import "path/to/dist/math";

.content {
    height: 200px;
    width: 200px / tan(60deg); // 115.47005px
}
```

If you installed via Npm the path will be: `node_modules/mathsass/dist/math`

If you installed via Bower the path will be: `bower_components/mathsass/dist/math`


## Features


### Constants

* `$E` - Euler's constant (ネイピア数 [オイラー数])
* `$PI` - π (円周率)
* `$LN2` - The natural logarithm of 2 (2 の自然対数)
* `$SQRT2` - The square root of 2 (2 の平方根)


### Functions


#### Exponentiation

* `pow($base, $exp)`

```scss
@debug pow(4, 2);   // 16
@debug pow(4, -2);  // 0.0625
@debug pow(4, 0.2); // 1.31951
```


#### Factorial

* `fact($x)`

```scss
@debug fact(4); // 24
@debug fact(8); // 40320
```


#### Square root

* `sqrt($x)`

```scss
@debug sqrt(2); // 1.41421
@debug sqrt(3); // 1.73205
```


#### Exponential function

* `exp($x)`
* `frexp($x)`
* `ldexp($x, $exp)`

```scss
@debug exp(-1); // 0.36788
@debug exp(0);  // 1
@debug exp(1);  // 2.71828
```


#### Logarithms

* `log($x, $b: null)`

```scss
@debug log(2);     // 0.69315
@debug log(10);    // 2.30259
@debug log(2, 10); // 0.30103
```


#### Trigonometric functions

* `sin($x)` - Sine (正弦)
* `cos($x)` - Cosine (余弦)
* `tan($x)` - Tangent (正接)
* `csc($x)` - Cosecant (余割)
* `sec($x)` - Secant (正割)
* `cot($x)` - Cotangent (余接)

If argument has `deg` unit, converted to `rad`.

```scss
@debug tan(0.5236); // 0.57735
@debug tan(30deg);  // 0.57735
```


#### Inverse trigonometric functions

* `asin($x)` - Arcsine (逆正弦)
* `acos($x)` - Arccosine (逆余弦)
* `atan($x)` - Arctangent (逆正接)
* `atan2($y, $x)` - Arctangent of the quotient of its arguments (引数の比率での逆正接)

```scss
@debug atan2(0, 0);       // 0
@debug atan2(0, -0.0);    // 3.14159
@debug atan2(-0.0, 0);    // 0
@debug atan2(-0.0, -0.0); // -3.14159
```

### Helper functions

* `strip-unit($number)`
* `deg-to-rad($deg, $unit: true)`
* `rad-to-deg($rad, $unit: true)`
* `unitless-rad($angle)`

```scss
@debug rad-to-deg(1.0472);       // 60.00014deg
@debug deg-to-rad(60deg);        // 1.0472rad
@debug deg-to-rad(60deg, false); // 1.0472
@debug unitless-rad(60deg);      // 1.0472
@debug unitless-rad(1.0472rad);  // 1.0472
```


## References

* [adambom/Sass-Math · GitHub](https://github.com/adambom/Sass-Math)
* [Team-Sass/Sassy-math · GitHub](https://github.com/Team-Sass/Sassy-math)
* [Math - JavaScript | MDN](https://developer.mozilla.org/docs/JavaScript/Reference/Global_Objects/Math)
* [404 Blog Not Found:javascript - Mathを再発明してみた](http://blog.livedoor.jp/dankogai/archives/51518565.html)
* [C言語による最新アルゴリズム事典](http://www.amazon.co.jp/dp/4874084141?tag=terkel-22)

…and Wikipedia articles:

* [Exponentiation](http://en.wikipedia.org/wiki/Exponentiation), [冪乗 (累乗)](http://ja.wikipedia.org/wiki/%E5%86%AA%E4%B9%97)
* [Factorial](http://en.wikipedia.org/wiki/Factorial), [階乗](http://ja.wikipedia.org/wiki/%E9%9A%8E%E4%B9%97)
* [Square root](http://en.wikipedia.org/wiki/Square_root), [平方根](http://ja.wikipedia.org/wiki/%E5%B9%B3%E6%96%B9%E6%A0%B9)
* [Exponential function](http://en.wikipedia.org/wiki/Exponential_function), [指数関数](http://ja.wikipedia.org/wiki/%E6%8C%87%E6%95%B0%E9%96%A2%E6%95%B0)
* [Logarithm](http://en.wikipedia.org/wiki/Logarithm), [対数](http://ja.wikipedia.org/wiki/%E5%AF%BE%E6%95%B0)
* [Trigonometric functions](http://en.wikipedia.org/wiki/Trigonometric_functions), [三角関数](http://ja.wikipedia.org/wiki/%E4%B8%89%E8%A7%92%E9%96%A2%E6%95%B0)
* [Inverse trigonometric functions](http://en.wikipedia.org/wiki/Inverse_trigonometric_functions), [逆三角関数](http://ja.wikipedia.org/wiki/%E4%B8%89%E8%A7%92%E9%96%A2%E6%95%B0#.E9.80.86.E4.B8.89.E8.A7.92.E9.96.A2.E6.95.B0)
* [Degree (angle)](http://en.wikipedia.org/wiki/Degree_\(angle\)), [度 (角度)](http://ja.wikipedia.org/wiki/%E5%BA%A6_\(%E8%A7%92%E5%BA%A6\))
* [Radian](http://en.wikipedia.org/wiki/Radian), [ラジアン](http://ja.wikipedia.org/wiki/%E3%83%A9%E3%82%B8%E3%82%A2%E3%83%B3)

## Contributing

Make sure you have [node.js](http://nodejs.org/) and [grunt](http://gruntjs.com/getting-started) installed.

**Clone Repository**
```
git clone git@github.com:terkel/mathsass.git
```

**Install Dependencies**
```
npm install
```

**Run Sass/Tests**
```
grunt
```

## Credits

Originally created with help from [@kaminaly](https://github.com/kaminaly) and [@pilssalgi](https://github.com/pilssalgi).


## License

Copyright (c) 2013 [Takeru Suzuki](http://terkel.jp/)
Licensed under the [MIT license](http://www.opensource.org/licenses/MIT).
