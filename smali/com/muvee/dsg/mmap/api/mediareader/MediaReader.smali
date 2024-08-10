.class public Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;
.super Ljava/lang/Object;
.source "MediaReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeClose()I
.end method

.method private native nativeGetAudioFrame(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderGetAudioFrameParams;)I
.end method

.method private native nativeGetStreamInfo(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;)I
.end method

.method private native nativeGetVideoFrame(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderGetVideoFrameParams;)I
.end method

.method private native nativeGetVideoSyncTable(Ljava/lang/String;)[J
.end method

.method private native nativeGoToNextSyncFrame()I
.end method

.method private native nativeGoToPrevSyncFrame()I
.end method

.method private native nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;)I
.end method

.method private native nativeInitO(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;II)I
.end method

.method private native nativeIs3DStream()I
.end method

.method private native nativeSeekToTime(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderSeekToParams;)I
.end method


# virtual methods
.method public Close()I
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeClose()I

    move-result v0

    return v0
.end method

.method public getAudioFrame(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderGetAudioFrameParams;)I
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeGetAudioFrame(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderGetAudioFrameParams;)I

    move-result v0

    return v0
.end method

.method public getStreamInfo(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;)I
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeGetStreamInfo(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;)I

    move-result v0

    return v0
.end method

.method public getVideoFrame(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderGetVideoFrameParams;)I
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeGetVideoFrame(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderGetVideoFrameParams;)I

    move-result v0

    return v0
.end method

.method public getVideoSyncTable(Ljava/lang/String;)[J
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeGetVideoSyncTable(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public goToNextSyncFrame()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeGoToNextSyncFrame()I

    .line 155
    return-void
.end method

.method public goToPrevSyncFrame()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeGoToPrevSyncFrame()I

    .line 165
    return-void
.end method

.method public init(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;)I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeInit(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;)I

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;I)I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p3}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->getCode()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeInitO(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;II)I

    move-result v0

    return v0
.end method

.method public is3DStream()Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeIs3DStream()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekToTime(I)I
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderSeekToParams;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderSeekToParams;-><init>()V

    .line 144
    iput p1, v0, Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderSeekToParams;->time:I

    .line 145
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->nativeSeekToTime(Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderSeekToParams;)I

    .line 146
    iget v0, v0, Lcom/muvee/dsg/mmap/api/mediareader/MediaReaderSeekToParams;->time:I

    return v0
.end method
