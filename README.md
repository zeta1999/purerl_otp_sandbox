purerl_otp_sandbox
=====

An OTP application integrating PureScript code.

This is a sandbox for different ways of integrating eg OTP behaviours and demonstrating a sample build process, file layout etc.

Dependencies
-----
The executables `psc-package` (any relatively recent version) and `purs` (the purerl compiler fork, 0.12+) must be present in the `PATH`.

Build
-----

    $ rebar3 compile

This will kick off a PureScript build via the `Makefile`. The `Makefile` encodes no dependency information, but because PureScript compiler builds are incremental, updated `.erl` files are generated only for changed modules, these updated `.erl` files are then available for the usual `rebar3` compile process.

An `ide` target is available to be used with editor integrations (for full builds), both this and the `purs ide` server will work just fine for the purerl backend as long as the right `purs` is in your path.