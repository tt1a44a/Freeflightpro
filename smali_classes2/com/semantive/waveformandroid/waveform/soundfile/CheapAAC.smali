.class public Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;
.super Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;
.source "CheapAAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;
    }
.end annotation


# static fields
.field public static final kDINF:I = 0x64696e66

.field public static final kFTYP:I = 0x66747970

.field public static final kHDLR:I = 0x68646c72

.field public static final kMDAT:I = 0x6d646174

.field public static final kMDHD:I = 0x6d646864

.field public static final kMDIA:I = 0x6d646961

.field public static final kMINF:I = 0x6d696e66

.field public static final kMOOV:I = 0x6d6f6f76

.field public static final kMP4A:I = 0x6d703461

.field public static final kMVHD:I = 0x6d766864

.field public static final kRequiredAtoms:[I

.field public static final kSMHD:I = 0x736d6864

.field public static final kSTBL:I = 0x7374626c

.field public static final kSTCO:I = 0x7374636f

.field public static final kSTSC:I = 0x73747363

.field public static final kSTSD:I = 0x73747364

.field public static final kSTSZ:I = 0x7374737a

.field public static final kSTTS:I = 0x73747473

.field public static final kSaveDataAtoms:[I

.field public static final kTKHD:I = 0x746b6864

.field public static final kTRAK:I = 0x7472616b


# instance fields
.field private mAtomMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrate:I

.field private mChannels:I

.field private mFileSize:I

.field private mFrameGains:[I

.field private mFrameLens:[I

.field private mMaxGain:I

.field private mMdatLength:I

.field private mMdatOffset:I

.field private mMinGain:I

.field private mNumFrames:I

.field private mOffset:I

.field private mSampleRate:I

.field private mSamplesPerFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->kRequiredAtoms:[I

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->kSaveDataAtoms:[I

    return-void

    .line 70
    :array_0
    .array-data 4
        0x64696e66
        0x68646c72    # 4.3148E24f
        0x6d646864
        0x6d646961
        0x6d696e66
        0x6d6f6f76
        0x6d766864
        0x736d6864
        0x7374626c
        0x73747364
        0x7374737a
        0x73747473
        0x746b6864
        0x7472616b
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x64696e66
        0x68646c72    # 4.3148E24f
        0x6d646864
        0x6d766864
        0x736d6864
        0x746b6864
        0x73747364
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;-><init>()V

    .line 118
    return-void
.end method

.method public static getFactory()Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$Factory;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$1;

    invoke-direct {v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$1;-><init>()V

    return-object v0
.end method

.method private parseMp4(Ljava/io/InputStream;I)V
    .locals 13
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    :goto_0
    const/16 v8, 0x8

    if-le p2, v8, :cond_a

    .line 228
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 230
    .local v5, "initialOffset":I
    const/16 v8, 0x8

    new-array v1, v8, [B

    .line 231
    .local v1, "atomHeader":[B
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {p1, v1, v8, v9}, Ljava/io/InputStream;->read([BII)I

    .line 232
    const/4 v8, 0x0

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x3

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v2, v8, v9

    .line 237
    .local v2, "atomLen":I
    if-le v2, p2, :cond_0

    .line 238
    move v2, p2

    .line 239
    :cond_0
    const/4 v8, 0x4

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x5

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x6

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x7

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v3, v8, v9

    .line 245
    .local v3, "atomType":I
    new-instance v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;

    invoke-direct {v0, p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;-><init>(Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;)V

    .line 246
    .local v0, "atom":Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    iput v8, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;->start:I

    .line 247
    iput v2, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;->len:I

    .line 248
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 252
    const v8, 0x6d6f6f76

    if-eq v3, v8, :cond_1

    const v8, 0x7472616b

    if-eq v3, v8, :cond_1

    const v8, 0x6d646961

    if-eq v3, v8, :cond_1

    const v8, 0x6d696e66

    if-eq v3, v8, :cond_1

    const v8, 0x7374626c

    if-ne v3, v8, :cond_4

    .line 257
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->parseMp4(Ljava/io/InputStream;I)V

    .line 276
    :cond_2
    :goto_1
    const v8, 0x73747364

    if-ne v3, v8, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->parseMp4aFromStsd()V

    .line 280
    :cond_3
    sub-int/2addr p2, v2

    .line 281
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    sub-int/2addr v8, v5

    sub-int v7, v2, v8

    .line 282
    .local v7, "skipLen":I
    if-gez v7, :cond_9

    .line 283
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Went over by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    neg-int v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 258
    .end local v7    # "skipLen":I
    :cond_4
    const v8, 0x7374737a

    if-ne v3, v8, :cond_5

    .line 259
    add-int/lit8 v8, v2, -0x8

    invoke-virtual {p0, p1, v8}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->parseStsz(Ljava/io/InputStream;I)V

    goto :goto_1

    .line 260
    :cond_5
    const v8, 0x73747473

    if-ne v3, v8, :cond_6

    .line 261
    add-int/lit8 v8, v2, -0x8

    invoke-virtual {p0, p1, v8}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->parseStts(Ljava/io/InputStream;I)V

    goto :goto_1

    .line 262
    :cond_6
    const v8, 0x6d646174

    if-ne v3, v8, :cond_7

    .line 263
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatOffset:I

    .line 264
    add-int/lit8 v8, v2, -0x8

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatLength:I

    goto :goto_1

    .line 266
    :cond_7
    sget-object v10, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->kSaveDataAtoms:[I

    array-length v11, v10

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v9, v11, :cond_2

    aget v6, v10, v9

    .line 267
    .local v6, "savedAtomType":I
    if-ne v6, v3, :cond_8

    .line 268
    add-int/lit8 v8, v2, -0x8

    new-array v4, v8, [B

    .line 269
    .local v4, "data":[B
    const/4 v8, 0x0

    add-int/lit8 v12, v2, -0x8

    invoke-virtual {p1, v4, v8, v12}, Ljava/io/InputStream;->read([BII)I

    .line 270
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v12, v2, -0x8

    add-int/2addr v8, v12

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 271
    iget-object v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;

    iput-object v4, v8, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;->data:[B

    .line 266
    .end local v4    # "data":[B
    :cond_8
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_2

    .line 287
    .end local v6    # "savedAtomType":I
    .restart local v7    # "skipLen":I
    :cond_9
    int-to-long v8, v7

    invoke-virtual {p1, v8, v9}, Ljava/io/InputStream;->skip(J)J

    .line 288
    iget v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    goto/16 :goto_0

    .line 290
    .end local v0    # "atom":Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;
    .end local v1    # "atomHeader":[B
    .end local v2    # "atomLen":I
    .end local v3    # "atomType":I
    .end local v5    # "initialOffset":I
    .end local v7    # "skipLen":I
    :cond_a
    return-void
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .locals 10
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    .line 165
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mChannels:I

    .line 166
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mSampleRate:I

    .line 167
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mBitrate:I

    .line 168
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mSamplesPerFrame:I

    .line 169
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    .line 170
    const/16 v5, 0xff

    iput v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMinGain:I

    .line 171
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMaxGain:I

    .line 172
    iput v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 173
    iput v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatOffset:I

    .line 174
    iput v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatLength:I

    .line 176
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    .line 179
    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFileSize:I

    .line 181
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFileSize:I

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 182
    new-instance v4, Ljava/io/IOException;

    const-string v5, "File too small to parse"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v3, "stream":Ljava/io/FileInputStream;
    new-array v1, v8, [B

    .line 188
    .local v1, "header":[B
    invoke-virtual {v3, v1, v4, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 190
    aget-byte v5, v1, v4

    if-nez v5, :cond_2

    const/4 v5, 0x4

    aget-byte v5, v1, v5

    const/16 v6, 0x66

    if-ne v5, v6, :cond_2

    const/4 v5, 0x5

    aget-byte v5, v1, v5

    const/16 v6, 0x74

    if-ne v5, v6, :cond_2

    const/4 v5, 0x6

    aget-byte v5, v1, v5

    const/16 v6, 0x79

    if-ne v5, v6, :cond_2

    const/4 v5, 0x7

    aget-byte v5, v1, v5

    const/16 v6, 0x70

    if-ne v5, v6, :cond_2

    .line 196
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "stream":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 197
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFileSize:I

    invoke-direct {p0, v3, v5}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->parseMp4(Ljava/io/InputStream;I)V

    .line 202
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatOffset:I

    if-lez v5, :cond_3

    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatLength:I

    if-lez v5, :cond_3

    .line 203
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "stream":Ljava/io/FileInputStream;
    iget-object v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatOffset:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    .line 205
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatOffset:I

    iput v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 206
    iget v5, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMdatLength:I

    invoke-virtual {p0, v3, v5}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->parseMdat(Ljava/io/InputStream;I)V

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "bad":Z
    sget-object v5, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->kRequiredAtoms:[I

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_4

    aget v2, v5, v4

    .line 213
    .local v2, "requiredAtomType":I
    iget-object v7, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 214
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing atom: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 215
    invoke-virtual {p0, v2}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->atomToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    .line 212
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "bad":Z
    .end local v2    # "requiredAtomType":I
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unknown file format"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Didn\'t find mdat"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    .restart local v0    # "bad":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 221
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not parse MP4 file"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_5
    return-void
.end method

.method public atomToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "atomType"    # I

    .prologue
    .line 153
    const-string v0, ""

    .line 154
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public getAvgBitrateKbps()I
    .locals 3

    .prologue
    .line 137
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFileSize:I

    iget v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    iget v2, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mSamplesPerFrame:I

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mChannels:I

    return v0
.end method

.method public getFileSizeBytes()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFileSize:I

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "AAC"

    return-object v0
.end method

.method public getFrameGains()[I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mSampleRate:I

    return v0
.end method

.method public getSamplesPerFrame()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mSamplesPerFrame:I

    return v0
.end method

.method parseMdat(Ljava/io/InputStream;I)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 342
    .local v1, "initialOffset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    if-ge v0, v3, :cond_2

    .line 344
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameLens:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, -0x8

    if-le v3, v4, :cond_3

    .line 345
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 349
    :goto_1
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMinGain:I

    if-ge v3, v4, :cond_0

    .line 350
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMinGain:I

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMaxGain:I

    if-le v3, v4, :cond_1

    .line 352
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mMaxGain:I

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    if-eqz v3, :cond_4

    .line 355
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mProgressListener:Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFileSize:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapSoundFile$ProgressListener;->reportProgress(D)Z

    move-result v2

    .line 357
    .local v2, "keepGoing":Z
    if-nez v2, :cond_4

    .line 362
    .end local v2    # "keepGoing":Z
    :cond_2
    return-void

    .line 347
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->readFrameAndComputeGain(Ljava/io/InputStream;I)V

    goto :goto_1

    .line 342
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method parseMp4aFromStsd()V
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v2, 0x73747364

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;

    iget-object v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC$Atom;->data:[B

    .line 331
    .local v0, "stsdData":[B
    const/16 v1, 0x20

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x21

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mChannels:I

    .line 334
    const/16 v1, 0x28

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x29

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mSampleRate:I

    .line 337
    return-void
.end method

.method parseStsz(Ljava/io/InputStream;I)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    const/4 v5, 0x0

    .line 306
    new-array v2, v3, [B

    .line 307
    .local v2, "stszHeader":[B
    invoke-virtual {p1, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 308
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v3, v3, 0xc

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 309
    const/16 v3, 0x8

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/16 v4, 0xa

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0xb

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    .line 315
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameLens:[I

    .line 316
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    .line 317
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    mul-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .line 318
    .local v0, "frameLenBytes":[B
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 319
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    iget v4, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mNumFrames:I

    if-ge v1, v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameLens:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method parseStts(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 294
    new-array v0, v2, [B

    .line 295
    .local v0, "sttsData":[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 296
    iget v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 297
    const/16 v1, 0xc

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/16 v2, 0xf

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mSamplesPerFrame:I

    .line 302
    return-void
.end method

.method readFrameAndComputeGain(Ljava/io/InputStream;I)V
    .locals 27
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "frameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameLens:[I

    move-object/from16 v24, v0

    aget v24, v24, p2

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v25, v24, p2

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameLens:[I

    move-object/from16 v24, v0

    aget v24, v24, p2

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 468
    :goto_0
    return-void

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 375
    .local v12, "initialOffset":I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v9, v0, [B

    .line 376
    .local v9, "data":[B
    const/16 v24, 0x0

    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 379
    const/16 v24, 0x0

    aget-byte v24, v9, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xe0

    move/from16 v24, v0

    shr-int/lit8 v11, v24, 0x5

    .line 381
    .local v11, "idSynEle":I
    packed-switch v11, :pswitch_data_0

    .line 456
    if-lez p2, :cond_6

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v25, v0

    add-int/lit8 v26, p2, -0x1

    aget v25, v25, v26

    aput v25, v24, p2

    .line 464
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameLens:[I

    move-object/from16 v24, v0

    aget v24, v24, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    move/from16 v25, v0

    sub-int v25, v25, v12

    sub-int v20, v24, v25

    .line 466
    .local v20, "skip":I
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    move/from16 v24, v0

    add-int v24, v24, v20

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    goto :goto_0

    .line 383
    .end local v20    # "skip":I
    :pswitch_0
    const/16 v24, 0x0

    aget-byte v24, v9, v24

    and-int/lit8 v24, v24, 0x1

    shl-int/lit8 v24, v24, 0x7

    const/16 v25, 0x1

    aget-byte v25, v9, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xfe

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x1

    or-int v15, v24, v25

    .line 384
    .local v15, "monoGain":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v24, v0

    aput v15, v24, p2

    goto :goto_1

    .line 387
    .end local v15    # "monoGain":I
    :pswitch_1
    const/16 v24, 0x1

    aget-byte v24, v9, v24

    and-int/lit8 v24, v24, 0x60

    shr-int/lit8 v22, v24, 0x5

    .line 388
    .local v22, "windowSequence":I
    const/16 v24, 0x1

    aget-byte v24, v9, v24

    and-int/lit8 v24, v24, 0x10

    shr-int/lit8 v23, v24, 0x4

    .line 395
    .local v23, "windowShape":I
    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 396
    const/16 v24, 0x1

    aget-byte v24, v9, v24

    and-int/lit8 v14, v24, 0xf

    .line 398
    .local v14, "maxSfb":I
    const/16 v24, 0x2

    aget-byte v24, v9, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfe

    move/from16 v24, v0

    shr-int/lit8 v18, v24, 0x1

    .line 400
    .local v18, "scaleFactorGrouping":I
    const/16 v24, 0x2

    aget-byte v24, v9, v24

    and-int/lit8 v24, v24, 0x1

    shl-int/lit8 v24, v24, 0x1

    const/16 v25, 0x3

    aget-byte v25, v9, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x80

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x7

    or-int v13, v24, v25

    .line 404
    .local v13, "maskPresent":I
    const/16 v21, 0x19

    .line 417
    .local v21, "startBit":I
    :goto_2
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_4

    .line 418
    const/16 v19, 0x0

    .line 419
    .local v19, "sfgZeroBitCount":I
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_3
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ge v5, v0, :cond_3

    .line 420
    const/16 v24, 0x1

    shl-int v24, v24, v5

    and-int v24, v24, v18

    if-nez v24, :cond_1

    .line 421
    add-int/lit8 v19, v19, 0x1

    .line 419
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 406
    .end local v5    # "b":I
    .end local v13    # "maskPresent":I
    .end local v14    # "maxSfb":I
    .end local v18    # "scaleFactorGrouping":I
    .end local v19    # "sfgZeroBitCount":I
    .end local v21    # "startBit":I
    :cond_2
    const/16 v24, 0x1

    aget-byte v24, v9, v24

    and-int/lit8 v24, v24, 0xf

    shl-int/lit8 v24, v24, 0x2

    const/16 v25, 0x2

    aget-byte v25, v9, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xc0

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x6

    or-int v14, v24, v25

    .line 410
    .restart local v14    # "maxSfb":I
    const/16 v18, -0x1

    .line 412
    .restart local v18    # "scaleFactorGrouping":I
    const/16 v24, 0x2

    aget-byte v24, v9, v24

    and-int/lit8 v24, v24, 0x18

    shr-int/lit8 v13, v24, 0x3

    .line 414
    .restart local v13    # "maskPresent":I
    const/16 v21, 0x15

    .restart local v21    # "startBit":I
    goto :goto_2

    .line 425
    .restart local v5    # "b":I
    .restart local v19    # "sfgZeroBitCount":I
    :cond_3
    add-int/lit8 v16, v19, 0x1

    .line 427
    .local v16, "numWindowGroups":I
    mul-int v20, v14, v16

    .line 429
    .restart local v20    # "skip":I
    add-int v21, v21, v20

    .line 434
    .end local v5    # "b":I
    .end local v16    # "numWindowGroups":I
    .end local v19    # "sfgZeroBitCount":I
    .end local v20    # "skip":I
    :cond_4
    add-int/lit8 v24, v21, 0x7

    div-int/lit8 v24, v24, 0x8

    add-int/lit8 v8, v24, 0x1

    .line 435
    .local v8, "bytesNeeded":I
    move-object/from16 v17, v9

    .line 436
    .local v17, "oldData":[B
    new-array v9, v8, [B

    .line 437
    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-byte v25, v17, v25

    aput-byte v25, v9, v24

    .line 438
    const/16 v24, 0x1

    const/16 v25, 0x1

    aget-byte v25, v17, v25

    aput-byte v25, v9, v24

    .line 439
    const/16 v24, 0x2

    const/16 v25, 0x2

    aget-byte v25, v17, v25

    aput-byte v25, v9, v24

    .line 440
    const/16 v24, 0x3

    const/16 v25, 0x3

    aget-byte v25, v17, v25

    aput-byte v25, v9, v24

    .line 441
    const/16 v24, 0x4

    add-int/lit8 v25, v8, -0x4

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    move/from16 v24, v0

    add-int/lit8 v25, v8, -0x4

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mOffset:I

    .line 444
    const/4 v10, 0x0

    .line 445
    .local v10, "firstChannelGain":I
    const/4 v5, 0x0

    .restart local v5    # "b":I
    :goto_4
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ge v5, v0, :cond_5

    .line 446
    add-int v24, v5, v21

    div-int/lit8 v6, v24, 0x8

    .line 447
    .local v6, "b0":I
    add-int v24, v5, v21

    rem-int/lit8 v24, v24, 0x8

    rsub-int/lit8 v7, v24, 0x7

    .line 448
    .local v7, "b1":I
    const/16 v24, 0x1

    shl-int v24, v24, v7

    aget-byte v25, v9, v6

    and-int v24, v24, v25

    shr-int v24, v24, v7

    rsub-int/lit8 v25, v5, 0x7

    shl-int v4, v24, v25

    .line 449
    .local v4, "add":I
    add-int/2addr v10, v4

    .line 445
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 452
    .end local v4    # "add":I
    .end local v6    # "b0":I
    .end local v7    # "b1":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v24, v0

    aput v10, v24, p2

    goto/16 :goto_1

    .line 459
    .end local v5    # "b":I
    .end local v8    # "bytesNeeded":I
    .end local v10    # "firstChannelGain":I
    .end local v13    # "maskPresent":I
    .end local v14    # "maxSfb":I
    .end local v17    # "oldData":[B
    .end local v18    # "scaleFactorGrouping":I
    .end local v21    # "startBit":I
    .end local v22    # "windowSequence":I
    .end local v23    # "windowShape":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/semantive/waveformandroid/waveform/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v25, v24, p2

    goto/16 :goto_1

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
