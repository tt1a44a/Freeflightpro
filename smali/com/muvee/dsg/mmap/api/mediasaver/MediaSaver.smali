.class public Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;
.super Ljava/lang/Object;
.source "MediaSaver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAddAudioFrame(Ljava/nio/ByteBuffer;II)I
.end method

.method private native nativeAddVideoFrame(Ljava/nio/ByteBuffer;I)I
.end method

.method private native nativeClose()I
.end method

.method private native nativeFinishSaving(I)I
.end method

.method private native nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediasaver/AudioParams;Lcom/muvee/dsg/mmap/api/mediasaver/VideoParams;)I
.end method

.method private native nativeInitO(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediasaver/AudioParams;Lcom/muvee/dsg/mmap/api/mediasaver/VideoParams;II)I
.end method

.method private native nativeObtainState(Lcom/muvee/dsg/mmap/api/mediasaver/PauseState;)I
.end method

.method private native nativeSetFrameType(I)I
.end method


# virtual methods
.method public Close()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeClose()I

    .line 60
    return-void
.end method

.method public Init(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediasaver/AudioParams;Lcom/muvee/dsg/mmap/api/mediasaver/VideoParams;Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;I)I
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->getCode()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeInitO(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediasaver/AudioParams;Lcom/muvee/dsg/mmap/api/mediasaver/VideoParams;II)I

    move-result v0

    return v0
.end method

.method public Init(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediasaver/AudioParams;Lcom/muvee/dsg/mmap/api/mediasaver/VideoParams;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediasaver/AudioParams;Lcom/muvee/dsg/mmap/api/mediasaver/VideoParams;)I

    .line 37
    return-void
.end method

.method public addAudioFrame(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeAddAudioFrame(Ljava/nio/ByteBuffer;II)I

    .line 72
    return-void
.end method

.method public addVideoFrame(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeAddVideoFrame(Ljava/nio/ByteBuffer;I)I

    .line 82
    return-void
.end method

.method public finishSaving(I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeFinishSaving(I)I

    .line 99
    return-void
.end method

.method public obtainState()Lcom/muvee/dsg/mmap/api/mediasaver/PauseState;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/muvee/dsg/mmap/api/mediasaver/PauseState;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/mediasaver/PauseState;-><init>()V

    .line 109
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeObtainState(Lcom/muvee/dsg/mmap/api/mediasaver/PauseState;)I

    .line 110
    return-object v0
.end method

.method public restoreState(Lcom/muvee/dsg/mmap/api/mediasaver/PauseState;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public setFrameType(I)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/mediasaver/MediaSaver;->nativeSetFrameType(I)I

    .line 91
    return-void
.end method
