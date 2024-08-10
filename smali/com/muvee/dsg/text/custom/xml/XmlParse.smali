.class public Lcom/muvee/dsg/text/custom/xml/XmlParse;
.super Ljava/lang/Object;
.source "XmlParse.java"


# instance fields
.field private a:Lorg/xmlpull/v1/XmlPullParser;

.field private b:Lcom/muvee/dsg/text/custom/xml/Node;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/muvee/dsg/text/custom/xml/Node;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/xml/Node;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->b:Lcom/muvee/dsg/text/custom/xml/Node;

    .line 17
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 18
    return-void
.end method

.method private a(Lcom/muvee/dsg/text/custom/xml/Node;)V
    .locals 5

    .prologue
    .line 50
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 52
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    iget-object v4, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lcom/muvee/dsg/text/custom/xml/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->b:Lcom/muvee/dsg/text/custom/xml/Node;

    .line 23
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 24
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/xml/XmlParse;->b:Lcom/muvee/dsg/text/custom/xml/Node;

    iget-object v0, v0, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    return-object v0

    .line 28
    :pswitch_2
    iget-object v0, v0, Lcom/muvee/dsg/text/custom/xml/Node;->parent:Lcom/muvee/dsg/text/custom/xml/Node;

    goto :goto_0

    .line 33
    :pswitch_3
    new-instance v1, Lcom/muvee/dsg/text/custom/xml/Node;

    invoke-direct {v1}, Lcom/muvee/dsg/text/custom/xml/Node;-><init>()V

    .line 34
    invoke-direct {p0, v1}, Lcom/muvee/dsg/text/custom/xml/XmlParse;->a(Lcom/muvee/dsg/text/custom/xml/Node;)V

    .line 35
    iput-object v0, v1, Lcom/muvee/dsg/text/custom/xml/Node;->parent:Lcom/muvee/dsg/text/custom/xml/Node;

    .line 36
    iget-object v0, v0, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 38
    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
