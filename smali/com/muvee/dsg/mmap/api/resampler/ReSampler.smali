.class public Lcom/muvee/dsg/mmap/api/resampler/ReSampler;
.super Ljava/lang/Object;
.source "ReSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAttachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)I
.end method

.method private native nativeClose()I
.end method

.method private native nativeGetFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)I
.end method

.method private native nativeInit(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)I
.end method


# virtual methods
.method public attachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->nativeAttachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)I

    .line 24
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->nativeClose()I

    .line 20
    return-void
.end method

.method public getFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->nativeGetFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)I

    .line 28
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->nativeInit(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)I

    .line 16
    return-void
.end method
