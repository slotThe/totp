# TOTP in BQN

This is a simple implementation of the [TOTP][RFC 6238] algorithm in
BQN, including most of its dependencies. Without comments, the code in
[`totp.bqn`](./totp.bqn) weighs in at around 50 lines; the
implementation follows the following RFC's:

  + [RFC 3174] for SHA1
  + [RFC 4648] for Base32 decoding
  + [RFC 2104] for HMAC
  + [RFC 4226] for HOTP
  + [RFC 6238] for TOTP

For ease of use—but don't actually use this, please—a `main.bpn` file is
provided that can read input from stdin:

``` console
$ echo "ZYTYYE5FOAGW5ML7LRWUL4WTZLNJAMZS" | bqn main.bqn
024999
```

Right now, the implementation is locked to a time step of 30, six
digits, and SHA1 as the hashing algorithm. Incidentally, this covers
100% of my real-world use-cases for TOTP, so it seems like a sane
minimal implementation.

## Inspirations

The venerable [mintotp](https://github.com/susam/mintotp).

[RFC 2104]: https://datatracker.ietf.org/doc/html/rfc2104
[RFC 3174]: https://datatracker.ietf.org/doc/html/rfc3174
[RFC 4226]: https://datatracker.ietf.org/doc/html/rfc4226
[RFC 4648]: https://datatracker.ietf.org/doc/html/rfc4648
[RFC 6238]: https://datatracker.ietf.org/doc/html/rfc6238
