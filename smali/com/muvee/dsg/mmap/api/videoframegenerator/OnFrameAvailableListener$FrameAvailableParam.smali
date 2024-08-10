.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;
.super Ljava/lang/Object;
.source "OnFrameAvailableListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameAvailableParam"
.end annotation


# instance fields
.field public inTimeStampMs:J

.field public outBuffer:Ljava/nio/ByteBuffer;

.field public outHeight:I

.field public outTimeStampUs:J

.field public outWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 69
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outWidth:I

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 71
    return-object v0
.end method

.method public getOutputBufferSize()I
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outWidth:I

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/OnFrameAvailableListener$FrameAvailableParam;->outHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
