.class public Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;
.super Ljava/lang/Object;
.source "AudioEncoder.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->createDecoder()I

    .line 22
    return-void
.end method

.method private native createDecoder()I
.end method

.method private native nativeAddADTSFlag(JZ)I
.end method

.method private native nativeClose(J)I
.end method

.method private native nativeEncodeFrame(JLcom/muvee/dsg/mmap/api/audioencorder/AudioEncoderEncodeFrameParams;)I
.end method

.method private native nativeGetFrame(JLcom/muvee/dsg/mmap/api/audioencorder/AudioEncoderGetFrameParams;)I
.end method

.method private native nativeGetInputSamples(J)I
.end method

.method private native nativeGetMaxOutBufferSize(J)I
.end method

.method private native nativeInit(J)I
.end method

.method private native nativeSetBitRate(JI)I
.end method

.method private native nativeSetInputSamples(JI)I
.end method

.method private native nativeSetNoOfChannels(JI)I
.end method

.method private native nativeSetSampleRate(JI)I
.end method

.method private native nativeSetSampleSizeBytes(JI)I
.end method


# virtual methods
.method public addADTSHeader(Z)V
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeAddADTSFlag(JZ)I

    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeClose(J)I

    .line 36
    return-void
.end method

.method public encodeFrame(Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoderEncodeFrameParams;)V
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeEncodeFrame(JLcom/muvee/dsg/mmap/api/audioencorder/AudioEncoderEncodeFrameParams;)I

    .line 110
    return-void
.end method

.method public getFrame(Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoderGetFrameParams;)V
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeGetFrame(JLcom/muvee/dsg/mmap/api/audioencorder/AudioEncoderGetFrameParams;)I

    .line 121
    return-void
.end method

.method public getInputSamples()I
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeGetInputSamples(J)I

    move-result v0

    return v0
.end method

.method public getMaxOutBufferSize()I
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeGetMaxOutBufferSize(J)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeInit(J)I

    .line 29
    return-void
.end method

.method public setBitRate(I)V
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeSetBitRate(JI)I

    .line 72
    return-void
.end method

.method public setInputSamples(I)V
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeSetInputSamples(JI)I

    .line 90
    return-void
.end method

.method public setNoOfChannels(I)V
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeSetNoOfChannels(JI)I

    .line 45
    return-void
.end method

.method public setSampleRate(I)V
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeSetSampleRate(JI)I

    .line 54
    return-void
.end method

.method public setSampleSizeBytes(I)V
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/muvee/dsg/mmap/api/audioencorder/AudioEncoder;->nativeSetSampleSizeBytes(JI)I

    .line 63
    return-void
.end method
