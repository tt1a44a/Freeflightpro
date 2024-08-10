.class Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;
.super Ljava/lang/Object;
.source "VideoFrameGenerator.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoframegenerator/ExternalTextureRender$DrawFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;F)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSetVPMatrix([F[F)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 428
    invoke-static {p1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 429
    invoke-static {p2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 431
    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, p2, v3

    neg-float v3, v3

    aput v3, p2, v2

    .line 432
    const/16 v2, 0xd

    const/16 v3, 0xd

    aget v3, p2, v3

    sub-float v3, v1, v3

    aput v3, p2, v2

    .line 455
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "::onBeforeSetVPMatrix: 02 %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iget-object v5, v5, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v5}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->i(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    move v2, v1

    .line 482
    :goto_0
    invoke-static {p1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 483
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->j(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->k(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 484
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2;->b:Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;->h(Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 486
    cmpl-float v4, v3, v1

    if-ltz v4, :cond_0

    .line 487
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->a:F

    div-float/2addr v4, v3

    invoke-static {p2, v6, v4, v1, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 488
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->a:F

    div-float/2addr v3, v4

    sub-float/2addr v3, v1

    mul-float/2addr v3, v8

    invoke-static {p2, v6, v3, v7, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 489
    invoke-static {p1, v6, v2, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 499
    :goto_1
    return-void

    :sswitch_0
    move v2, v1

    .line 464
    goto :goto_0

    :sswitch_1
    move v2, v0

    move v0, v1

    .line 467
    goto :goto_0

    :sswitch_2
    move v2, v1

    .line 471
    goto :goto_0

    :sswitch_3
    move v2, v0

    move v0, v1

    .line 475
    goto :goto_0

    .line 491
    :cond_0
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->a:F

    div-float v4, v3, v4

    invoke-static {p2, v6, v1, v4, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 492
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->a:F

    div-float v3, v4, v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v8

    invoke-static {p2, v6, v7, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 493
    invoke-static {p1, v6, v2, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_1

    .line 497
    :cond_1
    mul-float/2addr v2, v3

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VideoFrameGenerator$2$1;->a:F

    div-float/2addr v2, v3

    mul-float/2addr v0, v1

    invoke-static {p1, v6, v2, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_1

    .line 461
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
