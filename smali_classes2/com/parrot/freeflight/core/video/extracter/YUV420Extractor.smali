.class public abstract Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;
.super Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;
.source "YUV420Extractor.java"


# direct methods
.method public constructor <init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "format"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    .line 12
    iget v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;->mWidth:I

    iget v3, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;->mHeight:I

    mul-int v1, v2, v3

    .line 13
    .local v1, "ySize":I
    div-int/lit8 v0, v1, 0x4

    .line 14
    .local v0, "uOrVSize":I
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;->mYData:[B

    .line 15
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;->mUData:[B

    .line 16
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;->mVData:[B

    .line 17
    return-void
.end method
