.class public Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;
.super Lcom/muvee/dsg/text/custom/animation/Animation;
.source "TargetRectAnimation.java"

# interfaces
.implements Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant;


# instance fields
.field private c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private g:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/muvee/dsg/text/custom/animation/Animation;-><init>()V

    .line 18
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 20
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->h:I

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getPanTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->g:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->g:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getPanTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 114
    :cond_4
    return-void
.end method


# virtual methods
.method public getClipRect()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public getDim()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->h:I

    return v0
.end method

.method public getEndTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public getPanEndTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->g:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public getPanTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public getStartTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 9

    .prologue
    const/16 v1, 0xff

    .line 71
    invoke-super/range {p0 .. p6}, Lcom/muvee/dsg/text/custom/animation/Animation;->onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {p6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 74
    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    :cond_0
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p4, p1}, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment;)V

    .line 84
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 86
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->getFactor(I)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    .line 87
    invoke-static {p4, v1}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v2

    .line 88
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v0

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    .line 90
    :goto_1
    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v1

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p4, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 93
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->g:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->getFactor(I)F

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->getSourceZoom(I)F

    move-result v6

    const/4 v7, 0x0

    .line 94
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getSourceDescription(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;

    move-result-object v8

    move-object v0, p4

    move-object v4, p6

    move v5, p5

    .line 93
    invoke-static/range {v0 .. v8}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Landroid/graphics/Paint;FFZLcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;)V

    .line 95
    iget v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->h:I

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 96
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 97
    return-void

    :cond_1
    move-object v0, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    goto :goto_1
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 141
    invoke-super {p0, p1}, Lcom/muvee/dsg/text/custom/animation/Animation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    .line 143
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->h:I

    goto :goto_0

    .line 144
    :pswitch_1
    const-string v1, "dim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 154
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 157
    :pswitch_2
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto :goto_2

    .line 154
    :sswitch_0
    const-string/jumbo v5, "startTarget"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    :sswitch_1
    const-string v5, "endTarget"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_2
    const-string v5, "clipRect"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_3
    const-string/jumbo v5, "panTarget"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_4
    const-string/jumbo v5, "panEndTarget"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_3

    .line 161
    :pswitch_3
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto :goto_2

    .line 165
    :pswitch_4
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto :goto_2

    .line 169
    :pswitch_5
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto :goto_2

    .line 173
    :pswitch_6
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->g:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto/16 :goto_2

    .line 179
    :cond_3
    return-object p0

    .line 144
    :pswitch_data_0
    .packed-switch 0x18488
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 154
    :sswitch_data_0
    .sparse-switch
        -0x75ec9b72 -> :sswitch_3
        -0x6e922f6d -> :sswitch_0
        -0x680b99d1 -> :sswitch_4
        0x36b34954 -> :sswitch_2
        0x6093964c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setClipRect(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 48
    return-object p0
.end method

.method public setDim(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->h:I

    .line 197
    return-void
.end method

.method public setEndTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 43
    return-object p0
.end method

.method public setPanEndTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->g:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 66
    return-object p0
.end method

.method public setPanTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 57
    return-object p0
.end method

.method public setStartTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->c:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 34
    return-object p0
.end method
