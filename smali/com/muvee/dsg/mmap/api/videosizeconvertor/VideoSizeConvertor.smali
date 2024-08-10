.class public Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;
.super Ljava/lang/Object;
.source "VideoSizeConvertor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCancel()I
.end method

.method private native nativeConvert(Ljava/lang/String;)I
.end method

.method private native nativeGetMediaOutputSize(IIII)I
.end method

.method private native nativeGetParams()[I
.end method

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeSetProgUpdateFn(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)V
.end method

.method private native nativeSetQuality(I)V
.end method

.method private native nativeSetResolution(II)V
.end method

.method private native nativeSetSize(I)V
.end method

.method private native nativeUninit()I
.end method


# virtual methods
.method public cancel()I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeCancel()I

    move-result v0

    return v0
.end method

.method public convert(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeConvert(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMediaOutputSize(IIII)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeGetMediaOutputSize(IIII)I

    move-result v0

    return v0
.end method

.method public getParams()[I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeGetParams()[I

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeInit(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setProgUpdateFn(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeSetProgUpdateFn(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)V

    .line 46
    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeSetQuality(I)V

    .line 34
    return-void
.end method

.method public setResolution(II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeSetResolution(II)V

    .line 30
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeSetSize(I)V

    .line 38
    return-void
.end method

.method public uninit()I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videosizeconvertor/VideoSizeConvertor;->nativeUninit()I

    move-result v0

    return v0
.end method
