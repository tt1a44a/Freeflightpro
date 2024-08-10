.class public Lcom/muvee/dsg/videothumb/MpegFrameGeneretor;
.super Lcom/muvee/dsg/videothumb/ThumbGeneretor;
.source "MpegFrameGeneretor.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/muvee/dsg/videothumb/ThumbGeneretor;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getThumb(JLjava/nio/ByteBuffer;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 22
    new-instance v1, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;

    invoke-direct {v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;-><init>()V

    .line 25
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    iget-object v3, p0, Lcom/muvee/dsg/videothumb/MpegFrameGeneretor;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor;->extractMpegFrames([JLjava/lang/String;Z)[Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 26
    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 32
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initGeneretor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/muvee/dsg/videothumb/MpegFrameGeneretor;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public unInit()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
