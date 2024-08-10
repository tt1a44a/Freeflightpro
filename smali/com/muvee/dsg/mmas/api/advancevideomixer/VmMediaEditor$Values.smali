.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;
.super Ljava/lang/Object;
.source "VmMediaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation


# instance fields
.field public rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a()F

    move-result v1

    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b()F

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public setBottom(F)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 37
    return-void
.end method

.method public setLeft(F)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 28
    return-void
.end method

.method public setMatrix([F[FLcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    invoke-static {p1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 41
    invoke-static {p2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 43
    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    neg-float v0, v0

    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a()F

    move-result v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v4

    .line 44
    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b()F

    move-result v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b()F

    move-result v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    .line 45
    iget-object v3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a()F

    move-result v4

    div-float/2addr v3, v4

    .line 46
    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b()F

    move-result v5

    div-float/2addr v4, v5

    .line 48
    invoke-static {p1, v6, v0, v2, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 49
    invoke-static {p1, v6, v3, v4, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 51
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    .line 52
    invoke-virtual {p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->getAspecRatio()F

    move-result v2

    .line 55
    iget v3, p3, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->rotation:I

    sparse-switch v3, :sswitch_data_0

    .line 67
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_1

    .line 68
    div-float/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 75
    :goto_0
    invoke-static {p2, v6, v2, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 76
    div-float v2, v1, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, v8

    div-float v0, v1, v0

    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    invoke-static {p2, v6, v2, v0, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 78
    iget v0, p3, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->rotation:I

    sparse-switch v0, :sswitch_data_1

    .line 86
    :goto_1
    return-void

    .line 58
    :sswitch_0
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    .line 59
    div-float v0, v2, v0

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 61
    :cond_0
    div-float/2addr v0, v2

    move v2, v1

    .line 64
    goto :goto_0

    .line 70
    :cond_1
    div-float v0, v2, v0

    move v2, v1

    goto :goto_0

    .line 81
    :sswitch_1
    const/4 v0, 0x5

    const/4 v2, 0x5

    aget v2, p2, v2

    neg-float v2, v2

    aput v2, p2, v0

    .line 82
    const/16 v0, 0xd

    const/16 v2, 0xd

    aget v2, p2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    goto :goto_1

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 78
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0xb4 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRight(F)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 34
    return-void
.end method

.method public setTop(F)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 31
    return-void
.end method
