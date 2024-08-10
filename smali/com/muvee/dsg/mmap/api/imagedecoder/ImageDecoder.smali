.class public Lcom/muvee/dsg/mmap/api/imagedecoder/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCloseCodec()I
.end method

.method private native nativeGetNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)I
.end method

.method private native nativeInitCodec(Lcom/muvee/dsg/mmapcodec/CodecInitParams;Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)I
.end method


# virtual methods
.method public closeCodec()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/imagedecoder/ImageDecoder;->nativeCloseCodec()I

    .line 37
    return-void
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/imagedecoder/ImageDecoder;->nativeGetNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)I

    .line 50
    return-void
.end method

.method public initCodec(Lcom/muvee/dsg/mmapcodec/CodecInitParams;Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/imagedecoder/ImageDecoder;->nativeInitCodec(Lcom/muvee/dsg/mmapcodec/CodecInitParams;Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)I

    .line 31
    return-void
.end method
