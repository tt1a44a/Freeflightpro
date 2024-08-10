.class public Lcom/muvee/dsg/text/TextRenderHelper;
.super Ljava/lang/Object;
.source "TextRenderHelper.java"

# interfaces
.implements Lcom/muvee/dsg/text/TextRendererConstant;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 25
    const-string v1, "No Text Value or empty text (key.text) set"

    .line 27
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 32
    const/4 v10, 0x0

    .line 35
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 37
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 38
    const/high16 v0, 0x42900000    # 72.0f

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 42
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    const-string v3, "key.text.color"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    const-string v3, "key.text"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 49
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 52
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 54
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 56
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    const-string v8, "key.text.alignment"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    and-int/lit8 v8, v0, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 60
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 63
    :cond_2
    and-int/lit8 v0, v0, 0x10

    const/16 v8, 0x10

    if-ne v0, v8, :cond_3

    .line 64
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    const-string v8, "key.text.size.ratio"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 71
    cmpl-float v8, v0, v12

    if-ltz v8, :cond_4

    .line 72
    int-to-float v8, v5

    mul-float/2addr v0, v8

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    const-string v8, "key.text.size.pixel"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 79
    cmpl-float v8, v0, v12

    if-ltz v8, :cond_5

    .line 80
    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    const-string v8, "key.text.font"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    check-cast v0, Landroid/graphics/Typeface;

    .line 88
    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    :cond_6
    new-instance v0, Landroid/text/StaticLayout;

    move v8, v7

    move v9, v2

    move v11, v2

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 105
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget-object v1, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    const-string v3, "key.text.layout.alignment"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_8

    .line 111
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p1, v12, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    :cond_7
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v12, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    :cond_8
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    return-void
.end method

.method public setRenderParam(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/muvee/dsg/text/TextRenderHelper;->a:Ljava/util/Map;

    goto :goto_0
.end method
