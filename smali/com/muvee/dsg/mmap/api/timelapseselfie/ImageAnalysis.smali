.class public Lcom/muvee/dsg/mmap/api/timelapseselfie/ImageAnalysis;
.super Ljava/lang/Object;
.source "ImageAnalysis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public checkBrightness(IILjava/nio/ByteBuffer;)D
    .locals 5

    .prologue
    .line 27
    const-string v0, "com.muvee.dsg.mmap.api.timelapseselfie.ImageAnalysis"

    const-string v1, "::checkBrightness"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/timelapseselfie/ImageAnalysis;->nativeCheckBrightness(IILjava/nio/ByteBuffer;)D

    move-result-wide v0

    .line 30
    const-string v2, "com.muvee.dsg.mmap.api.timelapseselfie.ImageAnalysis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-wide v0
.end method

.method public checkBrightnessAndSharpness(IILjava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 45
    const-string v0, "com.muvee.dsg.mmap.api.timelapseselfie.ImageAnalysis"

    const-string v1, "::checkBrightnessAndSharpness"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/timelapseselfie/ImageAnalysis;->nativeCheckBrightnessAndSharpness(IILjava/nio/ByteBuffer;)I

    move-result v0

    .line 49
    return v0
.end method

.method public checkSharpness(IILjava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 36
    const-string v0, "com.muvee.dsg.mmap.api.timelapseselfie.ImageAnalysis"

    const-string v1, "::checkSharpness"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/timelapseselfie/ImageAnalysis;->nativeCheckSharpness(IILjava/nio/ByteBuffer;)I

    move-result v0

    .line 39
    const-string v1, "com.muvee.dsg.mmap.api.timelapseselfie.ImageAnalysis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSharpness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v0
.end method

.method native nativeCheckBrightness(IILjava/nio/ByteBuffer;)D
.end method

.method native nativeCheckBrightnessAndSharpness(IILjava/nio/ByteBuffer;)I
.end method

.method native nativeCheckSharpness(IILjava/nio/ByteBuffer;)I
.end method
