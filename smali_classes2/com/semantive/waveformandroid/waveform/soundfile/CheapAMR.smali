.class public Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;
.super Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
.source "CheapAMR.java"


# static fields
.field private static BLOCK_SIZES:[I

.field private static GAIN_FAC_MR475:[I

.field private static GAIN_FAC_MR515:[I

.field private static GRAY:[I

.field private static QUA_ENER_MR515:[I

.field private static QUA_GAIN_CODE:[I

.field private static QUA_GAIN_PITCH:[I


# instance fields
.field private mBitRate:I

.field private mFileSize:I

.field private mFrameGains:[I

.field private mMaxFrames:I

.field private mMaxGain:I

.field private mMinGain:I

.field private mNumFrames:I

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 794
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->BLOCK_SIZES:[I

    .line 798
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->GAIN_FAC_MR515:[I

    .line 809
    const/16 v0, 0x41

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->QUA_ENER_MR515:[I

    .line 820
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->QUA_GAIN_CODE:[I

    .line 838
    const/16 v0, 0x400

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->GAIN_FAC_MR475:[I

    .line 968
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->GRAY:[I

    .line 970
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->QUA_GAIN_PITCH:[I

    return-void

    .line 794
    :array_0
    .array-data 4
        0xc
        0xd
        0xf
        0x11
        0x13
        0x14
        0x1a
        0x1f
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 798
    :array_1
    .array-data 4
        0x7051
        0xae1
        0x19c2
        0x1cf5
        0x28cc
        0x4f5
        0x1147
        0x614
        0x3214
        0x9c2
        0x12e1
        0x9c2
        0x1eb8
        0x75c
        0xc51
        0x70a
        0x4ee1
        0xbd7
        0x16e1
        0xfae
        0x230a
        0x570
        0x1000
        0x28f
        0x3666
        0xc28
        0x123d
        0xa8f
        0x1999
        0x385
        0xa66
        0x28f
        0x5bd7
        0x999
        0x13d7
        0x1000
        0x2170
        0x2e1
        0x10a3
        0x828
        0x3000
        0x5c2
        0x1214
        0x599
        0x1b5c
        0x2e1
        0x8cc
        0x4cc
        0x43ae
        0x91e
        0x16b8
        0xe66
        0x2199
        0x30a
        0xee1
        0x266
        0x2428
        0x6e1
        0xdc2
        0x7ae
        0x1599
        0x2e1
        0xc7a
        0x30a
    .end array-data

    .line 809
    :array_2
    .array-data 4
        0x43b5
        -0xd67
        0x108b
        0x149c
        0x2085
        -0x28b6
        0x2ab
        -0x21a1
        0x27a4
        -0x112e
        0x5c0
        -0x112e
        0x16aa
        -0x1afb
        -0x917
        -0x1c87
        0x376d
        -0xa76
        0xc6d
        -0xb4
        0x1b3c
        -0x257f
        0x0
        -0x3fb1
        0x2a84
        -0x98c
        0x48d
        -0xe71
        0x1054
        -0x349c
        -0xef9
        -0x3fb1
        0x3cb7
        -0x11c2
        0x779
        0x0
        0x199c
        -0x3b97
        0x15b
        -0x1769
        0x262b
        -0x2382
        0x43e
        -0x247d
        0x12a4
        -0x3b97
        -0x14c9
        -0x29da
        0x321b
        -0x138a
        0xc2e
        -0x3aa
        0x19c6
        -0x39b6
        -0x286
        -0x41ef
        0x1c53
        -0x1d54
        -0x53f
        -0x1981
        0xa6c
        -0x3b97
        -0x8a4
        -0x996
        -0x39b6
    .end array-data

    .line 820
    :array_3
    .array-data 4
        0x9f
        -0xec0
        -0x58cb
        0xce
        -0xd42
        -0x4fcc
        0x10c
        -0xbbd
        -0x46a8
        0x15d
        -0xa37
        -0x3d7b
        0x1a3
        -0x929
        -0x3721
        0x1e2
        -0x85a
        -0x3243
        0x22a
        -0x78c
        -0x2d6d
        0x27d
        -0x6be
        -0x2893
        0x2dd
        -0x5ee
        -0x23b3
        0x34a
        -0x522
        -0x1ee2
        0x3c9
        -0x452
        -0x1a00
        0x45a
        -0x384
        -0x1528
        0x501
        -0x2b6
        -0x104d
        0x5c1
        -0x1e7
        -0xb73
        0x69e
        -0x119
        -0x698
        0x79c
        -0x4b
        -0x1bd
        0x8c1
        0x85
        0x321
        0xa11
        0x153
        0x7fc
        0xb93
        0x221
        0xcd5
        0xd50
        0x2f0
        0x11b2
        0xf4f
        0x3be
        0x168c
        0x119b
        0x48d
        0x1b68
        0x143f
        0x55b
        0x2043
        0x1748
        0x629
        0x251d
        0x1ac7
        0x6f8
        0x29f9
        0x1ecb
        0x7c7
        0x2ed4
        0x2369
        0x895
        0x33af
        0x28b9
        0x964
        0x388a
        0x30de
        0xa71
        0x3ee0
        0x3f87
        0xbf4
        0x47fd
        0x5296
        0xd78
        0x511b
        0x6b5d
        0xefc
        0x5a39
    .end array-data

    .line 838
    :array_4
    .array-data 4
        0x32c
        0x80
        0x21e
        0x8c
        0xb39
        0x46f
        0x8da
        0xd4a
        0x813
        0x233
        0x3185
        0x287
        0x1024
        0x706
        0x15e1
        0x14a5
        0x1e09
        0x176
        0xe97
        0x1b9
        0x2aa0
        0xa4e
        0x2e1f
        0x9be
        0x500a
        0x31d
        0x1462
        0x2a3
        0x1a44
        0x20a2
        0x14a2
        0x6a0
        0x5d0
        0x1ac
        0x16fa
        0x1c4
        0x14d4
        0xfe8
        0xdff
        0x4f4
        0x9a5
        0x385
        0x3e16
        0x3ed
        0x3a86
        0xcc7
        0x285b
        0x12fa
        0xe33
        0x7e5
        0xa24
        0x343
        0x3048
        0x131c
        0x2fae
        0x6a8
        0x3478
        0x644
        0x239e
        0x925
        0xf80
        0x602
        0x1567
        0x26d0
        0xed3
        0x1a1
        0x54f
        0x19e
        0xe38
        0x621
        0x1f3b
        0xdd5
        0x2c8d
        0x285
        0x2168
        0x27b
        0xfd8
        0x561
        0x40e0
        0x17ec
        0x2c9c
        0x2bc
        0x7d7
        0x25f
        0x307f
        0x62a
        0x2b6f
        0x122e
        0x3570
        0x6ac
        0x2ed6
        0x4cd
        0x1f3c
        0x1c81
        0x33af
        0x1653
        0x97c
        0x487
        0x819
        0x795
        0x184a
        0x17e9
        0xdda
        0x70c
        0x22dd
        0x70a
        0x21e7
        0x62c
        0x366f
        0xdf8
        0x3401
        0x185d
        0x17fe
        0x46a
        0x176a
        0x6c6
        0x373d
        0x1236
        0x2c07
        0xcf9
        0x2fc2
        0x60f
        0x366b
        0xbc7
        0x13d9
        0x28e0
        0x24e4
        0x1a32
        0x699
        0x2ab
        0x59c
        0x51a
        0x1c2c
        0xf5d
        0xff2
        0xa99
        0x1e71
        0x2c0
        0x3ade
        0x322
        0x189b
        0x145c
        0x10f1
        0x14ed
        0x1a14
        0x21d
        0x17ae
        0x272
        0x3553
        0xe74
        0x2cea
        0x968
        0x3f1c
        0x2cc
        0x2f91
        0x2ef
        0x1f81
        0x2ce1
        0x18aa
        0x8d0
        0x1172
        0x1f0
        0x1c7d
        0x20b
        0x27e5
        0xef9
        0x20ca
        0xbdd
        0x20d3
        0x3c6
        0x3794
        0x758
        0x21ff
        0x1521
        0x400b
        0x12ff
        0x1cfc
        0x7bb
        0x17c9
        0x4ce
        0x249b
        0x112e
        0x38de
        0xd23
        0x34f7    # 1.9E-41f
        0xb39
        0x336b
        0x5b9
        0x159e
        0x68e
        0x3352
        0x39b3
        0x1caa
        0x258
        0x526
        0x224
        0x109c
        0xdd3
        0x273c
        0x93c
        0x295b
        0x26e
        0x3320
        0x29d
        0x372e
        0xdc6
        0x13af
        0x2638
        0x3bea
        0x26b
        0xc2b
        0x24e
        0x403a
        0xbc5
        0x3cb6
        0x1048
        0x3cb1
        0x64b
        0x3c2d
        0x4cc
        0x3e97
        0x2453
        0x1d6e
        0x1370
        0x7c6
        0x4bd
        0x2cb7
        0x485
        0x30e0
        0x158f
        0x2503
        0xa54
        0x1e24
        0x7f2
        0x33e0
        0x8bf
        0x3e8b
        0x13e5
        0x1f82
        0x1a69
        0x2763
        0x585
        0x138a
        0x92b
        0x30eb
        0x1757
        0x3b16
        0xb53
        0x4758
        0x8f1
        0x3dd3
        0x9df
        0x3f89
        0x280e
        0x393b
        0x2c37
        0x705
        0x151
        0xc2b
        0x18d
        0xdb6
        0xb70
        0x11f0
        0xa6e
        0x1d5f
        0x274
        0x2c97
        0x290
        0x173a
        0x983
        0x1990
        0x1cc7
        0x202e
        0x33d
        0xfa0
        0x35f
        0x2730
        0x9bc
        0x3eb9
        0xddf
        0x471c
        0x41e
        0x17d7
        0x5ae
        0x16fc
        0x1edc
        0x4940
        0xd8c
        0x748
        0x220
        0x23ee
        0x2ab
        0x2d67
        0x1040
        0x11f2
        0x66c
        0xc56
        0x485
        0x3e51
        0xa00
        0x303d
        0xe95
        0x440c
        0x148c
        0x17da
        0x7d4
        0xb65
        0x6ce
        0x4053
        0x1489
        0x4193
        0x690
        0x4335
        0x6df
        0x12a5
        0xc9f
        0x1cda
        0x1793
        0x3806
        0x271c
        0xfc3
        0x1ba
        0x1062
        0x1ca
        0x23fe
        0x8c2
        0x1d03
        0x1079
        0x323c
        0x321
        0x2bb2
        0x339
        0x3168
        0x824
        0x329c
        0x199a
        0x2521
        0x3e4
        0x19e5
        0x3d9
        0x2929
        0x9c6
        0x3bb9
        0x138e
        0x313a
        0x807
        0x3c7c
        0x675
        0x3f42
        0x1b09
        0x3797
        0x169e
        0xa42
        0x33c
        0x15ef
        0x696
        0x355f
        0x1692
        0xe54
        0x612
        0x2c31
        0xa49
        0x262a
        0x5b3
        0x36b3
        0x127d
        0x3e19
        0x1893
        0x1886
        0x74e
        0x1ee6
        0x8ed
        0x4252
        0x11db
        0x40c0
        0xf09
        0x3b90
        0x907
        0x3e97
        0xcac
        0x387b
        0x4590
        0x2e47
        0xacb
        0x7bd
        0x57f
        0x578
        0x36c
        0x10ef
        0xddb
        0x1127
        0x1072
        0x151d
        0x2a8
        0x4435
        0x30d
        0x1965
        0x13fe
        0x1f9b
        0x1dfd
        0x1cbb
        0x31a
        0x208d
        0x49e
        0x3ac1
        0xc58
        0x3a50
        0xbdf
        0x4fc5
        0x370
        0x38d1
        0x354
        0x3031
        0x3974
        0x1af8
        0x780
        0x1081
        0x3a5
        0x201a
        0x43f
        0x29a3
        0xff4
        0x2762
        0x11b5
        0xaaf
        0x348
        0x50b1
        0x439
        0x4147
        0x174e
        0x3e01
        0x11e2
        0x2a77
        0xa0e
        0xebd
        0x48e
        0x38b7
        0xfcc
        0x50db
        0xa43
        0x3b73
        0xaae
        0x3baa
        0x88a
        0x1871
        0xc9a
        0x3345
        0x4c18
        0x1c1c
        0x3a2
        0x99e
        0x652
        0x11a3
        0xc14
        0x361c
        0x10b5
        0x28dc
        0x341
        0x43bb
        0x32a
        0x41fb
        0x8f1
        0x3cba
        0x2019
        0x3523
        0x694
        0xc7d
        0x72a
        0x3e4c
        0xb04
        0x3dc4
        0x14cf
        0x426e
        0x986
        0x4194
        0x52e
        0x3d37
        0x1fdc
        0x2dce
        0x216c
        0xeb2
        0x805
        0x255b
        0x525
        0x34f9
        0x1a86
        0x2fc3
        0x790
        0x1ff4
        0xdde
        0x33e7
        0x6f2
        0x3fab
        0x19c7
        0x3fa3
        0x1e4e
        0x2149
        0x9f7
        0x1c39
        0xa55
        0x475d
        0x1d41
        0x41f5
        0x8c8
        0x45da
        0xb44
        0x4371
        0xd00
        0x24c9
        0x4ec2
        0x2b22
        0x2080
        0x506
        0x26c
        0x597
        0x247
        0x1769
        0x8f1
        0xf8a
        0xe2a
        0x1418
        0x2f0
        0x3461
        0x33e
        0x15b1
        0xb2c
        0x2df4
        0x1714
        0x29f1
        0x230
        0x1546
        0x234
        0x3409
        0xbc0
        0x2eaa
        0xe63
        0x4daf
        0x31e
        0x2661
        0x2d8
        0x355f
        0x222c
        0x1cdf
        0xbed
        0x9d3
        0x30a
        0x17a2
        0x341
        0x1945
        0x13d2
        0x2071
        0x99f
        0x17fd
        0x749
        0x3bcc
        0x4ee
        0x3848
        0x11c3
        0x355f
        0x11a3
        0xc41
        0xba7
        0x9af
        0x4eb
        0x3af0
        0x1227
        0x3c16
        0xa2f
        0x389c
        0x958
        0x30ae
        0x9e9
        0x1d73
        0xb85
        0x326d
        0x2f1c
        0x155c
        0x2ac
        0xc45
        0x2d2
        0x13d9
        0x4fa
        0x31bc
        0x1068
        0x3bc6
        0x2a9
        0x1e8b
        0x250
        0x1986
        0x7e5
        0x405e
        0x2221
        0x3434
        0x372
        0x1515
        0x383
        0x3940
        0x882
        0x3995
        0x1083
        0x37be    # 1.9997E-41f
        0x512
        0x3669
        0x7ed
        0x3c75
        0x1d3a
        0x3dc7
        0x11dc
        0x9d9
        0x7dd
        0x13c6
        0x70c
        0x1427
        0x19b6
        0x1bda
        0xe0d
        0x2aa8
        0x64b
        0x2dd1
        0x6ac
        0x4207
        0xd7f
        0x3f8c
        0x19f0
        0x245a
        0x3ef
        0x2499
        0x83a
        0x4aee
        0x13ad
        0x3099
        0x10ad
        0x3e2f
        0x534
        0x3bfd
        0xdb8
        0x2e7a
        0x373d
        0x3ee5
        0x1ac6
        0x7da
        0x2e1
        0xec3
        0x35d
        0x2cbe
        0xb40
        0xdec
        0xdd4
        0x2361
        0x4d9
        0x3067
        0x380
        0x2162
        0x1215
        0x2d29
        0x1690
        0x1fc1
        0x24d
        0x201a
        0x24c
        0x4928
        0xeab
        0x32ad
        0xc4d
        0x3d71
        0x2f6
        0x40fa
        0x2f2
        0x3b76
        0x2b82
        0x3dff
        0x8a0
        0x1241
        0x262
        0x27ea
        0x2a6
        0x3b99
        0x1032
        0x1661
        0xcff
        0x20b9
        0x686
        0x4d96
        0x911
        0x3c5a
        0x1587
        0x36e6
        0x1569
        0x1660
        0xb48
        0x1d9c
        0x542
        0x3830
        0x14cd
        0x3f6c
        0xf6e
        0x3b0e
        0xea0
        0x3bca
        0x59b
        0x3905
        0xfe6
        0x300d
        0x3d50
        0x1dc1
        0x6a3
        0x87a
        0x374
        0x116b
        0x11d7
        0x46ae
        0xcea
        0x31c6
        0x32f
        0x3a4e
        0x38b
        0x3aa8
        0x10b9
        0x3c9e
        0x20b0
        0x464a
        0x43f
        0x936
        0x361
        0x3f99
        0xecb
        0x3d3f
        0x11f4
        0x3fe4
        0x5fe
        0x40c8
        0x8a2
        0x41c1
        0x25e1
        0x3e39
        0x11a1
        0xccd
        0x43d
        0x25ab
        0x88b
        0x2ec5
        0x17b4
        0x23ef
        0x116e
        0x22fb
        0x65d
        0x2831
        0xbf6
        0x4061
        0x1423
        0x3c6a
        0x1b9a
        0x356e
        0x9ef
        0x1499
        0x8e5
        0x416a
        0x1845
        0x410f
        0xd50
        0x4f50
        0xd23
        0x4900
        0x7c1
        0x375c
        0x3243
        0x3b32
        0x3d57
        0x1179
        0x3fc
        0x691
        0x376
        0x10d7
        0x10cd
        0x22f8
        0xe49
        0x1705
        0x47b
        0x2d7f
        0x5ac
        0x3e0e
        0x8b3
        0x11e6
        0x19f4
        0x1b11
        0x4b5
        0x184c
        0x31f
        0x307f
        0xd51
        0x3e60
        0xf25
        0x4d93
        0x83d
        0x25d9
        0x85d    # 3.0E-42f
        0x3996
        0x227e
        0x3890
        0xa27
        0x719
        0x4d6
        0x1e5b
        0x32d
        0x4a87
        0x113a
        0x15b2
        0x810
        0xe67
        0xb1c
        0x441b
        0x8d0
        0x4139
        0x1186
        0x3f47
        0x150c
        0x1f5c
        0xacb
        0xd4d
        0x847
        0x4412
        0x1565
        0x3582
        0xae2
        0x4da7
        0xaa0
        0x238a
        0xf28
        0x46fc
        0x12e1
        0x43b8
        0x2faf
        0x13fc
        0x3e4
        0x1347
        0x3dc
        0x26a0
        0xc09
        0x177e
        0x14fb
        0x3e09
        0x683
        0x20d5
        0x49f
        0x3aef
        0x93e
        0x4d41
        0x1b5a
        0x2ebb
        0x61a
        0x1c6f
        0x468
        0x41db
        0x5fc
        0x3d92
        0x1505
        0x3974
        0x811
        0x4e89
        0x86b
        0x4306
        0x2035
        0x45f7
        0x18ae
        0x155b
        0x5e0
        0x1004
        0xa0e
        0x440d
        0x1a9a
        0x1629
        0xb48
        0x40fc
        0xd36
        0x230f
        0x727
        0x4ebf
        0x1281
        0x4c5e
        0x1c7e
        0x1a02
        0xadd
        0x2cd0
        0xcf9
        0x4bc5
        0x13be
        0x49be
        0x1272
        0x4037
        0x945
        0x4fce
        0x1122
        0x2c59
        0x679e
        0x2d49
        0xbfc
        0xb32
        0x61e
        0x13f4
        0x42e
        0x258e
        0x1333
        0x134b
        0xdd0
        0x1d75
        0x36e
        0x50ed
        0x353
        0x1b1a
        0x112b
        0x419f
        0x1e35
        0x2799
        0x3fb
        0x2675
        0x3c4
        0x3c86
        0xf73
        0x3c63
        0xd66
        0x49af
        0x3d6
        0x4e98
        0x3c3
        0x41ec
        0x3257
        0x37fe
        0x1068
        0x19c7
        0x4c4
        0x2406
        0x32e
        0x422e
        0x140e
        0x161d
        0x1322
        0x1570
        0x706
        0x4f22
        0xf7a
        0x426d
        0x1822
        0x4609
        0x1729
        0x2495
        0xd5c
        0x1d32
        0x7b3
        0x4c51
        0x1439
        0x4a3b
        0xbbe
        0x4046
        0xecc
        0x3ec6
        0x93f
        0x21d8
        0xab7
        0x24e5
        0x66f6
        0x2a68
        0x507
        0xde3
        0x3f1
        0x15e6
        0xe26
        0x4bfd
        0x1588
        0x30a5
        0x31d
        0x509a
        0x38f
        0x3c43
        0xbfa
        0x428d
        0x2823
        0x49c3
        0xa49
        0xf49
        0x4f4
        0x4c3f
        0xd2b
        0x4684
        0x146e
        0x4b5b
        0x68e
        0x4c34
        0xc64
        0x4698
        0x2a02
        0x40f1
        0x1abd
        0xc3e
        0x8fa
        0x2a75
        0x985
        0x3cdc
        0x1b01
        0x3135
        0xd35
        0x2b6c
        0xce1
        0x417a
        0x978
        0x49a5
        0x1a3b
        0x4313
        0x269f
        0x31c7
        0xa2d
        0x22e9
        0xc44
        0x4a59
        0x1e54
        0x47ab
        0xf28
        0x4ffb
        0xe62
        0x4c92
        0xd34
        0x32f4
        0x4bad
        0x291e
        0x5a54
    .end array-data

    .line 968
    :array_5
    .array-data 4
        0x0
        0x1
        0x3
        0x2
        0x5
        0x6
        0x4
        0x7
    .end array-data

    .line 970
    :array_6
    .array-data 4
        0x0
        0xccd
        0x199c
        0x2000
        0x2666
        0x2ccd
        0x3000
        0x3333
        0x3666
        0x399a
        0x3ccd
        0x4000
        0x4333
        0x4666
        0x499a
        0x4ccd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;-><init>()V

    .line 61
    return-void
.end method

.method public static getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR$1;

    invoke-direct {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR$1;-><init>()V

    return-object v0
.end method

.method private parse3gpp(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 156
    if-ge p2, v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-array v0, v2, [B

    .line 160
    .local v0, "boxHeader":[B
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 161
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 163
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 169
    .local v1, "boxLen":I
    if-gt v1, p2, :cond_0

    if-lez v1, :cond_0

    .line 172
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    const/4 v2, 0x6

    aget-byte v2, v0, v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_2

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    const/16 v3, 0x74

    if-ne v2, v3, :cond_2

    .line 176
    invoke-virtual {p0, p1, v1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->parseAMR(Ljava/io/InputStream;I)V

    goto :goto_0

    .line 180
    :cond_2
    add-int/lit8 v2, v1, -0x8

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 181
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    add-int/lit8 v3, v1, -0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 183
    sub-int v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->parse3gpp(Ljava/io/InputStream;I)V

    goto :goto_0
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .locals 11
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    .line 99
    iput v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mNumFrames:I

    .line 100
    const/16 v3, 0x40

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxFrames:I

    .line 101
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxFrames:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFrameGains:[I

    .line 102
    const v3, 0x3b9aca00

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMinGain:I

    .line 103
    iput v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxGain:I

    .line 104
    iput v9, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mBitRate:I

    .line 105
    iput v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 108
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mInputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFileSize:I

    .line 110
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFileSize:I

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 111
    new-instance v3, Ljava/io/IOException;

    const-string v4, "File too small to parse"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mInputFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 115
    .local v2, "stream":Ljava/io/FileInputStream;
    const/16 v3, 0xc

    new-array v1, v3, [B

    .line 116
    .local v1, "header":[B
    invoke-virtual {v2, v1, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 117
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 118
    aget-byte v3, v1, v6

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1

    aget-byte v3, v1, v10

    const/16 v4, 0x21

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    const/16 v4, 0x41

    if-ne v3, v4, :cond_1

    const/4 v3, 0x3

    aget-byte v3, v1, v3

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_1

    aget-byte v3, v1, v8

    const/16 v4, 0x52

    if-ne v3, v4, :cond_1

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    if-ne v3, v9, :cond_1

    .line 124
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFileSize:I

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {p0, v2, v3}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->parseAMR(Ljava/io/InputStream;I)V

    .line 127
    :cond_1
    invoke-virtual {v2, v1, v7, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 128
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 130
    aget-byte v3, v1, v8

    const/16 v4, 0x66

    if-ne v3, v4, :cond_3

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_3

    aget-byte v3, v1, v7

    const/16 v4, 0x79

    if-ne v3, v4, :cond_3

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    const/16 v4, 0x70

    if-ne v3, v4, :cond_3

    const/16 v3, 0x8

    aget-byte v3, v1, v3

    const/16 v4, 0x33

    if-ne v3, v4, :cond_3

    const/16 v3, 0x9

    aget-byte v3, v1, v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_3

    aget-byte v3, v1, v9

    const/16 v4, 0x70

    if-ne v3, v4, :cond_3

    const/16 v3, 0xb

    aget-byte v3, v1, v3

    const/16 v4, 0x34

    if-ne v3, v4, :cond_3

    .line 139
    aget-byte v3, v1, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v4, v1, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 145
    .local v0, "boxLen":I
    if-lt v0, v8, :cond_2

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFileSize:I

    add-int/lit8 v3, v3, -0x8

    if-gt v0, v3, :cond_2

    .line 146
    add-int/lit8 v3, v0, -0xc

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 147
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    add-int/lit8 v4, v0, -0xc

    add-int/2addr v3, v4

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 150
    :cond_2
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFileSize:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v2, v3}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->parse3gpp(Ljava/io/InputStream;I)V

    .line 152
    .end local v0    # "boxLen":I
    :cond_3
    return-void
.end method

.method addFrame(III)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "frameSize"    # I
    .param p3, "gain"    # I

    .prologue
    .line 502
    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFrameGains:[I

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mNumFrames:I

    aput p3, v5, v6

    .line 503
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMinGain:I

    if-ge p3, v5, :cond_0

    .line 504
    iput p3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMinGain:I

    .line 505
    :cond_0
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxGain:I

    if-le p3, v5, :cond_1

    .line 506
    iput p3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxGain:I

    .line 508
    :cond_1
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mNumFrames:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mNumFrames:I

    .line 509
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mNumFrames:I

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxFrames:I

    if-ne v5, v6, :cond_3

    .line 510
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxFrames:I

    mul-int/lit8 v3, v5, 0x2

    .line 512
    .local v3, "newMaxFrames":I
    new-array v4, v3, [I

    .line 513
    .local v4, "newOffsets":[I
    new-array v2, v3, [I

    .line 514
    .local v2, "newLens":[I
    new-array v1, v3, [I

    .line 515
    .local v1, "newGains":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mNumFrames:I

    if-ge v0, v5, :cond_2

    .line 516
    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFrameGains:[I

    aget v5, v5, v0

    aput v5, v1, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_2
    iput-object v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFrameGains:[I

    .line 519
    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mMaxFrames:I

    .line 521
    .end local v0    # "i":I
    .end local v1    # "newGains":[I
    .end local v2    # "newLens":[I
    .end local v3    # "newMaxFrames":I
    .end local v4    # "newOffsets":[I
    :cond_3
    return-void
.end method

.method public getAvgBitrateKbps()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mBitRate:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public getFileSizeBytes()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFileSize:I

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "AMR"

    return-object v0
.end method

.method public getFrameGains()[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mFrameGains:[I

    return-object v0
.end method

.method getMR122Params([I[I[I[I[[I)V
    .locals 9
    .param p1, "bits"    # [I
    .param p2, "adaptiveIndex"    # [I
    .param p3, "adaptiveGain"    # [I
    .param p4, "fixedGain"    # [I
    .param p5, "pulse"    # [[I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 528
    const/16 v0, 0x2d

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2b

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x29

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x27

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x25

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x23

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    const/16 v1, 0x21

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    const/16 v1, 0x1f

    aget v1, p1, v1

    mul-int/lit16 v1, v1, 0x80

    add-int/2addr v0, v1

    const/16 v1, 0x1d

    aget v1, p1, v1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    aput v0, p2, v4

    .line 538
    const/16 v0, 0xf2

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x4f

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x4d

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x4b

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x49

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x47

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    aput v0, p2, v5

    .line 545
    const/16 v0, 0x2e

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2c

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x2a

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x28

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x26

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x24

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    const/16 v1, 0x22

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    const/16 v1, 0x20

    aget v1, p1, v1

    mul-int/lit16 v1, v1, 0x80

    add-int/2addr v0, v1

    const/16 v1, 0x1e

    aget v1, p1, v1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    aput v0, p2, v6

    .line 555
    const/16 v0, 0xf3

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x50

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x4e

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x4c

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x4a

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x48

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    aput v0, p2, v7

    .line 563
    const/16 v0, 0x58

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x37

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x33

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x2f

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aput v0, p3, v4

    .line 568
    const/16 v0, 0x59

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x38

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x34

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x30

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aput v0, p3, v5

    .line 573
    const/16 v0, 0x5a

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x39

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x35

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x31

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aput v0, p3, v6

    .line 578
    const/16 v0, 0x5b

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3a

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x36

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x32

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aput v0, p3, v7

    .line 584
    const/16 v0, 0x68

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x5c

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x43

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x3f

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x3b

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    aput v0, p4, v4

    .line 590
    const/16 v0, 0x69

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x5d

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x44

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x40

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x3c

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    aput v0, p4, v5

    .line 596
    const/16 v0, 0x6a

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x5e

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x45

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x41

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x3d

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    aput v0, p4, v6

    .line 602
    const/16 v0, 0x6b

    aget v0, p1, v0

    mul-int/lit8 v0, v0, 0x1

    const/16 v1, 0x5f

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/16 v1, 0x46

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/16 v1, 0x42

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x3e

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    aput v0, p4, v7

    .line 609
    aget-object v0, p5, v4

    const/16 v1, 0x7a

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x7b

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x7c

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x60

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 614
    aget-object v0, p5, v4

    const/16 v1, 0x7d

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x7e

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x7f

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x64

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 619
    aget-object v0, p5, v4

    const/16 v1, 0x80

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x81

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x82

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x6c

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 624
    aget-object v0, p5, v4

    const/16 v1, 0x83

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x84

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x85

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x70

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 629
    aget-object v0, p5, v4

    const/16 v1, 0x86

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x87

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x88

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x74

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 634
    aget-object v0, p5, v4

    const/4 v1, 0x5

    const/16 v2, 0xb6

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xb7

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xb8

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 638
    aget-object v0, p5, v4

    const/4 v1, 0x6

    const/16 v2, 0xb9

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xba

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xbb

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 642
    aget-object v0, p5, v4

    const/4 v1, 0x7

    const/16 v2, 0xbc

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xbd

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xbe

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 646
    aget-object v0, p5, v4

    const/16 v1, 0x8

    const/16 v2, 0xbf

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc0

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xc1

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 650
    aget-object v0, p5, v4

    const/16 v1, 0x9

    const/16 v2, 0xc2

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc3

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xc4

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 654
    aget-object v0, p5, v5

    const/16 v1, 0x89

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8a

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x8b

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x61

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 659
    aget-object v0, p5, v5

    const/16 v1, 0x8c

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8d

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x8e

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x65

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 664
    aget-object v0, p5, v5

    const/16 v1, 0x8f

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x90

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x91

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x6d

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 669
    aget-object v0, p5, v5

    const/16 v1, 0x92

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x93

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x94

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x71

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 674
    aget-object v0, p5, v5

    const/16 v1, 0x95

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x96

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x97

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x75

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 679
    aget-object v0, p5, v5

    const/4 v1, 0x5

    const/16 v2, 0xc5

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc6

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xc7

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 683
    aget-object v0, p5, v5

    const/4 v1, 0x6

    const/16 v2, 0xc8

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc9

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xca

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 687
    aget-object v0, p5, v5

    const/4 v1, 0x7

    const/16 v2, 0xcb

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xcc

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xcd

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 691
    aget-object v0, p5, v5

    const/16 v1, 0x8

    const/16 v2, 0xce

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xcf

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xd0

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 695
    aget-object v0, p5, v5

    const/16 v1, 0x9

    const/16 v2, 0xd1

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd2

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xd3

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 699
    aget-object v0, p5, v6

    const/16 v1, 0x98

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x99

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x9a

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x62

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 704
    aget-object v0, p5, v6

    const/16 v1, 0x9b

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x9c

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x9d

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x66

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 709
    aget-object v0, p5, v6

    const/16 v1, 0x9e

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0x9f

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xa0

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x6e

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 714
    aget-object v0, p5, v6

    const/16 v1, 0xa1

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa2

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xa3

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x72

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 719
    aget-object v0, p5, v6

    const/16 v1, 0xa4

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa5

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xa6

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x76

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 724
    aget-object v0, p5, v6

    const/4 v1, 0x5

    const/16 v2, 0xd4

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd5

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xd6

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 728
    aget-object v0, p5, v6

    const/4 v1, 0x6

    const/16 v2, 0xd7

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd8

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xd9

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 732
    aget-object v0, p5, v6

    const/4 v1, 0x7

    const/16 v2, 0xda

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xdb

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xdc

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 736
    aget-object v0, p5, v6

    const/16 v1, 0x8

    const/16 v2, 0xdd

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xde

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xdf

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 740
    aget-object v0, p5, v6

    const/16 v1, 0x9

    const/16 v2, 0xe0

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xe1

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xe2

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 744
    aget-object v0, p5, v7

    const/16 v1, 0xa7

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa8

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xa9

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x63

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 749
    aget-object v0, p5, v7

    const/16 v1, 0xaa

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0xab

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xac

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x67

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 754
    aget-object v0, p5, v7

    const/16 v1, 0xad

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0xae

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xaf

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x6f

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 759
    aget-object v0, p5, v7

    const/16 v1, 0xb0

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0xb1

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xb2

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x73

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v7

    .line 764
    aget-object v0, p5, v7

    const/16 v1, 0xb3

    aget v1, p1, v1

    mul-int/lit8 v1, v1, 0x1

    const/16 v2, 0xb4

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0xb5

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    const/16 v2, 0x77

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 769
    aget-object v0, p5, v7

    const/4 v1, 0x5

    const/16 v2, 0xe3

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xe4

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xe5

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 773
    aget-object v0, p5, v7

    const/4 v1, 0x6

    const/16 v2, 0xe6

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xe7

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xe8

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 777
    aget-object v0, p5, v7

    const/4 v1, 0x7

    const/16 v2, 0xe9

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xea

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xeb

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 781
    aget-object v0, p5, v7

    const/16 v1, 0x8

    const/16 v2, 0xec

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xed

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xee

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 785
    aget-object v0, p5, v7

    const/16 v1, 0x9

    const/16 v2, 0xef

    aget v2, p1, v2

    mul-int/lit8 v2, v2, 0x1

    const/16 v3, 0xf0

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/16 v3, 0xf1

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 789
    return-void
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mNumFrames:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x1f40

    return v0
.end method

.method public getSamplesPerFrame()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x28

    return v0
.end method

.method parseAMR(Ljava/io/InputStream;I)V
    .locals 12
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 188
    new-array v5, v8, [I

    .line 189
    .local v5, "prevEner":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 190
    const/4 v7, 0x0

    aput v7, v5, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    new-array v6, v8, [I

    .line 194
    .local v6, "prevEnerMR122":[I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    .line 195
    const/16 v7, -0x94d

    aput v7, v6, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    :cond_1
    move v4, p2

    .line 199
    .local v4, "originalMaxLen":I
    const/4 v1, 0x0

    .line 200
    .local v1, "bytesTotal":I
    :cond_2
    if-lez p2, :cond_3

    .line 201
    invoke-virtual {p0, p1, p2, v5}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->parseAMRFrame(Ljava/io/InputStream;I[I)I

    move-result v0

    .line 202
    .local v0, "bytesConsumed":I
    add-int/2addr v1, v0

    .line 203
    sub-int/2addr p2, v0

    .line 205
    iget-object v7, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    if-eqz v7, :cond_2

    .line 206
    iget-object v7, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    int-to-double v8, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-interface {v7, v8, v9}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;->reportProgress(D)Z

    move-result v3

    .line 208
    .local v3, "keepGoing":Z
    if-nez v3, :cond_2

    .line 213
    .end local v0    # "bytesConsumed":I
    .end local v3    # "keepGoing":Z
    :cond_3
    return-void
.end method

.method parseAMRFrame(Ljava/io/InputStream;I[I)I
    .locals 58
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLen"    # I
    .param p3, "prevEner"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    move/from16 v22, v0

    .line 218
    .local v22, "frameOffset":I
    const/4 v4, 0x1

    new-array v0, v4, [B

    move-object/from16 v25, v0

    .line 219
    .local v25, "frameTypeHeader":[B
    const/4 v4, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v49

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    .line 220
    move-object/from16 v0, p0

    iget v4, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 221
    const/4 v4, 0x0

    aget-byte v4, v25, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x3

    rem-int/lit8 v24, v4, 0xf

    .line 222
    .local v24, "frameType":I
    const/4 v4, 0x0

    aget-byte v4, v25, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v23, v4, 0x1

    .line 223
    .local v23, "frameQuality":I
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->BLOCK_SIZES:[I

    aget v13, v4, v24

    .line 225
    .local v13, "blockSize":I
    add-int/lit8 v4, v13, 0x1

    move/from16 v0, p2

    if-le v4, v0, :cond_0

    .line 498
    .end local p2    # "maxLen":I
    :goto_0
    return p2

    .line 231
    .restart local p2    # "maxLen":I
    :cond_0
    if-nez v13, :cond_1

    .line 232
    const/16 p2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    new-array v0, v13, [B

    move-object/from16 v47, v0

    .line 236
    .local v47, "v":[B
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v4, v13}, Ljava/io/InputStream;->read([BII)I

    .line 237
    move-object/from16 v0, p0

    iget v4, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    add-int/2addr v4, v13

    move-object/from16 v0, p0

    iput v4, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mOffset:I

    .line 239
    mul-int/lit8 v4, v13, 0x8

    new-array v5, v4, [I

    .line 240
    .local v5, "bits":[I
    const/16 v32, 0x0

    .line 241
    .local v32, "ii":I
    aget-byte v4, v47, v32

    and-int/lit16 v0, v4, 0xff

    move/from16 v48, v0

    .line 242
    .local v48, "value":I
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_1
    mul-int/lit8 v4, v13, 0x8

    move/from16 v0, v31

    if-ge v0, v4, :cond_3

    .line 243
    move/from16 v0, v48

    and-int/lit16 v4, v0, 0x80

    shr-int/lit8 v4, v4, 0x7

    aput v4, v5, v31

    .line 244
    shl-int/lit8 v48, v48, 0x1

    .line 245
    and-int/lit8 v4, v31, 0x7

    const/16 v49, 0x7

    move/from16 v0, v49

    if-ne v4, v0, :cond_2

    mul-int/lit8 v4, v13, 0x8

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v31

    if-ge v0, v4, :cond_2

    .line 246
    add-int/lit8 v32, v32, 0x1

    .line 247
    aget-byte v4, v47, v32

    and-int/lit16 v0, v4, 0xff

    move/from16 v48, v0

    .line 242
    :cond_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 252
    :cond_3
    sparse-switch v24, :sswitch_data_0

    .line 492
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Unsupported frame type: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    add-int/lit8 v4, v13, 0x1

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v49

    invoke-virtual {v0, v1, v4, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->addFrame(III)V

    .line 498
    :cond_4
    add-int/lit8 p2, v13, 0x1

    goto/16 :goto_0

    .line 254
    :sswitch_0
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mBitRate:I

    .line 255
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 256
    .local v28, "gain":[I
    const/4 v4, 0x0

    const/16 v49, 0x1c

    aget v49, v5, v49

    mul-int/lit8 v49, v49, 0x1

    const/16 v50, 0x1d

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x2

    add-int v49, v49, v50

    const/16 v50, 0x1e

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x4

    add-int v49, v49, v50

    const/16 v50, 0x1f

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x8

    add-int v49, v49, v50

    const/16 v50, 0x2e

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x10

    add-int v49, v49, v50

    const/16 v50, 0x2f

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x20

    add-int v49, v49, v50

    const/16 v50, 0x30

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x40

    add-int v49, v49, v50

    const/16 v50, 0x31

    aget v50, v5, v50

    move/from16 v0, v50

    mul-int/lit16 v0, v0, 0x80

    move/from16 v50, v0

    add-int v49, v49, v50

    aput v49, v28, v4

    .line 265
    const/4 v4, 0x1

    const/16 v49, 0x0

    aget v49, v28, v49

    aput v49, v28, v4

    .line 266
    const/4 v4, 0x2

    const/16 v49, 0x20

    aget v49, v5, v49

    mul-int/lit8 v49, v49, 0x1

    const/16 v50, 0x21

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x2

    add-int v49, v49, v50

    const/16 v50, 0x22

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x4

    add-int v49, v49, v50

    const/16 v50, 0x23

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x8

    add-int v49, v49, v50

    const/16 v50, 0x28

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x10

    add-int v49, v49, v50

    const/16 v50, 0x29

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x20

    add-int v49, v49, v50

    const/16 v50, 0x2a

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x40

    add-int v49, v49, v50

    const/16 v50, 0x2b

    aget v50, v5, v50

    move/from16 v0, v50

    mul-int/lit16 v0, v0, 0x80

    move/from16 v50, v0

    add-int v49, v49, v50

    aput v49, v28, v4

    .line 275
    const/4 v4, 0x3

    const/16 v49, 0x2

    aget v49, v28, v49

    aput v49, v28, v4

    .line 277
    const/16 v31, 0x0

    :goto_2
    const/4 v4, 0x4

    move/from16 v0, v31

    if-ge v0, v4, :cond_4

    .line 278
    aget v4, v28, v31

    mul-int/lit8 v4, v4, 0x4

    and-int/lit8 v49, v31, 0x1

    mul-int/lit8 v49, v49, 0x2

    add-int v4, v4, v49

    add-int/lit8 v33, v4, 0x1

    .line 279
    .local v33, "index":I
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->GAIN_FAC_MR475:[I

    aget v27, v4, v33

    .line 281
    .local v27, "gFac":I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->log(D)D

    move-result-wide v50

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->log(D)D

    move-result-wide v52

    div-double v36, v50, v52

    .line 282
    .local v36, "log2":D
    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v17, v0

    .line 283
    .local v17, "exp":I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v50, v0

    sub-double v50, v36, v50

    const-wide/high16 v52, 0x40e0000000000000L    # 32768.0

    mul-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v19, v0

    .line 285
    .local v19, "frac":I
    add-int/lit8 v17, v17, -0xc

    .line 286
    const v4, 0xc0a8

    mul-int v46, v17, v4

    .line 287
    .local v46, "tmp":I
    move/from16 v0, v19

    mul-int/lit16 v4, v0, 0x6054

    shr-int/lit8 v4, v4, 0xf

    mul-int/lit8 v4, v4, 0x2

    add-int v46, v46, v4

    .line 288
    move/from16 v0, v46

    mul-int/lit16 v4, v0, 0x2000

    const v49, 0x8000

    add-int v4, v4, v49

    shr-int/lit8 v42, v4, 0x10

    .line 290
    .local v42, "quaEner":I
    const v4, 0x17015400

    const/16 v49, 0x0

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0x15c3

    move/from16 v49, v0

    add-int v4, v4, v49

    const/16 v49, 0x1

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0x128f

    move/from16 v49, v0

    add-int v4, v4, v49

    const/16 v49, 0x2

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0xae1

    move/from16 v49, v0

    add-int v4, v4, v49

    const/16 v49, 0x3

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0x614

    move/from16 v49, v0

    add-int v4, v4, v49

    shr-int/lit8 v30, v4, 0xf

    .line 297
    .local v30, "gcode0":I
    const/4 v4, 0x3

    const/16 v49, 0x2

    aget v49, p3, v49

    aput v49, p3, v4

    .line 298
    const/4 v4, 0x2

    const/16 v49, 0x1

    aget v49, p3, v49

    aput v49, p3, v4

    .line 299
    const/4 v4, 0x1

    const/16 v49, 0x0

    aget v49, p3, v49

    aput v49, p3, v4

    .line 300
    const/4 v4, 0x0

    aput v42, p3, v4

    .line 302
    mul-int v4, v30, v27

    shr-int/lit8 v21, v4, 0x18

    .line 304
    .local v21, "frameGainEstimate":I
    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->addFrame(III)V

    .line 277
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 310
    .end local v17    # "exp":I
    .end local v19    # "frac":I
    .end local v21    # "frameGainEstimate":I
    .end local v27    # "gFac":I
    .end local v28    # "gain":[I
    .end local v30    # "gcode0":I
    .end local v33    # "index":I
    .end local v36    # "log2":D
    .end local v42    # "quaEner":I
    .end local v46    # "tmp":I
    :sswitch_1
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mBitRate:I

    .line 311
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 312
    .restart local v28    # "gain":[I
    const/4 v4, 0x0

    const/16 v49, 0x18

    aget v49, v5, v49

    mul-int/lit8 v49, v49, 0x1

    const/16 v50, 0x19

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x2

    add-int v49, v49, v50

    const/16 v50, 0x1a

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x4

    add-int v49, v49, v50

    const/16 v50, 0x24

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x8

    add-int v49, v49, v50

    const/16 v50, 0x2d

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x10

    add-int v49, v49, v50

    const/16 v50, 0x37

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x20

    add-int v49, v49, v50

    aput v49, v28, v4

    .line 319
    const/4 v4, 0x1

    const/16 v49, 0x1b

    aget v49, v5, v49

    mul-int/lit8 v49, v49, 0x1

    const/16 v50, 0x1c

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x2

    add-int v49, v49, v50

    const/16 v50, 0x1d

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x4

    add-int v49, v49, v50

    const/16 v50, 0x25

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x8

    add-int v49, v49, v50

    const/16 v50, 0x2e

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x10

    add-int v49, v49, v50

    const/16 v50, 0x38

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x20

    add-int v49, v49, v50

    aput v49, v28, v4

    .line 326
    const/4 v4, 0x2

    const/16 v49, 0x1e

    aget v49, v5, v49

    mul-int/lit8 v49, v49, 0x1

    const/16 v50, 0x1f

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x2

    add-int v49, v49, v50

    const/16 v50, 0x20

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x4

    add-int v49, v49, v50

    const/16 v50, 0x26

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x8

    add-int v49, v49, v50

    const/16 v50, 0x2f

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x10

    add-int v49, v49, v50

    const/16 v50, 0x39

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x20

    add-int v49, v49, v50

    aput v49, v28, v4

    .line 333
    const/4 v4, 0x3

    const/16 v49, 0x21

    aget v49, v5, v49

    mul-int/lit8 v49, v49, 0x1

    const/16 v50, 0x22

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x2

    add-int v49, v49, v50

    const/16 v50, 0x23

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x4

    add-int v49, v49, v50

    const/16 v50, 0x27

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x8

    add-int v49, v49, v50

    const/16 v50, 0x30

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x10

    add-int v49, v49, v50

    const/16 v50, 0x3a

    aget v50, v5, v50

    mul-int/lit8 v50, v50, 0x20

    add-int v49, v49, v50

    aput v49, v28, v4

    .line 341
    const/16 v31, 0x0

    :goto_3
    const/4 v4, 0x4

    move/from16 v0, v31

    if-ge v0, v4, :cond_4

    .line 342
    const v4, 0x17015400

    const/16 v49, 0x0

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0x15c3

    move/from16 v49, v0

    add-int v4, v4, v49

    const/16 v49, 0x1

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0x128f

    move/from16 v49, v0

    add-int v4, v4, v49

    const/16 v49, 0x2

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0xae1

    move/from16 v49, v0

    add-int v4, v4, v49

    const/16 v49, 0x3

    aget v49, p3, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0x614

    move/from16 v49, v0

    add-int v4, v4, v49

    shr-int/lit8 v30, v4, 0xf

    .line 348
    .restart local v30    # "gcode0":I
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->QUA_ENER_MR515:[I

    aget v49, v28, v31

    aget v42, v4, v49

    .line 349
    .restart local v42    # "quaEner":I
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->GAIN_FAC_MR515:[I

    aget v49, v28, v31

    aget v27, v4, v49

    .line 351
    .restart local v27    # "gFac":I
    const/4 v4, 0x3

    const/16 v49, 0x2

    aget v49, p3, v49

    aput v49, p3, v4

    .line 352
    const/4 v4, 0x2

    const/16 v49, 0x1

    aget v49, p3, v49

    aput v49, p3, v4

    .line 353
    const/4 v4, 0x1

    const/16 v49, 0x0

    aget v49, p3, v49

    aput v49, p3, v4

    .line 354
    const/4 v4, 0x0

    aput v42, p3, v4

    .line 356
    mul-int v4, v30, v27

    shr-int/lit8 v21, v4, 0x18

    .line 358
    .restart local v21    # "frameGainEstimate":I
    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->addFrame(III)V

    .line 341
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 363
    .end local v21    # "frameGainEstimate":I
    .end local v27    # "gFac":I
    .end local v28    # "gain":[I
    .end local v30    # "gcode0":I
    .end local v42    # "quaEner":I
    :sswitch_2
    const/16 v4, 0xc

    move-object/from16 v0, p0

    iput v4, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->mBitRate:I

    .line 364
    const/4 v4, 0x4

    new-array v6, v4, [I

    .line 365
    .local v6, "adaptiveIndex":[I
    const/4 v4, 0x4

    new-array v7, v4, [I

    .line 366
    .local v7, "adaptiveGain":[I
    const/4 v4, 0x4

    new-array v8, v4, [I

    .line 367
    .local v8, "fixedGain":[I
    const/4 v4, 0x4

    new-array v9, v4, [[I

    .line 368
    .local v9, "pulse":[[I
    const/16 v31, 0x0

    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v31

    if-ge v0, v4, :cond_5

    .line 369
    const/16 v4, 0xa

    new-array v4, v4, [I

    aput-object v4, v9, v31

    .line 368
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v4, p0

    .line 371
    invoke-virtual/range {v4 .. v9}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->getMR122Params([I[I[I[I[[I)V

    .line 373
    const/4 v10, 0x0

    .line 374
    .local v10, "T0":I
    const/16 v45, 0x0

    .local v45, "subframe":I
    :goto_5
    const/4 v4, 0x4

    move/from16 v0, v45

    if-ge v0, v4, :cond_4

    .line 375
    const/16 v4, 0x28

    new-array v14, v4, [I

    .line 376
    .local v14, "code":[I
    const/16 v31, 0x0

    :goto_6
    const/16 v4, 0x28

    move/from16 v0, v31

    if-ge v0, v4, :cond_6

    .line 377
    const/4 v4, 0x0

    aput v4, v14, v31

    .line 376
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 381
    :cond_6
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_7
    const/4 v4, 0x5

    move/from16 v0, v34

    if-ge v0, v4, :cond_9

    .line 382
    aget-object v4, v9, v45

    aget v4, v4, v34

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_8

    .line 383
    const/16 v44, 0x1000

    .line 388
    .local v44, "sign":I
    :goto_8
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->GRAY:[I

    aget-object v49, v9, v45

    aget v49, v49, v34

    and-int/lit8 v49, v49, 0x7

    aget v4, v4, v49

    mul-int/lit8 v4, v4, 0x5

    add-int v40, v34, v4

    .line 389
    .local v40, "pos1":I
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->GRAY:[I

    aget-object v49, v9, v45

    add-int/lit8 v50, v34, 0x5

    aget v49, v49, v50

    and-int/lit8 v49, v49, 0x7

    aget v4, v4, v49

    mul-int/lit8 v4, v4, 0x5

    add-int v41, v34, v4

    .line 390
    .local v41, "pos2":I
    aput v44, v14, v40

    .line 391
    move/from16 v0, v41

    move/from16 v1, v40

    if-ge v0, v1, :cond_7

    .line 392
    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v44, v0

    .line 394
    :cond_7
    aget v4, v14, v41

    add-int v4, v4, v44

    aput v4, v14, v41

    .line 381
    add-int/lit8 v34, v34, 0x1

    goto :goto_7

    .line 385
    .end local v40    # "pos1":I
    .end local v41    # "pos2":I
    .end local v44    # "sign":I
    :cond_8
    const/16 v44, -0x1000

    .restart local v44    # "sign":I
    goto :goto_8

    .line 397
    .end local v44    # "sign":I
    :cond_9
    aget v33, v6, v45

    .line 399
    .restart local v33    # "index":I
    if-eqz v45, :cond_a

    const/4 v4, 0x2

    move/from16 v0, v45

    if-ne v0, v4, :cond_c

    .line 400
    :cond_a
    const/16 v4, 0x1cf

    move/from16 v0, v33

    if-ge v0, v4, :cond_b

    .line 401
    add-int/lit8 v4, v33, 0x5

    div-int/lit8 v4, v4, 0x6

    add-int/lit8 v10, v4, 0x11

    .line 420
    :goto_9
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->QUA_GAIN_PITCH:[I

    aget v49, v7, v45

    aget v4, v4, v49

    shr-int/lit8 v4, v4, 0x2

    shl-int/lit8 v39, v4, 0x2

    .line 422
    .local v39, "pitSharp":I
    const/16 v4, 0x3fff

    move/from16 v0, v39

    if-le v0, v4, :cond_f

    .line 423
    const/16 v39, 0x7fff

    .line 428
    :goto_a
    move/from16 v34, v10

    :goto_b
    const/16 v4, 0x28

    move/from16 v0, v34

    if-ge v0, v4, :cond_10

    .line 429
    aget v4, v14, v34

    sub-int v49, v34, v10

    aget v49, v14, v49

    mul-int v49, v49, v39

    shr-int/lit8 v49, v49, 0xf

    add-int v4, v4, v49

    aput v4, v14, v34

    .line 428
    add-int/lit8 v34, v34, 0x1

    goto :goto_b

    .line 403
    .end local v39    # "pitSharp":I
    :cond_b
    move/from16 v0, v33

    add-int/lit16 v10, v0, -0x170

    goto :goto_9

    .line 406
    :cond_c
    const/16 v38, 0x12

    .line 407
    .local v38, "pitMin":I
    const/16 v35, 0x8f

    .line 408
    .local v35, "pitMax":I
    add-int/lit8 v12, v10, -0x5

    .line 409
    .local v12, "T0Min":I
    move/from16 v0, v38

    if-ge v12, v0, :cond_d

    .line 410
    move/from16 v12, v38

    .line 412
    :cond_d
    add-int/lit8 v11, v12, 0x9

    .line 413
    .local v11, "T0Max":I
    move/from16 v0, v35

    if-le v11, v0, :cond_e

    .line 414
    move/from16 v11, v35

    .line 415
    add-int/lit8 v12, v11, -0x9

    .line 417
    :cond_e
    add-int/lit8 v4, v33, 0x5

    div-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v12

    add-int/lit8 v10, v4, -0x1

    goto :goto_9

    .line 425
    .end local v11    # "T0Max":I
    .end local v12    # "T0Min":I
    .end local v35    # "pitMax":I
    .end local v38    # "pitMin":I
    .restart local v39    # "pitSharp":I
    :cond_f
    mul-int/lit8 v39, v39, 0x2

    goto :goto_a

    .line 432
    :cond_10
    const/16 v16, 0x0

    .line 433
    .local v16, "enerCode":I
    const/16 v34, 0x0

    :goto_c
    const/16 v4, 0x28

    move/from16 v0, v34

    if-ge v0, v4, :cond_11

    .line 434
    aget v4, v14, v34

    aget v49, v14, v34

    mul-int v4, v4, v49

    add-int v16, v16, v4

    .line 433
    add-int/lit8 v34, v34, 0x1

    goto :goto_c

    .line 437
    :cond_11
    const v4, 0x3fffffff    # 1.9999999f

    move/from16 v0, v16

    if-le v4, v0, :cond_12

    if-gez v16, :cond_14

    .line 438
    :cond_12
    const v16, 0x7fffffff

    .line 442
    :goto_d
    const v4, 0x8000

    add-int v4, v4, v16

    shr-int/lit8 v4, v4, 0x10

    const v49, 0xcccc

    mul-int v16, v4, v49

    .line 444
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->log(D)D

    move-result-wide v50

    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->log(D)D

    move-result-wide v52

    div-double v36, v50, v52

    .line 445
    .restart local v36    # "log2":D
    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v17, v0

    .line 446
    .restart local v17    # "exp":I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v50, v0

    sub-double v50, v36, v50

    const-wide/high16 v52, 0x40e0000000000000L    # 32768.0

    mul-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v19, v0

    .line 447
    .restart local v19    # "frac":I
    add-int/lit8 v4, v17, -0x1e

    shl-int/lit8 v4, v4, 0x10

    mul-int/lit8 v49, v19, 0x2

    add-int v16, v4, v49

    .line 449
    const/4 v4, 0x0

    aget v4, p3, v4

    mul-int/lit8 v4, v4, 0x2c

    const/16 v49, 0x1

    aget v49, p3, v49

    mul-int/lit8 v49, v49, 0x25

    add-int v4, v4, v49

    const/16 v49, 0x2

    aget v49, p3, v49

    mul-int/lit8 v49, v49, 0x16

    add-int v4, v4, v49

    const/16 v49, 0x3

    aget v49, p3, v49

    mul-int/lit8 v49, v49, 0xc

    add-int v15, v4, v49

    .line 455
    .local v15, "ener":I
    mul-int/lit8 v4, v15, 0x2

    const v49, 0xbf57d

    add-int v15, v4, v49

    .line 456
    sub-int v4, v15, v16

    div-int/lit8 v15, v4, 0x2

    .line 458
    shr-int/lit8 v18, v15, 0x10

    .line 459
    .local v18, "expGCode":I
    shr-int/lit8 v4, v15, 0x1

    shl-int/lit8 v49, v18, 0xf

    sub-int v20, v4, v49

    .line 461
    .local v20, "fracGCode":I
    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v52, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v54, v0

    const-wide/high16 v56, 0x40e0000000000000L    # 32768.0

    div-double v54, v54, v56

    add-double v52, v52, v54

    .line 462
    invoke-static/range {v50 .. v53}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v50

    const-wide/high16 v52, 0x3fe0000000000000L    # 0.5

    add-double v50, v50, v52

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v26, v0

    .line 464
    .local v26, "gCode0":I
    const/16 v4, 0x7ff

    move/from16 v0, v26

    if-gt v0, v4, :cond_15

    .line 465
    shl-int/lit8 v26, v26, 0x4

    .line 470
    :goto_e
    aget v33, v8, v45

    .line 472
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->QUA_GAIN_CODE:[I

    mul-int/lit8 v49, v33, 0x3

    aget v4, v4, v49

    mul-int v4, v4, v26

    shr-int/lit8 v4, v4, 0xf

    shl-int/lit8 v29, v4, 0x1

    .line 475
    .local v29, "gainCode":I
    move/from16 v0, v29

    and-int/lit16 v4, v0, -0x8000

    if-eqz v4, :cond_13

    .line 476
    const/16 v29, 0x7fff

    .line 479
    :cond_13
    move/from16 v21, v29

    .line 481
    .restart local v21    # "frameGainEstimate":I
    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->addFrame(III)V

    .line 483
    sget-object v4, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAMR;->QUA_GAIN_CODE:[I

    mul-int/lit8 v49, v33, 0x3

    add-int/lit8 v49, v49, 0x1

    aget v43, v4, v49

    .line 484
    .local v43, "quaEnerMR122":I
    const/4 v4, 0x3

    const/16 v49, 0x2

    aget v49, p3, v49

    aput v49, p3, v4

    .line 485
    const/4 v4, 0x2

    const/16 v49, 0x1

    aget v49, p3, v49

    aput v49, p3, v4

    .line 486
    const/4 v4, 0x1

    const/16 v49, 0x0

    aget v49, p3, v49

    aput v49, p3, v4

    .line 487
    const/4 v4, 0x0

    aput v43, p3, v4

    .line 374
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_5

    .line 440
    .end local v15    # "ener":I
    .end local v17    # "exp":I
    .end local v18    # "expGCode":I
    .end local v19    # "frac":I
    .end local v20    # "fracGCode":I
    .end local v21    # "frameGainEstimate":I
    .end local v26    # "gCode0":I
    .end local v29    # "gainCode":I
    .end local v36    # "log2":D
    .end local v43    # "quaEnerMR122":I
    :cond_14
    mul-int/lit8 v16, v16, 0x2

    goto/16 :goto_d

    .line 467
    .restart local v15    # "ener":I
    .restart local v17    # "exp":I
    .restart local v18    # "expGCode":I
    .restart local v19    # "frac":I
    .restart local v20    # "fracGCode":I
    .restart local v26    # "gCode0":I
    .restart local v36    # "log2":D
    :cond_15
    const/16 v26, 0x7fff

    goto :goto_e

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
