.class public Lcom/parrot/mediacodecs/Yuv420Converter;
.super Ljava/lang/Object;
.source "Yuv420Converter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativePlanarToYuvBuffers(IIILjava/nio/ByteBuffer;III[BI[BI[BI)Z
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nativeSemiPlanarTileToYuvBuffers(IIIILjava/nio/ByteBuffer;I[BI[BI[BI)Z
    .param p4    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nativeSemiPlanarToYuvBuffers(IIILjava/nio/ByteBuffer;II[BI[BI[BI)Z
    .param p3    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static planarToYuvBuffers(IIILjava/nio/ByteBuffer;III[B[B[B)Z
    .locals 14
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "stride"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "yOffset"    # I
    .param p5, "uOffset"    # I
    .param p6, "vOffset"    # I
    .param p7, "dstYBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "dstUBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "dstVBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    move-object/from16 v0, p7

    array-length v9, v0

    move-object/from16 v0, p8

    array-length v11, v0

    move-object/from16 v0, p9

    array-length v13, v0

    move v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    invoke-static/range {v1 .. v13}, Lcom/parrot/mediacodecs/Yuv420Converter;->nativePlanarToYuvBuffers(IIILjava/nio/ByteBuffer;III[BI[BI[BI)Z

    move-result v1

    return v1
.end method

.method public static semiPlanarTileToYuvBuffers(IIIILjava/nio/ByteBuffer;I[B[B[B)Z
    .locals 13
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "tileWidth"    # I
    .param p3, "tileHeight"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "yOffset"    # I
    .param p6, "dstYBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "dstUBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "dstVBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    move-object/from16 v0, p6

    array-length v8, v0

    move-object/from16 v0, p7

    array-length v10, v0

    move-object/from16 v0, p8

    array-length v12, v0

    move v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v12}, Lcom/parrot/mediacodecs/Yuv420Converter;->nativeSemiPlanarTileToYuvBuffers(IIIILjava/nio/ByteBuffer;I[BI[BI[BI)Z

    move-result v1

    return v1
.end method

.method public static semiPlanarToYuvBuffers(IIILjava/nio/ByteBuffer;II[B[B[B)Z
    .locals 13
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "stride"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "yOffset"    # I
    .param p5, "crcbOffset"    # I
    .param p6, "dstYBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "dstUBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "dstVBuffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    move-object/from16 v0, p6

    array-length v8, v0

    move-object/from16 v0, p7

    array-length v10, v0

    move-object/from16 v0, p8

    array-length v12, v0

    move v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v12}, Lcom/parrot/mediacodecs/Yuv420Converter;->nativeSemiPlanarToYuvBuffers(IIILjava/nio/ByteBuffer;II[BI[BI[BI)Z

    move-result v1

    return v1
.end method
