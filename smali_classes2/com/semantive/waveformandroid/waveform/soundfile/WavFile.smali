.class public Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
.super Ljava/lang/Object;
.source "WavFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DATA_CHUNK_ID:I = 0x61746164

.field private static final FMT_CHUNK_ID:I = 0x20746d66

.field private static final RIFF_CHUNK_ID:I = 0x46464952

.field private static final RIFF_TYPE_ID:I = 0x45564157


# instance fields
.field private blockAlign:I

.field private buffer:[B

.field private bufferPointer:I

.field private bytesPerSample:I

.field private bytesRead:I

.field private file:Ljava/io/File;

.field private fileSize:J

.field private floatOffset:F

.field private floatScale:F

.field private frameCounter:J

.field private iStream:Ljava/io/FileInputStream;

.field private ioState:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

.field private numChannels:I

.field private numFrames:J

.field private oStream:Ljava/io/FileOutputStream;

.field private sampleRate:J

.field private validBits:I

.field private wordAlignAdjust:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    .line 51
    return-void
.end method

.method private static getLE([BII)J
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "pos"    # I
    .param p2, "numBytes"    # I

    .prologue
    .line 214
    add-int/lit8 p2, p2, -0x1

    .line 215
    add-int/2addr p1, p2

    .line 217
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    .line 218
    .local v2, "val":J
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    if-ge v0, p2, :cond_0

    const/16 v1, 0x8

    shl-long v4, v2, v1

    add-int/lit8 p1, p1, -0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long v2, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-wide v2
.end method

.method public static openWavFile(Ljava/io/File;)Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
    .locals 24
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v18, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;

    invoke-direct/range {v18 .. v18}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;-><init>()V

    .line 84
    .local v18, "wavFile":Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->file:Ljava/io/File;

    .line 87
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    .line 90
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0xc

    invoke-virtual/range {v19 .. v22}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 91
    .local v4, "bytesRead":I
    const/16 v19, 0xc

    move/from16 v0, v19

    if-eq v4, v0, :cond_0

    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Not enough wav file bytes for header"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 94
    :cond_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v14

    .line 95
    .local v14, "riffChunkID":J
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v8

    .line 96
    .local v8, "chunkSize":J
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x8

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v16

    .line 99
    .local v16, "riffTypeID":J
    const-wide/32 v20, 0x46464952

    cmp-long v19, v14, v20

    if-eqz v19, :cond_1

    .line 100
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Invalid Wav Header data, incorrect riff chunk ID"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 101
    :cond_1
    const-wide/32 v20, 0x45564157

    cmp-long v19, v16, v20

    if-eqz v19, :cond_2

    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Invalid Wav Header data, incorrect riff type ID"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 104
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x8

    add-long v22, v22, v8

    cmp-long v19, v20, v22

    if-eqz v19, :cond_3

    .line 105
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Header chunk size ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") does not match file size ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 108
    :cond_3
    move-object/from16 v0, v18

    iput-wide v8, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->fileSize:J

    .line 110
    const/4 v11, 0x0

    .line 111
    .local v11, "foundFormat":Z
    const/4 v10, 0x0

    .line 116
    .local v10, "foundData":Z
    :cond_4
    :goto_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x8

    invoke-virtual/range {v19 .. v22}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 117
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_5

    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Reached end of file without finding format chunk"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 118
    :cond_5
    const/16 v19, 0x8

    move/from16 v0, v19

    if-eq v4, v0, :cond_6

    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Could not read chunk header"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 121
    :cond_6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v6

    .line 122
    .local v6, "chunkID":J
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v8

    .line 128
    const-wide/16 v20, 0x2

    rem-long v20, v8, v20

    const-wide/16 v22, 0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_7

    const-wide/16 v20, 0x1

    add-long v12, v8, v20

    .line 130
    .local v12, "numChunkBytes":J
    :goto_1
    const-wide/32 v20, 0x20746d66

    cmp-long v19, v6, v20

    if-nez v19, :cond_e

    .line 132
    const/4 v11, 0x1

    .line 135
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x10

    invoke-virtual/range {v19 .. v22}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 138
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v5, v0

    .line 139
    .local v5, "compressionCode":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_8

    .line 140
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Compression Code "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not supported"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v5    # "compressionCode":I
    .end local v12    # "numChunkBytes":J
    :cond_7
    move-wide v12, v8

    .line 128
    goto :goto_1

    .line 143
    .restart local v5    # "compressionCode":I
    .restart local v12    # "numChunkBytes":J
    :cond_8
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numChannels:I

    .line 144
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const/16 v21, 0x4

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->sampleRate:J

    .line 145
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0xc

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->blockAlign:I

    .line 146
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0xe

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getLE([BII)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    .line 148
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numChannels:I

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 149
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Number of channels specified in header is equal to zero"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 150
    :cond_9
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->blockAlign:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 151
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Block Align specified in header is equal to zero"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 152
    :cond_a
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Valid Bits specified in header is less than 2"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 153
    :cond_b
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    move/from16 v19, v0

    const/16 v20, 0x40

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 154
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Valid Bits specified in header is greater than 64, this is greater than a long can hold"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 157
    :cond_c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x7

    div-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesPerSample:I

    .line 158
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesPerSample:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numChannels:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->blockAlign:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 159
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Block Align does not agree with bytes required for validBits and number of channels"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 163
    :cond_d
    const-wide/16 v20, 0x10

    sub-long v12, v12, v20

    .line 164
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-lez v19, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    goto/16 :goto_0

    .line 165
    .end local v5    # "compressionCode":I
    :cond_e
    const-wide/32 v20, 0x61746164

    cmp-long v19, v6, v20

    if-nez v19, :cond_11

    .line 169
    if-nez v11, :cond_f

    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Data chunk found before Format chunk"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 173
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->blockAlign:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    rem-long v20, v8, v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_10

    .line 174
    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Data Chunk size is not multiple of Block Align"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 177
    :cond_10
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->blockAlign:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v20, v8, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numFrames:J

    .line 180
    const/4 v10, 0x1

    .line 190
    if-nez v10, :cond_12

    new-instance v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v20, "Did not find a data chunk"

    invoke-direct/range {v19 .. v20}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 185
    :cond_11
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    goto/16 :goto_0

    .line 193
    :cond_12
    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    .line 196
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->floatOffset:F

    .line 197
    const/16 v19, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    shl-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->floatScale:F

    .line 205
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    .line 206
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesRead:I

    .line 207
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    .line 208
    sget-object v19, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->READING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->ioState:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    .line 210
    return-object v18

    .line 201
    :cond_13
    const/high16 v19, -0x40800000    # -1.0f

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->floatOffset:F

    .line 202
    const/high16 v19, 0x3f000000    # 0.5f

    const/16 v20, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    move/from16 v21, v0

    shl-int v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->floatScale:F

    goto :goto_2
.end method

.method private readFramesInternal([FII)I
    .locals 6
    .param p1, "sampleBuffer"    # [F
    .param p2, "offset"    # I
    .param p3, "numFramesToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->ioState:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    sget-object v3, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->READING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot read from WavFile instance"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    if-ge v1, p3, :cond_3

    .line 252
    iget-wide v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    iget-wide v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numFrames:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 262
    .end local v1    # "f":I
    :goto_1
    return v1

    .line 254
    .restart local v1    # "f":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numChannels:I

    if-ge v0, v2, :cond_2

    .line 255
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->floatOffset:F

    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->readSample()J

    move-result-wide v4

    long-to-float v3, v4

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->floatScale:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, p2

    .line 256
    add-int/lit8 p2, p2, 0x1

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    :cond_2
    iget-wide v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":I
    :cond_3
    move v1, p3

    .line 262
    goto :goto_1
.end method

.method private readFramesInternal([III)I
    .locals 6
    .param p1, "sampleBuffer"    # [I
    .param p2, "offset"    # I
    .param p3, "numFramesToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->ioState:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    sget-object v3, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->READING:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot read from WavFile instance"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_0
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    if-ge v1, p3, :cond_3

    .line 273
    iget-wide v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    iget-wide v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numFrames:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 283
    .end local v1    # "f":I
    :goto_1
    return v1

    .line 275
    .restart local v1    # "f":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    iget v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numChannels:I

    if-ge v0, v2, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->readSample()J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, p1, p2

    .line 277
    add-int/lit8 p2, p2, 0x1

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 280
    :cond_2
    iget-wide v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":I
    :cond_3
    move v1, p3

    .line 283
    goto :goto_1
.end method

.method private readSample()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 224
    const-wide/16 v4, 0x0

    .line 226
    .local v4, "val":J
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesPerSample:I

    if-ge v0, v3, :cond_4

    .line 227
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesRead:I

    if-ne v3, v6, :cond_1

    .line 228
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    const/16 v7, 0x1000

    invoke-virtual {v3, v6, v8, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 229
    .local v1, "read":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    new-instance v3, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;

    const-string v6, "Not enough data available"

    invoke-direct {v3, v6}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_0
    iput v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesRead:I

    .line 231
    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    .line 234
    .end local v1    # "read":I
    :cond_1
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    aget-byte v2, v3, v6

    .line 235
    .local v2, "v":I
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesPerSample:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_2

    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bytesPerSample:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    :cond_2
    and-int/lit16 v2, v2, 0xff

    .line 236
    :cond_3
    mul-int/lit8 v3, v0, 0x8

    shl-int v3, v2, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 238
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "v":I
    :cond_4
    return-wide v4
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 290
    iput-object v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->iStream:Ljava/io/FileInputStream;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->oStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_3

    .line 295
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->oStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->buffer:[B

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->bufferPointer:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 298
    :cond_1
    iget-boolean v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->wordAlignAdjust:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->oStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->oStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 302
    iput-object v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->oStream:Ljava/io/FileOutputStream;

    .line 306
    :cond_3
    sget-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;->CLOSED:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    iput-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->ioState:Lcom/semantive/waveformandroid/waveform/soundfile/WavFile$IOState;

    .line 307
    return-void
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getNumFrames()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->getSampleRate()J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->fileSize:J

    return-wide v0
.end method

.method public getFramesRemaining()J
    .locals 4

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numFrames:J

    iget-wide v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->frameCounter:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numChannels:I

    return v0
.end method

.method public getNumFrames()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->numFrames:J

    return-wide v0
.end method

.method public getSampleRate()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->sampleRate:J

    return-wide v0
.end method

.method public getValidBits()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->validBits:I

    return v0
.end method

.method public readFrames([FI)I
    .locals 1
    .param p1, "sampleBuffer"    # [F
    .param p2, "numFramesToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->readFramesInternal([FII)I

    move-result v0

    return v0
.end method

.method public readFrames([II)I
    .locals 1
    .param p1, "sampleBuffer"    # [I
    .param p2, "numFramesToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/semantive/waveformandroid/waveform/soundfile/WavFileException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/semantive/waveformandroid/waveform/soundfile/WavFile;->readFramesInternal([III)I

    move-result v0

    return v0
.end method
