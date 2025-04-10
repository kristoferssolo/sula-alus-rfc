#let fill = box(width: 1fr, repeat(sym.space))


#set heading(numbering: "1.1.")
#show heading: set text(12pt)

#show outline.entry: it => link(
  it.element.location(),
  it.indented(it.prefix(), it.body()),
)


#set par(justify: true)

Network Working Group #fill T. Developer \
Internet Engineering Task Force (IETF) #fill (Your Organization) \
Request for Comments: XXXX #fill (Your Email) \
Category: Informational #fill (Today’s Date)


#align(
  center,
  upper(
    text(
      14pt,
      "RFC SULA-ALUS: A Reversal Encryption Algorithm",
    ),
  ),
)

#heading("Status of This Memo", numbering: none, outlined: false)

This memo provides information for the Internet community. It does not
specify an Internet standard of any kind. Distribution of this memo is
unlimited.

#heading("Abstract", numbering: none, outlined: false)

This document describes the SULA-ALUS encryption algorithm—a lightweight,
reversible transformation whose principal operation is to reverse the input
plaintext. The algorithm’s name pays homage to the Latvian wordplay where
reversing "sula" gives "alus."
Although trivial in its operation, this algorithm may serve educational,
demonstrative, or low-risk obfuscation purposes.



#outline(
  depth: 3,
  title: "Table of Contents",
)

= Introduction

The SULA-ALUS algorithm is founded on a straightforward principle: encryption is
performed by reversing the order of characters (or bytes) of the input data.
While the transformation is simple and not intended for modern security-critical
applications, it can be useful in contexts where a reversible obfuscation method
is acceptable or for educational purposes.

= Conventions Used in This Document

The key words "MUST," "SHOULD," and "MAY" are to be interpreted as described in
RFC 2119 @rfc-2119.

= The Reversal Encryption Algorithm

The core idea behind SULA-ALUS is that the encryption operation is identical to
the decryption operation -- they both consist of reversing the input sequence.

== Encryption Process

Let $P$ represent the plaintext composed of a sequence of characters:
$ P = p_1, p_2, ..., p_n $

The ciphertext $C$ is produced by applying the reversal transformation:
$ C = "reverse"(P) = p_n, p_(n-1), ..., p_1 $
For example, if $P = "sula"$, then:
$ C = "alus" $

== Decryption Process

Given that the reversal operation is an involution (its own inverse), the
decryption process involves applying the same transformation.
Let $C$ be the ciphertext; then the plaintext $P$ is recovered as:
$ P = "reverse"(C) $

= Implementation Considerations

A simple pseudocode implementation of the algorithm is as follows:

```
function encrypt(plaintext):
return reverse(plaintext)

function decrypt(ciphertext):
return reverse(ciphertext)
```

This algorithm may be implemented in any programming language.
It is important to note that due to its simplicity, SULA-ALUS is only
appropriate for applications where robust cryptographic security is not a
requirement.

= Security Considerations

The SULA-ALUS algorithm offers minimal protection and should not be used as a
substitute for established cryptographic methods. Its reversible nature and lack
of key-dependent randomness make it vulnerable to trivial analysis and
brute-force reversal. Users are cautioned against employing this algorithm in
scenarios where the confidentiality or integrity of sensitive data is paramount.

= IANA Considerations

This document has no actions for the Internet Assigned Numbers Authority (IANA).

= Acknowledgments

The authors thank the community for insights into minimalist cryptographic
mechanisms and for inspiring creative approaches that celebrate cultural
references—in this case, the reversal of the Latvian word "sula" to "alus."


#bibliography(
  title: "References",
  "bibliography.yml",
)
