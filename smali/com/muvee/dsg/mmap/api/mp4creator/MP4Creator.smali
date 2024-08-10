.class public Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;
.super Ljava/lang/Object;
.source "MP4Creator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
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

.method private native nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mp4creator/AudioParams;Lcom/muvee/dsg/mmap/api/mp4creator/VideoParams;)I
.end method

.method private native nativeObtainState(Lcom/muvee/dsg/mmap/api/mp4creator/PauseState;)I
.end method

.method private native nativeSetFrameType(I)I
.end method


# virtual methods
.method public Close()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;->nativeClose()I

    .line 42
    return-void
.end method

.method public Init(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mp4creator/AudioParams;Lcom/muvee/dsg/mmap/api/mp4creator/VideoParams;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;->nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mp4creator/AudioParams;Lcom/muvee/dsg/mmap/api/mp4creator/VideoParams;)I

    .line 35
    return-void
.end method

.method public addAudioFrame(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;->nativeAddAudioFrame(Ljava/nio/ByteBuffer;II)I

    .line 54
    return-void
.end method

.method public addVideoFrame(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;->nativeAddVideoFrame(Ljava/nio/ByteBuffer;I)I

    .line 64
    return-void
.end method

.method public finishSaving(I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;->nativeFinishSaving(I)I

    .line 81
    return-void
.end method

.method public obtainState()Lcom/muvee/dsg/mmap/api/mp4creator/PauseState;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/muvee/dsg/mmap/api/mp4creator/PauseState;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/mp4creator/PauseState;-><init>()V

    .line 91
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;->nativeObtainState(Lcom/muvee/dsg/mmap/api/mp4creator/PauseState;)I

    .line 92
    return-object v0
.end method

.method public restoreState(Lcom/muvee/dsg/mmap/api/mp4creator/PauseState;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public setFrameType(I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/mp4creator/MP4Creator;->nativeSetFrameType(I)I

    .line 73
    return-void
.end method
