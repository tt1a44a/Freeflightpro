.class public Lcom/muvee/dsg/text/custom/seqment/Seqment;
.super Ljava/lang/Object;
.source "Seqment.java"

# interfaces
.implements Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;,
        Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;,
        Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;,
        Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Landroid/graphics/Paint;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/muvee/dsg/text/custom/seqment/Interval;

.field private f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;",
            ">;"
        }
    .end annotation
.end field

.field private i:F

.field private j:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->c:I

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->d:Ljava/lang/String;

    .line 471
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Interval;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Interval;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->e:Lcom/muvee/dsg/text/custom/seqment/Interval;

    .line 473
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->g:Ljava/util/List;

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->h:Ljava/util/List;

    .line 476
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->i:F

    .line 478
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->j:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->j:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 569
    :cond_1
    return-void
.end method

.method public static loadSeqment(Landroid/content/Context;I)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 616
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 619
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 621
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 623
    new-instance v3, Lcom/muvee/dsg/text/custom/xml/XmlParse;

    invoke-direct {v3, v0}, Lcom/muvee/dsg/text/custom/xml/XmlParse;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 625
    invoke-virtual {v3}, Lcom/muvee/dsg/text/custom/xml/XmlParse;->parse()Lcom/muvee/dsg/text/custom/xml/Node;

    move-result-object v0

    .line 628
    new-instance v3, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    invoke-direct {v3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;-><init>()V

    invoke-virtual {v3, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;

    move-result-object v0

    .line 631
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 641
    :goto_0
    return-object v0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 641
    goto :goto_0

    .line 637
    :catch_1
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadSeqment(Landroid/content/Context;Ljava/lang/String;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 649
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 652
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 653
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 655
    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 657
    new-instance v2, Lcom/muvee/dsg/text/custom/xml/XmlParse;

    invoke-direct {v2, v0}, Lcom/muvee/dsg/text/custom/xml/XmlParse;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 659
    invoke-virtual {v2}, Lcom/muvee/dsg/text/custom/xml/XmlParse;->parse()Lcom/muvee/dsg/text/custom/xml/Node;

    move-result-object v0

    .line 662
    new-instance v2, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    invoke-direct {v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment;-><init>()V

    invoke-virtual {v2, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;

    move-result-object v0

    .line 664
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 674
    :goto_0
    return-object v0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 674
    goto :goto_0

    .line 670
    :catch_1
    move-exception v0

    .line 671
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadSeqment(Ljava/io/InputStream;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 584
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 587
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 588
    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 590
    new-instance v2, Lcom/muvee/dsg/text/custom/xml/XmlParse;

    invoke-direct {v2, v0}, Lcom/muvee/dsg/text/custom/xml/XmlParse;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 592
    invoke-virtual {v2}, Lcom/muvee/dsg/text/custom/xml/XmlParse;->parse()Lcom/muvee/dsg/text/custom/xml/Node;

    move-result-object v0

    .line 595
    new-instance v2, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    invoke-direct {v2}, Lcom/muvee/dsg/text/custom/seqment/Seqment;-><init>()V

    invoke-virtual {v2, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :goto_0
    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 608
    goto :goto_0

    .line 604
    :catch_1
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public canDraw()Z
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->c:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/animation/Animation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->g:Ljava/util/List;

    return-object v0
.end method

.method public getInterval()Lcom/muvee/dsg/text/custom/seqment/Interval;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->e:Lcom/muvee/dsg/text/custom/seqment/Interval;

    return-object v0
.end method

.method public getPanTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->j:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceIdList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->d:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    .line 761
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getResourceIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 763
    :cond_1
    return-object v1
.end method

.method public getSeqments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->h:Ljava/util/List;

    return-object v0
.end method

.method public getSourceId()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->c:I

    return v0
.end method

.method public getSourceZoom()F
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->i:F

    return v0
.end method

.method public getTarget(Landroid/graphics/Canvas;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-static {p1, v0}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    return-object v0
.end method

.method public onDraw(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;F)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 535
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getSourcesSize()I

    move-result v0

    .line 536
    iget v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->c:I

    if-lt v1, v0, :cond_1

    .line 560
    :cond_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    invoke-virtual {p1, p0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 542
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/animation/Animation;

    .line 543
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/animation/Animation;->getInterval()Lcom/muvee/dsg/text/custom/seqment/Interval;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/muvee/dsg/text/custom/seqment/Interval;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    iget-object v6, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/muvee/dsg/text/custom/animation/Animation;->onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    .line 545
    const/4 v0, 0x0

    .line 549
    :goto_0
    if-eqz v0, :cond_3

    .line 550
    invoke-virtual {p1, p0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-static {p3, v0}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v2

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->j:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-static {p3, v0}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a:Landroid/graphics/Paint;

    iget v6, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->i:F

    .line 551
    invoke-virtual {p1, p0}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getSourceDescription(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;

    move-result-object v8

    move-object v0, p3

    move v5, p4

    .line 550
    invoke-static/range {v0 .. v8}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Landroid/graphics/Paint;FFZLcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;)V

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    .line 556
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getInterval()Lcom/muvee/dsg/text/custom/seqment/Interval;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/muvee/dsg/text/custom/seqment/Interval;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 557
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->onDraw(Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;F)V

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 679
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 682
    :pswitch_0
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->c:I

    goto :goto_0

    .line 680
    :sswitch_0
    const-string/jumbo v1, "sourceId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "resourceId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "blendMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    .line 685
    :pswitch_1
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->d:Ljava/lang/String;

    goto :goto_0

    .line 689
    :pswitch_2
    iget-object v1, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :cond_1
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_2

    .line 703
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 706
    :goto_3
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 689
    :pswitch_3
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_2

    :pswitch_4
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_2

    :pswitch_5
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_2

    :pswitch_6
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_2

    .line 691
    :pswitch_7
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 694
    :pswitch_8
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 697
    :pswitch_9
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 700
    :pswitch_a
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 713
    :cond_2
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 714
    sget-object v1, Lcom/muvee/dsg/text/custom/seqment/Seqment;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_3
    move v1, v3

    :goto_5
    packed-switch v1, :pswitch_data_3

    goto :goto_4

    .line 717
    :pswitch_b
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getSeqments()Ljava/util/List;

    move-result-object v1

    new-instance v8, Lcom/muvee/dsg/text/custom/seqment/Seqment;

    invoke-direct {v8}, Lcom/muvee/dsg/text/custom/seqment/Seqment;-><init>()V

    invoke-virtual {v8, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 715
    :sswitch_3
    const-string/jumbo v8, "seqment"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_5

    :sswitch_4
    const-string/jumbo v8, "target"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_5

    :sswitch_5
    const-string/jumbo v8, "panTarget"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_5

    :sswitch_6
    const-string v8, "interval"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_5

    :sswitch_7
    const-string v8, "animation"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_5

    :sswitch_8
    const-string/jumbo v8, "textSegment"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto :goto_5

    .line 721
    :pswitch_c
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto/16 :goto_4

    .line 725
    :pswitch_d
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->j:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    goto/16 :goto_4

    .line 728
    :pswitch_e
    new-instance v1, Lcom/muvee/dsg/text/custom/seqment/Interval;

    invoke-direct {v1}, Lcom/muvee/dsg/text/custom/seqment/Interval;-><init>()V

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Interval;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Interval;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->e:Lcom/muvee/dsg/text/custom/seqment/Interval;

    goto/16 :goto_4

    .line 731
    :pswitch_f
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/animation/Animation;->create(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 734
    :pswitch_10
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getSeqments()Ljava/util/List;

    move-result-object v1

    new-instance v8, Lcom/muvee/dsg/text/custom/seqment/TextSegment;

    invoke-direct {v8}, Lcom/muvee/dsg/text/custom/seqment/TextSegment;-><init>()V

    invoke-virtual {v8, v0}, Lcom/muvee/dsg/text/custom/seqment/TextSegment;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 741
    :cond_4
    return-object p0

    .line 680
    :sswitch_data_0
    .sparse-switch
        -0x5034fe37 -> :sswitch_1
        0x3561bd94 -> :sswitch_2
        0x6816d696 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 689
    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 715
    :sswitch_data_1
    .sparse-switch
        -0x75ec9b72 -> :sswitch_5
        -0x34818e6f -> :sswitch_4
        0x21ffe4c5 -> :sswitch_6
        0x42ab1b84 -> :sswitch_7
        0x43943546 -> :sswitch_8
        0x76318a3d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public setAnimations(Ljava/util/List;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/animation/Animation;",
            ">;)",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;"
        }
    .end annotation

    .prologue
    .line 506
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->g:Ljava/util/List;

    .line 507
    return-object p0
.end method

.method public setInterval(Lcom/muvee/dsg/text/custom/seqment/Interval;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->e:Lcom/muvee/dsg/text/custom/seqment/Interval;

    .line 485
    return-object p0
.end method

.method public setPanTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->j:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 499
    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->d:Ljava/lang/String;

    .line 530
    return-object p0
.end method

.method public setSeqments(Ljava/util/List;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;",
            ">;)",
            "Lcom/muvee/dsg/text/custom/seqment/Seqment;"
        }
    .end annotation

    .prologue
    .line 513
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->h:Ljava/util/List;

    .line 514
    return-object p0
.end method

.method public setSourceId(I)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 0

    .prologue
    .line 520
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->c:I

    .line 521
    return-object p0
.end method

.method public setSourceZoom(F)V
    .locals 0

    .prologue
    .line 747
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->i:F

    .line 748
    return-void
.end method

.method public setTarget(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment;
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment;->f:Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 494
    return-object p0
.end method
