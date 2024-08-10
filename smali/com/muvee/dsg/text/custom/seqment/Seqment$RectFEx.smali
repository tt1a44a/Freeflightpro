.class public Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
.super Ljava/lang/Object;
.source "Seqment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/text/custom/seqment/Seqment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectFEx"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/RectF;

.field private d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const-string v0, "NORMAL"

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 207
    return-void
.end method

.method private constructor <init>(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const-string v0, "NORMAL"

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    .line 211
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    iget-object v1, p1, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;-><init>(Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 212
    return-void
.end method

.method public static createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 8

    .prologue
    .line 336
    if-eqz p0, :cond_1

    .line 337
    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;-><init>()V

    .line 339
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p1, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p1, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p1, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p1, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    .line 346
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    iput-object v1, v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-object p0, v0

    .line 351
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static createAnimated([Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 2

    .prologue
    .line 409
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v0, v1, p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    return-object v0
.end method

.method public static createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 327
    if-eqz p0, :cond_0

    .line 328
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;-><init>(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 331
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 319
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;-><init>()V

    .line 320
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    .line 322
    new-instance v1, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-direct {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;-><init>()V

    iput-object v1, v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 323
    return-object v0
.end method


# virtual methods
.method public calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 252
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    .line 288
    :cond_1
    :goto_1
    return-void

    .line 252
    :sswitch_0
    const-string v2, "FIT_SMALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "RELATED_SEGMENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :pswitch_0
    if-eqz p1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-static {p2, v0, v1}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v0

    .line 256
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 259
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 260
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 261
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 262
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 270
    :goto_2
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 264
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 265
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 266
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 267
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 268
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    div-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 274
    :pswitch_1
    if-eqz p3, :cond_1

    .line 275
    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 276
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 277
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 278
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 279
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 280
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    goto/16 :goto_1

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        -0x51ec4121 -> :sswitch_1
        0x2c499719 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 355
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 358
    :pswitch_0
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 356
    :sswitch_0
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "rotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    .line 361
    :pswitch_1
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 367
    :pswitch_3
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 370
    :pswitch_4
    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 373
    :pswitch_5
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setZ(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    goto/16 :goto_0

    .line 378
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 381
    :pswitch_6
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setX(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    goto :goto_2

    .line 379
    :sswitch_6
    const-string/jumbo v1, "rotationX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    :sswitch_7
    const-string/jumbo v1, "rotationY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_3

    :sswitch_8
    const-string/jumbo v1, "rotationZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_3

    :sswitch_9
    const-string/jumbo v1, "rotationPivotX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_3

    :sswitch_a
    const-string/jumbo v1, "rotationPivotY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_3

    .line 384
    :pswitch_7
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setY(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    goto :goto_2

    .line 387
    :pswitch_8
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setZ(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    goto :goto_2

    .line 390
    :pswitch_9
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->setX(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    goto :goto_2

    .line 393
    :pswitch_a
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->setY(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    goto/16 :goto_2

    .line 398
    :cond_3
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 399
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    :cond_4
    move v1, v3

    :goto_5
    packed-switch v1, :pswitch_data_3

    goto :goto_4

    .line 401
    :pswitch_b
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    goto :goto_4

    .line 399
    :pswitch_c
    const-string/jumbo v5, "rotation"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_5

    .line 405
    :cond_5
    return-object p0

    .line 356
    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        -0x266f082 -> :sswitch_5
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x368f3a -> :sswitch_4
        0x677c21c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 379
    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_6
        -0x4a771f65 -> :sswitch_7
        -0x4a771f64 -> :sswitch_8
        -0x43da5e8c -> :sswitch_9
        -0x43da5e8b -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 399
    :pswitch_data_2
    .packed-switch -0x266f082
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    .line 248
    return-object p0
.end method

.method public setRotation(Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 306
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFEx{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", original="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
