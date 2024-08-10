.class public Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;
.super Lcom/muvee/dsg/text/custom/animation/Animation;
.source "DefaultAnimation.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

.field private g:[I

.field private h:[I

.field private i:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 21
    invoke-direct {p0}, Lcom/muvee/dsg/text/custom/animation/Animation;-><init>()V

    .line 29
    new-array v0, v2, [Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 30
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    aput-object v1, v0, v4

    .line 31
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createDefault()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 33
    new-array v0, v2, [Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 34
    new-array v0, v2, [Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 35
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->g:[I

    .line 36
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->h:[I

    .line 37
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 37
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->getFactor(I)F

    move-result v0

    .line 89
    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 309
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b(Ljava/lang/String;)I

    move-result v0

    .line 347
    :goto_0
    :pswitch_0
    return v0

    .line 311
    :cond_0
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 339
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 314
    :sswitch_0
    const-string v2, "TRANSPARENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_1
    const-string v3, "BLACK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :sswitch_2
    const-string v2, "BLUE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "CYAN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "DKGRAY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "GRAY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "GREEN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "LTGRAY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "RED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "WHITE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_a
    const-string v2, "YELLOW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    .line 318
    :pswitch_1
    const/high16 v0, -0x1000000

    goto/16 :goto_0

    .line 320
    :pswitch_2
    const v0, -0xffff01

    goto/16 :goto_0

    .line 322
    :pswitch_3
    const v0, -0xff0001

    goto/16 :goto_0

    .line 324
    :pswitch_4
    const v0, -0xbbbbbc

    goto/16 :goto_0

    .line 326
    :pswitch_5
    const v0, -0x777778

    goto/16 :goto_0

    .line 328
    :pswitch_6
    const v0, -0xff0100

    goto/16 :goto_0

    .line 330
    :pswitch_7
    const v0, -0x333334

    goto/16 :goto_0

    .line 332
    :pswitch_8
    const/high16 v0, -0x10000

    goto/16 :goto_0

    :pswitch_9
    move v0, v1

    .line 334
    goto/16 :goto_0

    .line 336
    :pswitch_a
    const/16 v0, -0x100

    goto/16 :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        -0x798e7815 -> :sswitch_7
        -0x6430a78c -> :sswitch_a
        0x13c71 -> :sswitch_8
        0x1f285a -> :sswitch_2
        0x1fcb23 -> :sswitch_3
        0x218263 -> :sswitch_5
        0x3c597df -> :sswitch_1
        0x40ed6e3 -> :sswitch_6
        0x4ebd409 -> :sswitch_9
        0x196ff132 -> :sswitch_0
        0x784bef6a -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v2

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v3

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v2

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getPanTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v3

    invoke-virtual {p3}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->getPanTarget()Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2, v4}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, p2, v4}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->calculate(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)V

    .line 122
    :cond_5
    return-void
.end method

.method private a(Lcom/muvee/dsg/text/custom/xml/Node;I)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 269
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b:[F

    iget-object v7, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, p2

    goto :goto_0

    .line 270
    :sswitch_0
    const-string/jumbo v1, "sourceZoom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "fade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v1, "foreground"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    .line 275
    :pswitch_1
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    iget-object v7, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, p2

    goto :goto_0

    .line 278
    :pswitch_2
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->g:[I

    iget-object v7, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, p2

    goto :goto_0

    .line 281
    :pswitch_3
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->h:[I

    iget-object v7, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, p2

    goto/16 :goto_0

    .line 287
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 288
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 291
    :pswitch_4
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v7, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v7, v7, p2

    invoke-static {v7}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, p2

    goto :goto_2

    .line 288
    :sswitch_4
    const-string/jumbo v7, "target"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    :sswitch_5
    const-string v7, "clip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_3

    :sswitch_6
    const-string/jumbo v7, "targetPan"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_3

    .line 295
    :pswitch_5
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v7, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v7, v7, p2

    invoke-static {v7}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, p2

    goto :goto_2

    .line 299
    :pswitch_6
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v7, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v7, v7, p2

    invoke-static {v7}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, p2

    goto :goto_2

    .line 305
    :cond_3
    return-void

    .line 270
    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_2
        -0x423c8572 -> :sswitch_0
        0x2fd67c -> :sswitch_1
        0x76486943 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 288
    :sswitch_data_1
    .sparse-switch
        -0x34818e6f -> :sswitch_4
        -0x309ceeb4 -> :sswitch_6
        0x2ea350 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->getFactor(I)F

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->g:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->g:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->g:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 351
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method private c(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->getFactor(I)F

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->h:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->h:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->h:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 9

    .prologue
    .line 41
    invoke-super/range {p0 .. p6}, Lcom/muvee/dsg/text/custom/animation/Animation;->onDraw(Lcom/muvee/dsg/text/custom/seqment/Seqment;Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;ILandroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p4, p1}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment;)V

    .line 44
    invoke-direct {p0, p3}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(I)I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 49
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->getFactor(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createAnimated([Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v3

    .line 50
    invoke-static {p4, v3}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->getFactor(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createAnimated([Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v4

    .line 54
    if-eqz v4, :cond_0

    invoke-static {p4, v4}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v0

    move-object v1, v0

    .line 55
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v0

    .line 59
    :goto_1
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    .line 60
    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 61
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 63
    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 64
    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getY()F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    .line 65
    neg-float v5, v3

    neg-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 66
    invoke-virtual {v4, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    invoke-virtual {p4, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 71
    invoke-virtual {v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 72
    invoke-direct {p0, p3}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 75
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getBitmap(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    .line 77
    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->getFactor(I)F

    move-result v3

    invoke-static {v0, v3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createAnimated([Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->createRect(Landroid/graphics/Canvas;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;

    move-result-object v3

    .line 80
    invoke-virtual {p0, p3}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->getSourceZoom(I)F

    move-result v6

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;->getSourceDescription(Lcom/muvee/dsg/text/custom/seqment/Seqment;)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;

    move-result-object v8

    move-object v0, p4

    move-object v4, p6

    move v5, p5

    .line 73
    invoke-static/range {v0 .. v8}, Lcom/muvee/dsg/text/custom/seqment/CustomTextConstant$Utils;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;Landroid/graphics/Paint;FFZLcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;)V

    .line 83
    invoke-direct {p0, p3}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->c(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 84
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 85
    return-void

    :cond_0
    move-object v1, v2

    .line 54
    goto/16 :goto_0

    .line 55
    :cond_1
    invoke-virtual {v3}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/animation/Animation;
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 167
    sget-object v0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->c:Ljava/lang/String;

    const-string/jumbo v1, "parse: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b:[F

    iget-object v8, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b:[F

    iget-object v9, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v8, v4

    aput v0, v1, v2

    goto :goto_0

    .line 169
    :sswitch_0
    const-string/jumbo v1, "sourceZoom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "fade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v1, "foreground"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    iget-object v8, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    iget-object v9, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v8, v4

    aput v0, v1, v2

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->g:[I

    iget-object v8, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->g:[I

    iget-object v9, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(Ljava/lang/String;)I

    move-result v0

    aput v0, v8, v4

    aput v0, v1, v2

    goto/16 :goto_0

    .line 180
    :pswitch_3
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->h:[I

    iget-object v8, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->h:[I

    iget-object v9, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(Ljava/lang/String;)I

    move-result v0

    aput v0, v8, v4

    aput v0, v1, v2

    goto/16 :goto_0

    .line 188
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 189
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_3
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 191
    :pswitch_4
    new-instance v1, Lcom/muvee/dsg/text/custom/seqment/Interval;

    invoke-direct {v1}, Lcom/muvee/dsg/text/custom/seqment/Interval;-><init>()V

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Interval;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Interval;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a:Lcom/muvee/dsg/text/custom/seqment/Interval;

    goto :goto_2

    .line 189
    :sswitch_4
    const-string v8, "interval"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :sswitch_5
    const-string/jumbo v8, "sourceZoom"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_3

    :sswitch_6
    const-string v8, "fade"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_3

    :sswitch_7
    const-string/jumbo v8, "target"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_3

    :sswitch_8
    const-string v8, "clip"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_9
    const-string/jumbo v8, "targetPan"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    .line 194
    :pswitch_5
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b:[F

    const-string/jumbo v8, "start"

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b:[F

    aget v9, v9, v2

    invoke-virtual {v0, v8, v9}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v8

    aput v8, v1, v2

    .line 195
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b:[F

    const-string v8, "end"

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->b:[F

    aget v9, v9, v4

    invoke-virtual {v0, v8, v9}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v0

    aput v0, v1, v4

    goto/16 :goto_2

    .line 198
    :pswitch_6
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    const-string/jumbo v8, "start"

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    aget v9, v9, v2

    invoke-virtual {v0, v8, v9}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v8

    aput v8, v1, v2

    .line 199
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    const-string v8, "end"

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->i:[F

    aget v9, v9, v4

    invoke-virtual {v0, v8, v9}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v0

    aput v0, v1, v4

    goto/16 :goto_2

    .line 203
    :pswitch_7
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v8, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v9, v1, v4

    .line 204
    iget-object v0, v0, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 205
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2

    :cond_4
    move v1, v3

    :goto_5
    packed-switch v1, :pswitch_data_2

    goto :goto_4

    .line 208
    :pswitch_8
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_4

    .line 205
    :sswitch_a
    const-string/jumbo v9, "start"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_5

    :sswitch_b
    const-string v9, "end"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_5

    .line 212
    :pswitch_9
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->d:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v4

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_4

    .line 219
    :pswitch_a
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v8, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v9, v1, v4

    .line 220
    iget-object v0, v0, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 221
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_3

    :cond_5
    move v1, v3

    :goto_7
    packed-switch v1, :pswitch_data_3

    goto :goto_6

    .line 224
    :pswitch_b
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_6

    .line 221
    :sswitch_c
    const-string/jumbo v9, "start"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_7

    :sswitch_d
    const-string v9, "end"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_7

    .line 228
    :pswitch_c
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->f:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v4

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_6

    .line 235
    :pswitch_d
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v8, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v9, v1, v4

    .line 236
    iget-object v0, v0, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 237
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_4

    :cond_6
    move v1, v3

    :goto_9
    packed-switch v1, :pswitch_data_4

    goto :goto_8

    .line 240
    :pswitch_e
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_8

    .line 237
    :sswitch_e
    const-string/jumbo v9, "start"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_9

    :sswitch_f
    const-string v9, "end"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_9

    .line 244
    :pswitch_f
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    iget-object v9, p0, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->e:[Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    aget-object v9, v9, v4

    invoke-static {v9}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->createCopy(Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectFEx;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_8

    .line 254
    :cond_7
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 255
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_5

    :cond_8
    move v1, v3

    :goto_b
    packed-switch v1, :pswitch_data_5

    goto :goto_a

    .line 257
    :pswitch_10
    invoke-direct {p0, v0, v2}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(Lcom/muvee/dsg/text/custom/xml/Node;I)V

    goto :goto_a

    .line 255
    :sswitch_10
    const-string/jumbo v6, "start"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_b

    :sswitch_11
    const-string v6, "end"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    goto :goto_b

    .line 260
    :pswitch_11
    invoke-direct {p0, v0, v4}, Lcom/muvee/dsg/text/custom/animation/DefaultAnimation;->a(Lcom/muvee/dsg/text/custom/xml/Node;I)V

    goto :goto_a

    .line 265
    :cond_9
    return-object p0

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_2
        -0x423c8572 -> :sswitch_0
        0x2fd67c -> :sswitch_1
        0x76486943 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 189
    :sswitch_data_1
    .sparse-switch
        -0x423c8572 -> :sswitch_5
        -0x34818e6f -> :sswitch_7
        -0x309ceeb4 -> :sswitch_9
        0x2ea350 -> :sswitch_8
        0x2fd67c -> :sswitch_6
        0x21ffe4c5 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_d
    .end packed-switch

    .line 205
    :sswitch_data_2
    .sparse-switch
        0x188db -> :sswitch_b
        0x68ac462 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 221
    :sswitch_data_3
    .sparse-switch
        0x188db -> :sswitch_d
        0x68ac462 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 237
    :sswitch_data_4
    .sparse-switch
        0x188db -> :sswitch_f
        0x68ac462 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 255
    :sswitch_data_5
    .sparse-switch
        0x188db -> :sswitch_11
        0x68ac462 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
