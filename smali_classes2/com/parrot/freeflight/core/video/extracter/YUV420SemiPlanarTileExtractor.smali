.class public Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;
.super Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;
.source "YUV420SemiPlanarTileExtractor.java"


# static fields
.field public static final TILE_32_HEIGHT:I = 0x20

.field public static final TILE_64_WIDTH:I = 0x40


# instance fields
.field private final mTileHeight:I

.field private final mTileWidth:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;II)V
    .locals 0
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "format"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "tileWidth"    # I
    .param p4, "tileHeight"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    .line 37
    iput p3, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mTileWidth:I

    .line 38
    iput p4, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mTileHeight:I

    .line 39
    return-void
.end method


# virtual methods
.method public extract(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mStartOffset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 43
    .local v5, "startOffset":I
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mWidth:I

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mHeight:I

    iget v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mTileWidth:I

    iget v3, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mTileHeight:I

    iget-object v6, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mYData:[B

    iget-object v7, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mUData:[B

    iget-object v8, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;->mVData:[B

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/parrot/mediacodecs/Yuv420Converter;->semiPlanarTileToYuvBuffers(IIIILjava/nio/ByteBuffer;I[B[B[B)Z

    .line 44
    return-void
.end method
