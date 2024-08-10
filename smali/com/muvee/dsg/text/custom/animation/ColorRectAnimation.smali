.class public Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;
.super Lcom/muvee/dsg/text/custom/animation/Animation;
.source "ColorRectAnimation.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/muvee/dsg/text/custom/animation/Animation;-><init>()V

    .line 21
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 23
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->g:I

    return-void
.end method


# virtual methods
.method public getClipRect()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->g:I

    return v0
.end method

.method public getColorStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public getStartTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 4

    .prologue
    .line 76
    invoke-super/range {p0 .. p6}, Lcom/muvee/dsg/text/custom/animation/Animation;->onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 80
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->getFactor(I)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    .line 81
    invoke-static {p4, v1}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v0

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    .line 84
    :goto_0
    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v1

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p4, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 85
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 87
    iget v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->g:I

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 89
    return-void

    .line 83
    :cond_1
    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v1

    goto :goto_0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 102
    invoke-super {p0, p1}, Lcom/muvee/dsg/text/custom/animation/Animation;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    .line 104
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->h:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->h:Ljava/lang/String;

    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->g:I

    goto :goto_0

    .line 105
    :sswitch_0
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "colorValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    .line 112
    :pswitch_1
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->g:I

    .line 113
    sget-object v0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorVal:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->g:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 120
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_3
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 123
    :pswitch_2
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto :goto_2

    .line 120
    :sswitch_2
    const-string/jumbo v6, "startTarget"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :sswitch_3
    const-string v6, "endTarget"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_3

    :sswitch_4
    const-string v6, "clipRect"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_3

    .line 127
    :pswitch_3
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto :goto_2

    .line 131
    :pswitch_4
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto :goto_2

    .line 137
    :cond_4
    return-object p0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a72f63 -> :sswitch_0
        0x4c5797ce -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 120
    :sswitch_data_1
    .sparse-switch
        -0x6e922f6d -> :sswitch_2
        0x36b34954 -> :sswitch_4
        0x6093964c -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setClipRect(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 53
    return-object p0
.end method

.method public setColor(I)Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->g:I

    .line 62
    return-object p0
.end method

.method public setColorStr(Ljava/lang/String;)Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->h:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setEndTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->e:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 44
    return-object p0
.end method

.method public setStartTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/animation/ColorRectAnimation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 35
    return-object p0
.end method
