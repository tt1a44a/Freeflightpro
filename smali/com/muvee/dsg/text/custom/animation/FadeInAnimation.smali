.class public Lcom/muvee/dsg/text/custom/animation/FadeInAnimation;
.super Lcom/muvee/dsg/text/custom/animation/Animation;
.source "FadeInAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/muvee/dsg/text/custom/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 9

    .prologue
    .line 17
    invoke-super/range {p0 .. p6}, Lcom/muvee/dsg/text/custom/animation/Animation;->onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 19
    invoke-virtual {p1, p4}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getTarget(Landroid/graphics/Canvas;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v0

    invoke-virtual {v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p4, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 21
    invoke-virtual {v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 23
    const/high16 v0, 0x437f0000    # 255.0f

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/FadeInAnimation;->getFactor(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/FadeInAnimation;->getSourceZoom(I)F

    move-result v6

    const/4 v7, 0x0

    .line 26
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getSourceDescription(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;

    move-result-object v8

    move-object v0, p4

    move-object v4, p6

    move v5, p5

    .line 25
    invoke-static/range {v0 .. v8}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Landroid/graphics/Paint;FFZLcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;)V

    .line 27
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 28
    return-void
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/muvee/dsg/text/custom/animation/Animation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    .line 32
    return-object p0
.end method
