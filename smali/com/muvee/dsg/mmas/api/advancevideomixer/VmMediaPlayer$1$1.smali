.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;
.super Ljava/lang/Object;
.source "VmMediaPlayer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;F)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iput p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSetVPMatrix([F[F)V
    .locals 12

    .prologue
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 447
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->e(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I

    move-result v0

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_6

    .line 448
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 449
    invoke-static {p2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 451
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v4, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I

    move-result v4

    int-to-float v4, v4

    div-float v6, v0, v4

    .line 454
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->enableRotation:Z

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rotation:I

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 457
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rotation:I

    sparse-switch v0, :sswitch_data_0

    .line 468
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->zoomOrLetterBox:Z

    if-eqz v0, :cond_2

    .line 469
    div-float v0, v5, v6

    iget v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v2

    invoke-static {p2, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 470
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    mul-float/2addr v0, v6

    sub-float/2addr v0, v5

    mul-float/2addr v0, v7

    invoke-static {p2, v1, v0, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 460
    :sswitch_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->zoomOrLetterBox:Z

    if-eqz v0, :cond_1

    .line 461
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v6

    invoke-static {p2, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 462
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float v0, v6, v0

    sub-float/2addr v0, v5

    mul-float/2addr v0, v7

    invoke-static {p2, v1, v0, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 464
    :cond_1
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float v0, v6, v0

    invoke-static {p1, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 472
    :cond_2
    div-float v0, v5, v6

    iget v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v2

    invoke-static {p1, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->zoomOrLetterBox:Z

    if-eqz v0, :cond_5

    .line 481
    div-float v0, v5, v6

    iget v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v4

    invoke-static {p2, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 482
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    mul-float/2addr v0, v6

    sub-float/2addr v0, v5

    mul-float/2addr v0, v7

    invoke-static {p2, v1, v0, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 487
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rorate180:Z

    if-eqz v0, :cond_4

    move-object v0, p1

    move v4, v3

    .line 488
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->flip:Z

    if-eqz v0, :cond_0

    move-object v6, p1

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v3

    .line 492
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 484
    :cond_5
    div-float v0, v5, v6

    iget v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v4

    invoke-static {p1, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_1

    .line 497
    :cond_6
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 498
    invoke-static {p2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 499
    const/4 v0, 0x5

    const/4 v4, 0x5

    aget v4, p2, v4

    neg-float v4, v4

    aput v4, p2, v0

    .line 500
    const/16 v0, 0xd

    const/16 v4, 0xd

    aget v4, p2, v4

    sub-float v4, v5, v4

    aput v4, p2, v0

    .line 502
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->f(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v4, v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->g(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)I

    move-result v4

    int-to-float v4, v4

    div-float v6, v0, v4

    .line 505
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->enableRotation:Z

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rotation:I

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 507
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rotation:I

    sparse-switch v0, :sswitch_data_1

    .line 518
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->zoomOrLetterBox:Z

    if-eqz v0, :cond_8

    .line 519
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v6

    invoke-static {p2, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 520
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float v0, v6, v0

    sub-float/2addr v0, v5

    mul-float/2addr v0, v7

    invoke-static {p2, v1, v0, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto/16 :goto_0

    .line 510
    :sswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->zoomOrLetterBox:Z

    if-eqz v0, :cond_7

    .line 511
    div-float v0, v5, v6

    iget v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v2

    invoke-static {p2, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 512
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    mul-float/2addr v0, v6

    sub-float/2addr v0, v5

    mul-float/2addr v0, v7

    invoke-static {p2, v1, v0, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto/16 :goto_0

    .line 514
    :cond_7
    div-float v0, v5, v6

    iget v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v2

    invoke-static {p1, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_0

    .line 522
    :cond_8
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float v0, v6, v0

    invoke-static {p1, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_0

    .line 529
    :cond_9
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->zoomOrLetterBox:Z

    if-eqz v0, :cond_b

    .line 530
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float/2addr v0, v6

    invoke-static {p2, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 531
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float v0, v6, v0

    sub-float/2addr v0, v5

    mul-float/2addr v0, v7

    invoke-static {p2, v1, v0, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 536
    :goto_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->rorate180:Z

    if-eqz v0, :cond_a

    move-object v0, p1

    move v4, v3

    .line 537
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 540
    :cond_a
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;

    iget-object v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1;->b:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;->h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayerPreviewFeature;->flip:Z

    if-eqz v0, :cond_0

    move-object v6, p1

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v5

    move v11, v3

    .line 541
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/16 :goto_0

    .line 533
    :cond_b
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$1$1;->a:F

    div-float v0, v6, v0

    invoke-static {p1, v1, v0, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_2

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 507
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method
