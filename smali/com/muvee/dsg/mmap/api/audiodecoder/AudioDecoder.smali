.class public Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;
.super Ljava/lang/Object;
.source "AudioDecoder.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeClose(J)I
.end method

.method private native nativeDecodeFrame(Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderDecodeFrameParams;)I
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeGetFrame(JLcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderDecodeFrameParams;)I
.end method

.method private native nativeGetNumChannels()I
.end method

.method private native nativeGetNumSamples()I
.end method

.method private native nativeGetSampleRate()I
.end method

.method private native nativeGetSampleSize()I
.end method

.method private native nativeInit(Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderInitParams;)I
.end method

.method private native nativeInitFile(Ljava/lang/String;II)I
.end method

.method private native nativeSeek(JI)I
.end method

.method private native nativeSetMp4Stream(I)I
.end method

.method private native nativeSetSampleRate(I)I
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeClose(J)I

    .line 38
    return-void
.end method

.method public decodeFrame(Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderDecodeFrameParams;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeDecodeFrame(Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderDecodeFrameParams;)I

    .line 48
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeGetDuration()I

    move-result v0

    return v0
.end method

.method public getFrame(Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderDecodeFrameParams;)I
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeGetFrame(JLcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderDecodeFrameParams;)I

    move-result v0

    return v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeGetNumChannels()I

    move-result v0

    return v0
.end method

.method public getNumSamples()I
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeGetNumSamples()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeGetSampleRate()I

    move-result v0

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeGetSampleSize()I

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeInitFile(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public init(Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderInitParams;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeInit(Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoderInitParams;)I

    .line 31
    return-void
.end method

.method public seek(I)I
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeSeek(JI)I

    move-result v0

    return v0
.end method

.method public setMp4Stream(I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeSetMp4Stream(I)I

    .line 65
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/audiodecoder/AudioDecoder;->nativeSetSampleRate(I)I

    .line 75
    return-void
.end method
