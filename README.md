# FingerCountingConverter

[1] 문제 설명
• 설계 목적 : Hamming Encoder와 Bit Converter를 통해, 1-bit error가 발생한 9-bit Codeword
입력을 4-bit Unsigned Binary Number 출력으로 변환하는 Finger-counting Converter를 설계한
다.

• 설계 순서 :
① 5-bit Hand Sign이 미리 Hamming Encoder로 Encoding 된 9-bit Hamming Codeword(with
1-bit error)를 입력으로 받는다.
② 신호로 받은 9-bit Codeword를 Hamming Decoder로 입력받은 후, Decoding 한다.
③ Hamming Decoder에서 Error Correcting 된 5-bit Hand Sign을 Unsigned Binary Converter
에 입력으로 넣는다.
④ Converter를 통해 입력으로 받은 5-bit Hand Sign을 4-bit Unsigned Binary Number로 변환한
다.

• 5-bit Hand Sign
각 손가락마다 1-bit씩 H[4], H[3], H[2], H[1], H[0]을 정해놓는다(약지부터 오른쪽으로). 값은 손가락
이 접혔을 경우(Folded) ‘0’으로, 펴있을 경우(Unfolded) ‘1’으로 간주한다.

• 회로도(Schematic)
※ (9,5) Hamming Codeword는 9-bit의 Hamming Codeword와 5-bit의 Information Bits(Hand
sign)을 나타낸다.
※ 9-bit의 Hamming Codeword는 5-bit의 Information Bits와 4-bit의 Parity Bits로 이루어져 있
다.
※ Binary Number는 “MSB, ... , LSB”로 통일한다.
