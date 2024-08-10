.class public Lcom/muvee/dsg/mmap/api/thumbengine/ThumbEngine;
.super Ljava/lang/Object;
.source "ThumbEngine.java"


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
    .line 37
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/thumbengine/ThumbEngine;->nativeCloseCodec()I

    .line 38
    return-void
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/thumbengine/ThumbEngine;->nativeGetNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)I

    .line 52
    return-void
.end method

.method public initCodec(Lcom/muvee/dsg/mmapcodec/CodecInitParams;Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/thumbengine/ThumbEngine;->nativeInitCodec(Lcom/muvee/dsg/mmapcodec/CodecInitParams;Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)I

    .line 31
    return-void
.end method

.method public native nativeIsTPossible()I
.end method
