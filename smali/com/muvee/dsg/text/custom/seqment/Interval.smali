.class public Lcom/muvee/dsg/text/custom/seqment/Interval;
.super Ljava/lang/Object;
.source "Interval.java"

# interfaces
.implements Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    .line 7
    const/16 v0, 0x2710

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    .line 7
    const/16 v0, 0x2710

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    .line 12
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    .line 13
    iput p2, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()F
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    iget v1, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    return v0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Interval;
    .locals 4

    .prologue
    .line 37
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

    .line 38
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    goto :goto_0

    .line 38
    :sswitch_0
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 43
    :pswitch_1
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    goto :goto_0

    .line 49
    :cond_1
    return-object p0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnd(I)Lcom/muvee/dsg/text/custom/seqment/Interval;
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->b:I

    .line 27
    return-object p0
.end method

.method public setStart(I)Lcom/muvee/dsg/text/custom/seqment/Interval;
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Interval;->a:I

    .line 20
    return-object p0
.end method
