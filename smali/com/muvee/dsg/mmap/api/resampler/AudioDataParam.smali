.class public Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;
.super Ljava/lang/Object;
.source "AudioDataParam.java"


# instance fields
.field public bitsPerSample:I

.field public channels:I

.field public endianMode:I

.field public frameSize:I

.field public sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    iput v0, p0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->channels:I

    .line 5
    const v0, 0xac44

    iput v0, p0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 6
    const/16 v0, 0x10

    iput v0, p0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->bitsPerSample:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->endianMode:I

    .line 8
    const/16 v0, 0x1000

    iput v0, p0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->frameSize:I

    return-void
.end method
