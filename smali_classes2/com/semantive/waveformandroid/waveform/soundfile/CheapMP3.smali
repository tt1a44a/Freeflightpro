.class public Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;
.super Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
.source "CheapMP3.java"


# static fields
.field private static BITRATES_MPEG1_L3:[I

.field private static BITRATES_MPEG2_L3:[I

.field private static SAMPLERATES_MPEG1_L3:[I

.field private static SAMPLERATES_MPEG2_L3:[I


# instance fields
.field private mAvgBitRate:I

.field private mBitrateSum:I

.field private mFileSize:I

.field private mFrameGains:[I

.field private mGlobalChannels:I

.field private mGlobalSampleRate:I

.field private mMaxFrames:I

.field private mMaxGain:I

.field private mMinGain:I

.field private mNumFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x4

    .line 248
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->BITRATES_MPEG1_L3:[I

    .line 251
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->BITRATES_MPEG2_L3:[I

    .line 254
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->SAMPLERATES_MPEG1_L3:[I

    .line 256
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->SAMPLERATES_MPEG2_L3:[I

    return-void

    .line 248
    :array_0
    .array-data 4
        0x0
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x0
    .end array-data

    .line 251
    :array_1
    .array-data 4
        0x0
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0x0
    .end array-data

    .line 254
    :array_2
    .array-data 4
        0xac44
        0xbb80
        0x7d00
        0x0
    .end array-data

    .line 256
    :array_3
    .array-data 4
        0x5622
        0x5dc0
        0x3e80
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;-><init>()V

    .line 57
    return-void
.end method

.method public static getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3$1;

    invoke-direct {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .locals 28
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super/range {p0 .. p1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    .line 95
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    .line 96
    const/16 v22, 0x40

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxFrames:I

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFrameGains:[I

    .line 98
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mBitrateSum:I

    .line 99
    const/16 v22, 0xff

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMinGain:I

    .line 100
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxGain:I

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mInputFile:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFileSize:I

    .line 105
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mInputFile:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v20, "stream":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 108
    .local v18, "pos":I
    const/16 v16, 0x0

    .line 109
    .local v16, "offset":I
    const/16 v22, 0xc

    move/from16 v0, v22

    new-array v5, v0, [B

    .line 110
    .local v5, "buffer":[B
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFileSize:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0xc

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 112
    :goto_1
    const/16 v22, 0xc

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 113
    rsub-int/lit8 v22, v16, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v22

    add-int v16, v16, v22

    goto :goto_1

    .line 115
    :cond_0
    const/4 v6, 0x0

    .line 116
    .local v6, "bufferOffset":I
    :goto_2
    const/16 v22, 0xc

    move/from16 v0, v22

    if-ge v6, v0, :cond_1

    aget-byte v22, v5, v6

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    move-object/from16 v22, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFileSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;->reportProgress(D)Z

    move-result v10

    .line 123
    .local v10, "keepGoing":Z
    if-nez v10, :cond_3

    .line 242
    .end local v6    # "bufferOffset":I
    .end local v10    # "keepGoing":Z
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    if-lez v22, :cond_17

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mBitrateSum:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mAvgBitRate:I

    .line 246
    :goto_3
    return-void

    .line 128
    .restart local v6    # "bufferOffset":I
    :cond_3
    if-lez v6, :cond_5

    .line 131
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    rsub-int/lit8 v22, v6, 0xc

    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    .line 132
    add-int v22, v6, v9

    aget-byte v22, v5, v22

    aput-byte v22, v5, v9

    .line 131
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 133
    :cond_4
    add-int v18, v18, v6

    .line 134
    rsub-int/lit8 v16, v6, 0xc

    .line 135
    goto/16 :goto_0

    .line 139
    .end local v9    # "i":I
    :cond_5
    const/4 v11, 0x0

    .line 140
    .local v11, "mpgVersion":I
    const/16 v22, 0x1

    aget-byte v22, v5, v22

    const/16 v23, -0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    const/16 v22, 0x1

    aget-byte v22, v5, v22

    const/16 v23, -0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 141
    :cond_6
    const/4 v11, 0x1

    .line 156
    :goto_5
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_c

    .line 158
    sget-object v22, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->BITRATES_MPEG1_L3:[I

    const/16 v23, 0x2

    aget-byte v23, v5, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x4

    aget v4, v22, v23

    .line 159
    .local v4, "bitRate":I
    sget-object v22, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->SAMPLERATES_MPEG1_L3:[I

    const/16 v23, 0x2

    aget-byte v23, v5, v23

    and-int/lit8 v23, v23, 0xc

    shr-int/lit8 v23, v23, 0x2

    aget v19, v22, v23

    .line 166
    .local v19, "sampleRate":I
    :goto_6
    if-eqz v4, :cond_7

    if-nez v19, :cond_e

    .line 167
    :cond_7
    const/4 v6, 0x2

    .line 168
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v9, v0, :cond_d

    .line 169
    add-int v22, v6, v9

    aget-byte v22, v5, v22

    aput-byte v22, v5, v9

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 142
    .end local v4    # "bitRate":I
    .end local v9    # "i":I
    .end local v19    # "sampleRate":I
    :cond_8
    const/16 v22, 0x1

    aget-byte v22, v5, v22

    const/16 v23, -0xe

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    const/16 v22, 0x1

    aget-byte v22, v5, v22

    const/16 v23, -0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 143
    :cond_9
    const/4 v11, 0x2

    goto :goto_5

    .line 145
    :cond_a
    const/4 v6, 0x1

    .line 146
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    const/16 v22, 0xb

    move/from16 v0, v22

    if-ge v9, v0, :cond_b

    .line 147
    add-int v22, v6, v9

    aget-byte v22, v5, v22

    aput-byte v22, v5, v9

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 148
    :cond_b
    add-int v18, v18, v6

    .line 149
    rsub-int/lit8 v16, v6, 0xc

    .line 150
    goto/16 :goto_0

    .line 162
    .end local v9    # "i":I
    :cond_c
    sget-object v22, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->BITRATES_MPEG2_L3:[I

    const/16 v23, 0x2

    aget-byte v23, v5, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x4

    aget v4, v22, v23

    .line 163
    .restart local v4    # "bitRate":I
    sget-object v22, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->SAMPLERATES_MPEG2_L3:[I

    const/16 v23, 0x2

    aget-byte v23, v5, v23

    and-int/lit8 v23, v23, 0xc

    shr-int/lit8 v23, v23, 0x2

    aget v19, v22, v23

    .restart local v19    # "sampleRate":I
    goto :goto_6

    .line 170
    .restart local v9    # "i":I
    :cond_d
    add-int v18, v18, v6

    .line 171
    rsub-int/lit8 v16, v6, 0xc

    .line 172
    goto/16 :goto_0

    .line 176
    .end local v9    # "i":I
    :cond_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mGlobalSampleRate:I

    .line 177
    const/16 v22, 0x2

    aget-byte v22, v5, v22

    and-int/lit8 v22, v22, 0x2

    shr-int/lit8 v17, v22, 0x1

    .line 178
    .local v17, "padding":I
    mul-int/lit16 v0, v4, 0x90

    move/from16 v22, v0

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    div-int v22, v22, v19

    add-int v7, v22, v17

    .line 181
    .local v7, "frameLen":I
    const/16 v22, 0x3

    aget-byte v22, v5, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xc0

    move/from16 v22, v0

    const/16 v23, 0xc0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 183
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mGlobalChannels:I

    .line 184
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_12

    .line 185
    const/16 v22, 0xa

    aget-byte v22, v5, v22

    and-int/lit8 v22, v22, 0x1

    shl-int/lit8 v22, v22, 0x7

    const/16 v23, 0xb

    aget-byte v23, v5, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xfe

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x1

    add-int v8, v22, v23

    .line 202
    .local v8, "gain":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mBitrateSum:I

    move/from16 v22, v0

    add-int v22, v22, v4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mBitrateSum:I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFrameGains:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v23, v0

    aput v8, v22, v23

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMinGain:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_f

    .line 206
    move-object/from16 v0, p0

    iput v8, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMinGain:I

    .line 207
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxGain:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v8, v0, :cond_10

    .line 208
    move-object/from16 v0, p0

    iput v8, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxGain:I

    .line 210
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mBitrateSum:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v23, v0

    div-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mAvgBitRate:I

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFileSize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mAvgBitRate:I

    move/from16 v23, v0

    div-int v22, v22, v23

    mul-int v22, v22, v19

    const v23, 0x23280

    div-int v21, v22, v23

    .line 222
    .local v21, "totalFramesGuess":I
    mul-int/lit8 v22, v21, 0xb

    div-int/lit8 v14, v22, 0xa

    .line 223
    .local v14, "newMaxFrames":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    if-ge v14, v0, :cond_11

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v22, v0

    mul-int/lit8 v14, v22, 0x2

    .line 226
    :cond_11
    new-array v15, v14, [I

    .line 227
    .local v15, "newOffsets":[I
    new-array v13, v14, [I

    .line 228
    .local v13, "newLens":[I
    new-array v12, v14, [I

    .line 229
    .local v12, "newGains":[I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_15

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFrameGains:[I

    move-object/from16 v22, v0

    aget v22, v22, v9

    aput v22, v12, v9

    .line 229
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 188
    .end local v8    # "gain":I
    .end local v9    # "i":I
    .end local v12    # "newGains":[I
    .end local v13    # "newLens":[I
    .end local v14    # "newMaxFrames":I
    .end local v15    # "newOffsets":[I
    .end local v21    # "totalFramesGuess":I
    :cond_12
    const/16 v22, 0x9

    aget-byte v22, v5, v22

    and-int/lit8 v22, v22, 0x3

    shl-int/lit8 v22, v22, 0x6

    const/16 v23, 0xa

    aget-byte v23, v5, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xfc

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x2

    add-int v8, v22, v23

    .restart local v8    # "gain":I
    goto/16 :goto_9

    .line 193
    .end local v8    # "gain":I
    :cond_13
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mGlobalChannels:I

    .line 194
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_14

    .line 195
    const/16 v22, 0x9

    aget-byte v22, v5, v22

    and-int/lit8 v22, v22, 0x7f

    shl-int/lit8 v22, v22, 0x1

    const/16 v23, 0xa

    aget-byte v23, v5, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x7

    add-int v8, v22, v23

    .restart local v8    # "gain":I
    goto/16 :goto_9

    .line 198
    .end local v8    # "gain":I
    :cond_14
    const/4 v8, 0x0

    .restart local v8    # "gain":I
    goto/16 :goto_9

    .line 232
    .restart local v9    # "i":I
    .restart local v12    # "newGains":[I
    .restart local v13    # "newLens":[I
    .restart local v14    # "newMaxFrames":I
    .restart local v15    # "newOffsets":[I
    .restart local v21    # "totalFramesGuess":I
    :cond_15
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFrameGains:[I

    .line 233
    move-object/from16 v0, p0

    iput v14, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mMaxFrames:I

    .line 236
    .end local v9    # "i":I
    .end local v12    # "newGains":[I
    .end local v13    # "newLens":[I
    .end local v14    # "newMaxFrames":I
    .end local v15    # "newOffsets":[I
    .end local v21    # "totalFramesGuess":I
    :cond_16
    add-int/lit8 v22, v7, -0xc

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    .line 237
    add-int v18, v18, v7

    .line 238
    const/16 v16, 0x0

    .line 239
    goto/16 :goto_0

    .line 245
    .end local v4    # "bitRate":I
    .end local v6    # "bufferOffset":I
    .end local v7    # "frameLen":I
    .end local v8    # "gain":I
    .end local v11    # "mpgVersion":I
    .end local v17    # "padding":I
    .end local v19    # "sampleRate":I
    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mAvgBitRate:I

    goto/16 :goto_3
.end method

.method public getAvgBitrateKbps()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mAvgBitRate:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mGlobalChannels:I

    return v0
.end method

.method public getFileSizeBytes()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFileSize:I

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "MP3"

    return-object v0
.end method

.method public getFrameGains()[I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mFrameGains:[I

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mNumFrames:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapMP3;->mGlobalSampleRate:I

    return v0
.end method

.method public getSamplesPerFrame()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x480

    return v0
.end method
