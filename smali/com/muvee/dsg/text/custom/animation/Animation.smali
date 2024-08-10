.class public Lcom/muvee/dsg/text/custom/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# instance fields
.field protected a:Lcom/muvee/dsg/text/custom/seqment/Interval;

.field protected b:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Interval;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Interval;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->a:Lcom/muvee/dsg/text/custom/seqment/Interval;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static create(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;
    .locals 3

    .prologue
    .line 37
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_1
    return-object v0

    .line 39
    :sswitch_0
    const-string v2, "TargetRectAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "FadeOutAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "FadeInAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "ColorRectAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 41
    :pswitch_0
    new-instance v0, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/text/custom/animation/TargetRectAnimation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 43
    :pswitch_1
    new-instance v0, Lcom/muvee/dsg/text/custom/animation/FadeOutAnimation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/animation/FadeOutAnimation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/text/custom/animation/FadeOutAnimation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 45
    :pswitch_2
    new-instance v0, Lcom/muvee/dsg/text/custom/animation/FadeInAnimation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/animation/FadeInAnimation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/text/custom/animation/FadeInAnimation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 47
    :pswitch_3
    new-instance v0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        -0x7dcff45d -> :sswitch_2
        -0x70d62883 -> :sswitch_3
        -0x2087e431 -> :sswitch_0
        -0x19e9876e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getFactor(I)F
    .locals 2

    .prologue
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->a:Lcom/muvee/dsg/text/custom/seqment/Interval;

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Interval;->getStart()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->a:Lcom/muvee/dsg/text/custom/seqment/Interval;

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Interval;->getDuration()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getInterval()Lcom/muvee/dsg/text/custom/seqment/Interval;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->a:Lcom/muvee/dsg/text/custom/seqment/Interval;

    return-object v0
.end method

.method public getSourceZoom(I)F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->b:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->b:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->b:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0, p1}, Lcom/muvee/dsg/text/custom/animation/Animation;->getFactor(I)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 58
    iget-object v5, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    new-instance v1, Lcom/muvee/dsg/text/custom/seqment/Interval;

    invoke-direct {v1}, Lcom/muvee/dsg/text/custom/seqment/Interval;-><init>()V

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Interval;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Interval;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->a:Lcom/muvee/dsg/text/custom/seqment/Interval;

    goto :goto_0

    .line 58
    :sswitch_0
    const-string v6, "interval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "sourceZoom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    goto :goto_1

    .line 63
    :pswitch_1
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->b:[F

    const-string/jumbo v5, "start"

    invoke-virtual {v0, v5}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v2

    .line 64
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->b:[F

    const-string v5, "end"

    invoke-virtual {v0, v5}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    aput v0, v1, v3

    goto :goto_0

    .line 70
    :cond_1
    return-object p0

    .line 58
    :sswitch_data_0
    .sparse-switch
        -0x423c8572 -> :sswitch_1
        0x21ffe4c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInterval(Lcom/muvee/dsg/text/custom/seqment/Interval;)Lcom/muvee/dsg/text/custom/animation/Animation;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/Animation;->a:Lcom/muvee/dsg/text/custom/seqment/Interval;

    .line 25
    return-object p0
.end method
