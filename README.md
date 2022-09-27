# Upollo iOS Client Library

Upollo is a service to help turn repeat signups and account sharers into
paying customers, while keeping bad actors out. Learn more about it at
[upollo.ai](https://upollo.ai). Upollo is currently in beta release.

This library is for integrating Upollo smarts into your iOS Application.
It is currently intended to be used with Swift code via Cocoapods, but you
may have luck with other setups.

Get growing in a few short steps by following the instructions in the
Upollo [Quick Start](https://upollo.ai/docs/quick-start). For more
details, see the
[Client Libraries](https://upollo.ai/docs/reference/client-libraries)
documentation.

## Upollo vs UpolloCore

You may notice there is also a UpolloCore cocoapod. We recommend you depend
on Upollo, which internally depends on UpolloCore, rather than using
UpolloCore directly.

Unlike Upollo, UpolloCore has no guarantees of API compatibility even
on minor version updates.
