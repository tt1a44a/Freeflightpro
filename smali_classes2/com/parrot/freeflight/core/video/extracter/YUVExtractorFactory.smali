.class public Lcom/parrot/freeflight/core/video/extracter/YUVExtractorFactory;
.super Ljava/lang/Object;
.source "YUVExtractorFactory.java"


# static fields
.field private static final COLOR_QCOM_FormatYUV420SemiPlanar32m:I = 0x7fa30c04

.field private static final OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar64x32Tile2m8ka:I = 0x7fa30c03


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;
    .locals 5
    .param p0, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v2, "color-format"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "colorFormat":I
    sparse-switch v0, :sswitch_data_0

    .line 55
    const-string v2, "YUVExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format not handled by processYUVFrame: dec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - hex: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-object v1

    .line 27
    :sswitch_0
    new-instance v1, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 30
    :sswitch_1
    new-instance v1, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;

    const/16 v2, 0x40

    const/16 v3, 0x20

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarTileExtractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;II)V

    goto :goto_0

    .line 34
    :sswitch_2
    new-instance v1, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 37
    :sswitch_3
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OMX.k3.video.decoder.avc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v1, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 42
    :cond_0
    const-string v2, "YUVExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format not handled by processYUVFrame: dec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - hex: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x19 -> :sswitch_3
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
        0x7fa30c00 -> :sswitch_0
        0x7fa30c03 -> :sswitch_1
        0x7fa30c04 -> :sswitch_0
    .end sparse-switch
.end method
