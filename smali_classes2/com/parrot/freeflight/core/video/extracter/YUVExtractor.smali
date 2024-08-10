.class public abstract Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;
.super Ljava/lang/Object;
.source "YUVExtractor.java"


# static fields
.field private static final CROP_BOTTOM_KEY:Ljava/lang/String; = "crop-bottom"

.field private static final CROP_LEFT_KEY:Ljava/lang/String; = "crop-left"

.field private static final CROP_RIGHT_KEY:Ljava/lang/String; = "crop-right"

.field private static final CROP_TOP_KEY:Ljava/lang/String; = "crop-top"

.field private static final MEMORY_ALIGNMENT_SIZE:I = 0x10

.field public static final TAG:Ljava/lang/String; = "YUVExtractor"


# instance fields
.field protected final mColorFormat:I

.field protected final mCropBottom:I

.field protected final mCropLeft:I

.field protected final mCropRight:I

.field protected final mCropTop:I

.field protected final mHeight:I

.field protected mSliceHeight:I

.field protected final mStartOffset:I

.field protected mStride:I

.field protected mUData:[B
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mVData:[B
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mWidth:I

.field protected mYData:[B
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "format"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "color-format"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mColorFormat:I

    .line 58
    const-string v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "crop-left"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mWidth:I

    .line 60
    const-string v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropLeft:I

    .line 61
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropRight:I

    .line 67
    :goto_0
    const-string v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mHeight:I

    .line 69
    const-string v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropTop:I

    .line 70
    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropBottom:I

    .line 77
    :goto_1
    const-string v0, "stride"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "stride"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStride:I

    .line 80
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStride:I

    if-nez v0, :cond_1

    .line 81
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mWidth:I

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStride:I

    .line 84
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStride:I

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStride:I

    rem-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStride:I

    .line 87
    const-string v0, "slice-height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "slice-height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mSliceHeight:I

    .line 90
    :cond_2
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mSliceHeight:I

    if-nez v0, :cond_3

    .line 91
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mHeight:I

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mSliceHeight:I

    .line 94
    :cond_3
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStride:I

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropTop:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mStartOffset:I

    .line 110
    return-void

    .line 63
    :cond_4
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mWidth:I

    .line 64
    iput v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropLeft:I

    .line 65
    iput v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropRight:I

    goto/16 :goto_0

    .line 72
    :cond_5
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mHeight:I

    .line 73
    iput v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropTop:I

    .line 74
    iput v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mCropBottom:I

    goto :goto_1
.end method


# virtual methods
.method public abstract extract(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getColorFormat()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mColorFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mHeight:I

    return v0
.end method

.method public getUData()[B
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mUData:[B

    return-object v0
.end method

.method public getVData()[B
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mVData:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mWidth:I

    return v0
.end method

.method public getYData()[B
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUVExtractor;->mYData:[B

    return-object v0
.end method
