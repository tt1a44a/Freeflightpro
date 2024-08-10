.class public Lcom/muvee/dsg/mmap/api/gifencoder/GifEncoder;
.super Ljava/lang/Object;
.source "GifEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAddFrame(Lcom/muvee/dsg/mmap/api/gifencoder/Frame;)I
.end method

.method private native nativeGIFClose()I
.end method

.method private native nativeGIFInit(Lcom/muvee/dsg/mmap/api/gifencoder/GIFParameters;)I
.end method

.method private native nativeGetGif(Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;)Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;
.end method

.method private native nativeGetGifHeader(Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;)Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;
.end method


# virtual methods
.method public addFrame(Lcom/muvee/dsg/mmap/api/gifencoder/Frame;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/gifencoder/GifEncoder;->nativeAddFrame(Lcom/muvee/dsg/mmap/api/gifencoder/Frame;)I

    .line 42
    return-void
.end method

.method public gIFClose()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/gifencoder/GifEncoder;->nativeGIFClose()I

    .line 31
    return-void
.end method

.method public gIFInit(Lcom/muvee/dsg/mmap/api/gifencoder/GIFParameters;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/gifencoder/GifEncoder;->nativeGIFInit(Lcom/muvee/dsg/mmap/api/gifencoder/GIFParameters;)I

    .line 24
    return-void
.end method

.method public getGif()Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;-><init>()V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/gifencoder/GifEncoder;->nativeGetGif(Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;)Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;

    move-result-object v0

    return-object v0
.end method

.method public getGifHeader()Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;-><init>()V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/gifencoder/GifEncoder;->nativeGetGifHeader(Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;)Lcom/muvee/dsg/mmap/api/gifencoder/GIFFrame;

    move-result-object v0

    return-object v0
.end method
