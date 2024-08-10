.class public Lcom/muvee/dsg/text/custom/seqment/Shadow;
.super Ljava/lang/Object;
.source "Shadow.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDx()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->b:F

    return v0
.end method

.method public getDy()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->c:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->a:F

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->d:I

    return v0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Shadow;
    .locals 4

    .prologue
    .line 56
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    const-string/jumbo v0, "radius"

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->a:F

    goto :goto_0

    .line 57
    :sswitch_0
    const-string/jumbo v3, "radius"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "dx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "dy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "colorHex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    .line 62
    :pswitch_1
    const-string v0, "dx"

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->b:F

    goto :goto_0

    .line 65
    :pswitch_2
    const-string v0, "dy"

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->c:F

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->d:I

    goto :goto_0

    .line 71
    :pswitch_4
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->d:I

    goto/16 :goto_0

    .line 77
    :cond_1
    return-object p0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        -0x37f1936e -> :sswitch_0
        -0x257b7348 -> :sswitch_4
        0xc94 -> :sswitch_1
        0xc95 -> :sswitch_2
        0x5a72f63 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setDx(F)Lcom/muvee/dsg/text/custom/seqment/Shadow;
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->b:F

    .line 34
    return-object p0
.end method

.method public setDy(F)Lcom/muvee/dsg/text/custom/seqment/Shadow;
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->c:F

    .line 43
    return-object p0
.end method

.method public setRadius(F)Lcom/muvee/dsg/text/custom/seqment/Shadow;
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->a:F

    .line 25
    return-object p0
.end method

.method public setShadowColor(I)Lcom/muvee/dsg/text/custom/seqment/Shadow;
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Shadow;->d:I

    .line 52
    return-object p0
.end method
