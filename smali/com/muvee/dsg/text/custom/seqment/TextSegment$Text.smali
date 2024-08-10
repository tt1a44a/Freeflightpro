.class public Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;
.super Ljava/lang/Object;
.source "TextSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/text/custom/seqment/TextSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Text"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getText(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getTextMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->b:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;
    .locals 4

    .prologue
    .line 52
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

    .line 53
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->a:Ljava/lang/String;

    goto :goto_0

    .line 53
    :sswitch_0
    const-string/jumbo v3, "text"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "textId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 58
    :pswitch_1
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->b:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    return-object p0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        -0x344648d8 -> :sswitch_1
        0x36452d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->a:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public setTextId(Ljava/lang/String;)Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/TextSegment$Text;->b:Ljava/lang/String;

    .line 48
    return-object p0
.end method
