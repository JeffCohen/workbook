# Digital Signatures

If we combine the concepts of public key cryptography and hash algorithms, we arrive at _digital signatures_.  A digital signature is the 21st-century equivalent of a medeival king's molten wax seal: it proves that the message that has been sent was indeed sent by the right person, and that the message hasn't been tampered with during transit.

Here's how it works.  Given a public-private cryptographic key pair:

1. A cryptographic hash is computed from the entire text of the original message.  SHA-1 is an example of a typical hash algorithm that can be used.
2. The hash is encrypted with the sender's private key.  This is the digital signature.
3. The encrypted hash is included with the original message, along with the sender's public key.
4. The recipient verifies the signature by decrypting it with the sender's public key.  The result of the decryption is a hash.
5. The recipient calculates the hash of the message content, and compares it with the decrypted signature hash.  If the hashes are identical, the receiever can be sure that the message was indeed sent by the sender and that it has not been tampered with.
