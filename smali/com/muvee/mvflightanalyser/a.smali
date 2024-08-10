.class public Lcom/muvee/mvflightanalyser/a;
.super Ljava/lang/Object;
.source "MVFlightAnalyserEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/mvflightanalyser/a$c;,
        Lcom/muvee/mvflightanalyser/a$b;,
        Lcom/muvee/mvflightanalyser/a$a;
    }
.end annotation


# static fields
.field private static A:F

.field private static B:F

.field private static C:F

.field private static D:F

.field private static a:Ljava/lang/String;

.field private static n:F

.field private static o:F

.field private static p:F

.field private static q:F

.field private static r:F

.field private static s:F

.field private static t:F

.field private static u:F

.field private static v:F

.field private static w:F

.field private static x:F

.field private static y:F

.field private static z:F


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/muvee/mvflightanalyser/data/a/b;

.field private e:Lcom/muvee/mvflightanalyser/data/a/a;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private i:D

.field private j:D

.field private k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

.field private l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41b80000    # 23.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    const-string v0, "MVFlightAnalyserEngine"

    sput-object v0, Lcom/muvee/mvflightanalyser/a;->a:Ljava/lang/String;

    .line 51
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/muvee/mvflightanalyser/a;->n:F

    .line 52
    sput v1, Lcom/muvee/mvflightanalyser/a;->o:F

    .line 54
    const v0, 0x3f333333    # 0.7f

    sput v0, Lcom/muvee/mvflightanalyser/a;->p:F

    .line 56
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/muvee/mvflightanalyser/a;->q:F

    .line 57
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/muvee/mvflightanalyser/a;->r:F

    .line 59
    sput v1, Lcom/muvee/mvflightanalyser/a;->s:F

    .line 60
    sput v1, Lcom/muvee/mvflightanalyser/a;->t:F

    .line 62
    sput v2, Lcom/muvee/mvflightanalyser/a;->u:F

    .line 63
    sput v2, Lcom/muvee/mvflightanalyser/a;->v:F

    .line 65
    const/high16 v0, -0x3ed00000    # -11.0f

    sput v0, Lcom/muvee/mvflightanalyser/a;->w:F

    .line 67
    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcom/muvee/mvflightanalyser/a;->x:F

    .line 68
    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Lcom/muvee/mvflightanalyser/a;->y:F

    .line 69
    const/high16 v0, 0x42340000    # 45.0f

    sput v0, Lcom/muvee/mvflightanalyser/a;->z:F

    .line 70
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/muvee/mvflightanalyser/a;->A:F

    .line 71
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/muvee/mvflightanalyser/a;->B:F

    .line 73
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/muvee/mvflightanalyser/a;->C:F

    .line 74
    sput v1, Lcom/muvee/mvflightanalyser/a;->D:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/c;",
            ">;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    .line 1289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1292
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 1293
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 1297
    const-string/jumbo v3, "yaw"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1298
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    iget v6, v1, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    sub-float/2addr v3, v6

    .line 1301
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 1302
    cmpl-float v6, v3, v4

    if-lez v6, :cond_1

    .line 1303
    sub-float/2addr v3, v8

    .line 1311
    :cond_0
    :goto_1
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    iget-wide v0, v1, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    sub-double v0, v6, v0

    double-to-float v0, v0

    .line 1312
    div-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1304
    :cond_1
    cmpg-float v6, v3, v4

    if-gez v6, :cond_0

    .line 1305
    add-float/2addr v3, v8

    goto :goto_1

    .line 1307
    :cond_2
    const-string v3, "gimbalPitch"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1308
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    iget v6, v1, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    sub-float/2addr v3, v6

    goto :goto_1

    .line 1316
    :cond_3
    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/a;->c(Ljava/util/ArrayList;)F

    move-result v0

    .line 1317
    invoke-direct {p0, v5}, Lcom/muvee/mvflightanalyser/a;->e(Ljava/util/ArrayList;)F

    move-result v1

    .line 1320
    div-float/2addr v1, v0

    .line 1322
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 1324
    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1327
    :cond_4
    return v0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method private a(Lcom/muvee/mvflightanalyser/data/structures/c;)Lcom/muvee/mvflightanalyser/data/structures/d;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 611
    new-instance v0, Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/data/structures/d;-><init>()V

    .line 613
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/muvee/mvflightanalyser/a;->q:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 614
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 615
    iput v5, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    .line 622
    :cond_0
    :goto_0
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/muvee/mvflightanalyser/a;->q:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 623
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    .line 624
    iput v5, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    .line 631
    :cond_1
    :goto_1
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/muvee/mvflightanalyser/a;->q:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 632
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    .line 633
    iput v5, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    .line 640
    :cond_2
    :goto_2
    return-object v0

    .line 616
    :cond_3
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 617
    iput v6, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    goto :goto_0

    .line 619
    :cond_4
    iput v4, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    goto :goto_0

    .line 625
    :cond_5
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 626
    iput v6, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    goto :goto_1

    .line 628
    :cond_6
    iput v4, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    goto :goto_1

    .line 634
    :cond_7
    iget v1, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 635
    iput v6, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    goto :goto_2

    .line 637
    :cond_8
    iput v4, v0, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    goto :goto_2
.end method

.method private a(Lcom/muvee/mvflightanalyser/data/structures/b;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muvee/mvflightanalyser/data/structures/b;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 645
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 648
    new-instance v3, Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-direct {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;-><init>()V

    .line 651
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 652
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iput-object v4, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    .line 653
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    .line 655
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 661
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 663
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    .line 665
    iget-wide v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v8

    sub-double/2addr v6, v8

    sget v5, Lcom/muvee/mvflightanalyser/a;->p:F

    float-to-double v8, v5

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_19

    .line 668
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    if-lez v5, :cond_1

    .line 669
    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    iget v6, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    sub-float/2addr v5, v6

    iget v6, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    div-float/2addr v5, v6

    .line 670
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->r:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    .line 671
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8

    .line 672
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 673
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->b:I

    .line 687
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    if-lez v5, :cond_2

    .line 688
    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    iget v6, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    sub-float/2addr v5, v6

    iget v6, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    div-float/2addr v5, v6

    .line 689
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->r:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    .line 690
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_c

    .line 691
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 692
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->d:I

    .line 706
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    if-lez v5, :cond_3

    .line 707
    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    iget v6, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    sub-float/2addr v5, v6

    iget v6, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    div-float/2addr v5, v6

    .line 708
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->r:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_12

    .line 709
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_10

    .line 710
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 711
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->f:I

    .line 726
    :cond_3
    :goto_3
    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    iget v6, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    sub-float/2addr v5, v6

    .line 729
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 730
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_13

    .line 731
    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v5, v6

    .line 736
    :cond_4
    :goto_4
    sget v6, Lcom/muvee/mvflightanalyser/a;->p:F

    div-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->s:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_15

    .line 737
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_14

    .line 738
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->g:I

    .line 746
    :cond_5
    :goto_5
    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    iget v4, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    sub-float v4, v5, v4

    .line 748
    sget v5, Lcom/muvee/mvflightanalyser/a;->p:F

    div-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/muvee/mvflightanalyser/a;->t:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_17

    .line 749
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_16

    .line 750
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v5, 0x2

    iput v5, v4, Lcom/muvee/mvflightanalyser/data/structures/d;->h:I

    .line 758
    :cond_6
    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 759
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 760
    invoke-virtual {v3, v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_7

    .line 674
    :cond_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 675
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->b:I

    goto/16 :goto_1

    .line 676
    :cond_8
    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 677
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 678
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->b:I

    goto/16 :goto_1

    .line 679
    :cond_9
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 680
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->b:I

    goto/16 :goto_1

    .line 683
    :cond_a
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->b:I

    goto/16 :goto_1

    .line 693
    :cond_b
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 694
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->d:I

    goto/16 :goto_2

    .line 695
    :cond_c
    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 696
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 697
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->d:I

    goto/16 :goto_2

    .line 698
    :cond_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 699
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->d:I

    goto/16 :goto_2

    .line 702
    :cond_e
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->d:I

    goto/16 :goto_2

    .line 712
    :cond_f
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 713
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->f:I

    goto/16 :goto_3

    .line 714
    :cond_10
    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 715
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 716
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->f:I

    goto/16 :goto_3

    .line 717
    :cond_11
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 718
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x2

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->f:I

    goto/16 :goto_3

    .line 721
    :cond_12
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->f:I

    goto/16 :goto_3

    .line 732
    :cond_13
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_4

    .line 733
    const/high16 v6, 0x43b40000    # 360.0f

    add-float/2addr v5, v6

    goto/16 :goto_4

    .line 739
    :cond_14
    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 740
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x1

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->g:I

    goto/16 :goto_5

    .line 742
    :cond_15
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v6, 0x0

    iput v6, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->g:I

    goto/16 :goto_5

    .line 751
    :cond_16
    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 752
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/mvflightanalyser/data/structures/d;->h:I

    goto/16 :goto_6

    .line 754
    :cond_17
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    const/4 v5, 0x0

    iput v5, v4, Lcom/muvee/mvflightanalyser/data/structures/d;->h:I

    goto/16 :goto_6

    .line 764
    :cond_18
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 765
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto/16 :goto_0

    .line 768
    :cond_19
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 777
    :cond_1a
    const/4 v5, 0x0

    .line 778
    const/4 v6, 0x0

    .line 779
    const/4 v7, 0x0

    .line 780
    const/4 v9, 0x0

    .line 781
    const/4 v10, 0x0

    .line 783
    iget-wide v14, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v16

    sub-double v14, v14, v16

    sget v8, Lcom/muvee/mvflightanalyser/a;->p:F

    float-to-double v0, v8

    move-wide/from16 v16, v0

    cmpl-double v8, v14, v16

    if-ltz v8, :cond_33

    .line 786
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    if-lez v8, :cond_1b

    .line 787
    iget v8, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    iget v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    sub-float/2addr v8, v14

    iget v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    div-float/2addr v8, v14

    .line 788
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sget v15, Lcom/muvee/mvflightanalyser/a;->r:F

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_22

    .line 789
    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-lez v14, :cond_20

    .line 790
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_1f

    .line 791
    const/4 v5, 0x2

    .line 805
    :cond_1b
    :goto_8
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    if-lez v8, :cond_1c

    .line 806
    iget v8, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    iget v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    sub-float/2addr v8, v14

    iget v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    div-float/2addr v8, v14

    .line 807
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sget v15, Lcom/muvee/mvflightanalyser/a;->r:F

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_26

    .line 808
    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-lez v14, :cond_24

    .line 809
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_23

    .line 810
    const/4 v6, 0x2

    .line 824
    :cond_1c
    :goto_9
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    if-lez v8, :cond_1d

    .line 825
    iget v8, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    iget v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    sub-float/2addr v8, v14

    iget v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    div-float/2addr v8, v14

    .line 826
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sget v15, Lcom/muvee/mvflightanalyser/a;->r:F

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2a

    .line 827
    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-lez v14, :cond_28

    .line 828
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_27

    .line 829
    const/4 v7, 0x2

    .line 844
    :cond_1d
    :goto_a
    iget v8, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    iget v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    sub-float/2addr v8, v14

    .line 847
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x43340000    # 180.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_1e

    .line 848
    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-lez v14, :cond_2b

    .line 849
    const/high16 v14, 0x43b40000    # 360.0f

    sub-float/2addr v8, v14

    .line 854
    :cond_1e
    :goto_b
    sget v14, Lcom/muvee/mvflightanalyser/a;->p:F

    div-float v14, v8, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sget v15, Lcom/muvee/mvflightanalyser/a;->s:F

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2d

    .line 855
    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-lez v14, :cond_2c

    .line 856
    const/4 v8, 0x2

    .line 864
    :goto_c
    iget v9, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    iget v4, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    sub-float v4, v9, v4

    .line 866
    sget v9, Lcom/muvee/mvflightanalyser/a;->p:F

    div-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget v14, Lcom/muvee/mvflightanalyser/a;->t:F

    cmpl-float v9, v9, v14

    if-ltz v9, :cond_2f

    .line 867
    const/4 v9, 0x0

    cmpl-float v9, v4, v9

    if-lez v9, :cond_2e

    .line 868
    const/4 v4, 0x2

    .line 876
    :goto_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v10, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v10, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    .line 877
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v10, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    .line 878
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 879
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 881
    iget-object v10, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v10}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 883
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 884
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 885
    invoke-virtual {v3, v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_e

    .line 792
    :cond_1f
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1b

    .line 793
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 794
    :cond_20
    const/4 v14, 0x0

    cmpg-float v8, v8, v14

    if-gez v8, :cond_1b

    .line 795
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_21

    .line 796
    const/4 v5, 0x1

    goto/16 :goto_8

    .line 797
    :cond_21
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1b

    .line 798
    const/4 v5, 0x2

    goto/16 :goto_8

    .line 801
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 811
    :cond_23
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1c

    .line 812
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 813
    :cond_24
    const/4 v14, 0x0

    cmpg-float v8, v8, v14

    if-gez v8, :cond_1c

    .line 814
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_25

    .line 815
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 816
    :cond_25
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1c

    .line 817
    const/4 v6, 0x2

    goto/16 :goto_9

    .line 820
    :cond_26
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 830
    :cond_27
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1d

    .line 831
    const/4 v7, 0x1

    goto/16 :goto_a

    .line 832
    :cond_28
    const/4 v14, 0x0

    cmpg-float v8, v8, v14

    if-gez v8, :cond_1d

    .line 833
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_29

    .line 834
    const/4 v7, 0x1

    goto/16 :goto_a

    .line 835
    :cond_29
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v8, v8, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_1d

    .line 836
    const/4 v7, 0x2

    goto/16 :goto_a

    .line 839
    :cond_2a
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 850
    :cond_2b
    const/4 v14, 0x0

    cmpg-float v14, v8, v14

    if-gez v14, :cond_1e

    .line 851
    const/high16 v14, 0x43b40000    # 360.0f

    add-float/2addr v8, v14

    goto/16 :goto_b

    .line 857
    :cond_2c
    const/4 v14, 0x0

    cmpg-float v8, v8, v14

    if-gez v8, :cond_37

    .line 858
    const/4 v8, 0x1

    goto/16 :goto_c

    .line 860
    :cond_2d
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 869
    :cond_2e
    const/4 v9, 0x0

    cmpg-float v4, v4, v9

    if-gez v4, :cond_36

    .line 870
    const/4 v4, 0x1

    goto/16 :goto_d

    .line 872
    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 889
    :cond_30
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 890
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto/16 :goto_0

    .line 893
    :cond_31
    new-instance v9, Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-direct {v9}, Lcom/muvee/mvflightanalyser/data/structures/b;-><init>()V

    .line 895
    new-instance v10, Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-direct {v10}, Lcom/muvee/mvflightanalyser/data/structures/d;-><init>()V

    .line 896
    iget-object v14, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v14, v14, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    iput v14, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    .line 897
    iput v5, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->b:I

    .line 898
    iget-object v5, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v5, v5, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    iput v5, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    .line 899
    iput v6, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->d:I

    .line 900
    iget-object v3, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v3, v3, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    iput v3, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    .line 901
    iput v7, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->f:I

    .line 902
    iput v8, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->g:I

    .line 903
    iput v4, v10, Lcom/muvee/mvflightanalyser/data/structures/d;->h:I

    .line 905
    iput-object v10, v9, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    .line 907
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_32

    .line 908
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 909
    invoke-virtual {v9, v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_f

    .line 913
    :cond_32
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 914
    invoke-virtual {v9, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    .line 917
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 921
    :cond_33
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 926
    :cond_34
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 927
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 928
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 929
    invoke-virtual {v2, v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_10

    .line 933
    :cond_35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    :cond_36
    move v4, v10

    goto/16 :goto_d

    :cond_37
    move v8, v9

    goto/16 :goto_c
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/c;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->f:Ljava/util/ArrayList;

    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->b:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget v4, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->e:F

    mul-float/2addr v4, v5

    iget v5, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->f:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 214
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/a;->g:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v4, Landroid/location/Location;

    const-string v5, ""

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 218
    iget-wide v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->c:D

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 219
    iget-wide v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->d:D

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/a;->f:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvflightanalyser/a;->g:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 232
    new-instance v3, Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-direct {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;-><init>()V

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/a;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)Lcom/muvee/mvflightanalyser/data/structures/d;

    move-result-object v6

    iput-object v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    .line 234
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    .line 235
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->m:I

    iput v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    .line 236
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->n:I

    iput v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->d:I

    .line 237
    iget v2, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->o:I

    iput v2, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    .line 239
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 251
    iget v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->d:I

    if-lez v6, :cond_2

    .line 253
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->m:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->n:I

    if-lez v6, :cond_5

    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->n:I

    iget v7, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->d:I

    if-ne v6, v7, :cond_5

    .line 255
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_1

    .line 258
    :cond_2
    iget v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    if-eqz v6, :cond_3

    iget v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    iget v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 260
    :cond_3
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->o:I

    iget v7, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    if-ne v6, v7, :cond_5

    .line 261
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_1

    .line 266
    :cond_4
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->n:I

    if-nez v6, :cond_5

    .line 267
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/a;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)Lcom/muvee/mvflightanalyser/data/structures/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v7}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 269
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto/16 :goto_1

    .line 275
    :cond_5
    new-instance v3, Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-direct {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;-><init>()V

    .line 276
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/a;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)Lcom/muvee/mvflightanalyser/data/structures/d;

    move-result-object v6

    iput-object v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    .line 277
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    .line 278
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->m:I

    iput v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    .line 279
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->n:I

    iput v6, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->d:I

    .line 280
    iget v2, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->o:I

    iput v2, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    .line 282
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 286
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 606
    :goto_2
    return-object v2

    .line 291
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 296
    iget v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->d:I

    if-lez v7, :cond_8

    .line 297
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 298
    :cond_8
    iget v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    if-eqz v7, :cond_9

    iget v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    iget v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    .line 299
    :cond_9
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 301
    :cond_a
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 306
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 309
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_c

    .line 310
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 315
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/muvee/mvflightanalyser/a;->a(Lcom/muvee/mvflightanalyser/data/structures/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 326
    :cond_e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 328
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_10

    .line 329
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 331
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 334
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v12

    sub-double/2addr v10, v12

    sget v7, Lcom/muvee/mvflightanalyser/a;->C:F

    float-to-double v12, v7

    cmpl-double v7, v10, v12

    if-lez v7, :cond_11

    .line 335
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 340
    :cond_11
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v7

    const-string v9, "gimbalPitch"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/muvee/mvflightanalyser/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)F

    move-result v7

    float-to-double v10, v7

    .line 341
    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->h:I

    if-eqz v7, :cond_12

    sget v7, Lcom/muvee/mvflightanalyser/a;->v:F

    float-to-double v12, v7

    cmpl-double v7, v10, v12

    if-ltz v7, :cond_12

    .line 343
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 347
    :cond_12
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v7

    const-string/jumbo v9, "yaw"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/muvee/mvflightanalyser/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)F

    move-result v7

    float-to-double v10, v7

    .line 348
    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->g:I

    if-eqz v7, :cond_13

    sget v7, Lcom/muvee/mvflightanalyser/a;->u:F

    float-to-double v12, v7

    cmpl-double v7, v10, v12

    if-ltz v7, :cond_13

    .line 350
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 355
    :cond_13
    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    if-nez v7, :cond_14

    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    if-eqz v7, :cond_15

    .line 357
    :cond_14
    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    iget-object v9, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v9, v9, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    if-ne v7, v9, :cond_15

    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    iget-object v9, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v9, v9, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    if-ne v7, v9, :cond_15

    .line 359
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 360
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_7

    .line 367
    :cond_15
    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    if-nez v7, :cond_16

    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    if-nez v7, :cond_16

    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    if-eqz v7, :cond_16

    .line 369
    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    iget-object v9, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v9, v9, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    if-ne v7, v9, :cond_16

    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    iget-object v9, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v9, v9, Lcom/muvee/mvflightanalyser/data/structures/d;->c:I

    if-ne v7, v9, :cond_16

    iget-object v7, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v7, v7, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    iget-object v9, v3, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v9, v9, Lcom/muvee/mvflightanalyser/data/structures/d;->e:I

    if-ne v7, v9, :cond_16

    .line 372
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 373
    invoke-virtual {v3, v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_8

    .line 380
    :cond_16
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 385
    :cond_17
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_2

    .line 390
    :cond_18
    if-eqz p3, :cond_1a

    .line 392
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 393
    iget v4, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_19

    .line 395
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 397
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v10

    iput-wide v10, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v10

    iget-wide v12, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    sub-double/2addr v10, v12

    iput-wide v10, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v10

    iget-wide v2, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    sub-double v2, v10, v2

    iput-wide v2, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 411
    :cond_1a
    if-eqz p4, :cond_1c

    .line 413
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 414
    iget v4, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->e:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1b

    .line 416
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 418
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v6

    iget-wide v10, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    sub-double/2addr v6, v10

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v6

    iget-wide v2, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    sub-double v2, v6, v2

    iput-wide v2, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 439
    :cond_1c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 442
    sget v2, Lcom/muvee/mvflightanalyser/a;->n:F

    .line 444
    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_42

    .line 445
    :cond_1d
    sget v2, Lcom/muvee/mvflightanalyser/a;->o:F

    move v4, v2

    .line 449
    :goto_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1e
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 452
    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v3

    const-string v9, "00000000"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v12

    sub-double/2addr v10, v12

    float-to-double v12, v4

    cmpg-double v3, v10, v12

    if-gez v3, :cond_20

    .line 453
    :cond_1f
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 458
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_22

    :cond_21
    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    .line 459
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v3

    const-string v9, "00000010"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v3

    const-string v9, "00000020"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    .line 460
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v3

    const-string v9, "00000001"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v3

    const-string v9, "00000002"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 461
    :cond_23
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 466
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_26

    :cond_25
    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v3, v3, Lcom/muvee/mvflightanalyser/data/structures/d;->g:I

    if-lez v3, :cond_26

    .line 467
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v9, "yaw"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/muvee/mvflightanalyser/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)F

    move-result v3

    sget v9, Lcom/muvee/mvflightanalyser/a;->u:F

    cmpl-float v3, v3, v9

    if-ltz v3, :cond_26

    .line 468
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 474
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_28

    :cond_27
    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v3, v3, Lcom/muvee/mvflightanalyser/data/structures/d;->h:I

    if-lez v3, :cond_28

    .line 475
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    const-string v9, "gimbalPitch"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/muvee/mvflightanalyser/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)F

    move-result v3

    sget v9, Lcom/muvee/mvflightanalyser/a;->v:F

    cmpl-float v3, v3, v9

    if-ltz v3, :cond_28

    .line 476
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 482
    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    if-nez v3, :cond_1e

    iget-object v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    iget v3, v3, Lcom/muvee/mvflightanalyser/data/structures/d;->a:I

    if-lez v3, :cond_1e

    .line 483
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_29
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 484
    iget v10, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->h:F

    iget v3, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    sub-float v3, v10, v3

    sget v10, Lcom/muvee/mvflightanalyser/a;->w:F

    cmpg-float v3, v3, v10

    if-gez v3, :cond_29

    .line 485
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 493
    :cond_2a
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 494
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 495
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 500
    :cond_2c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 501
    :cond_2d
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/muvee/mvflightanalyser/a;->b(Ljava/util/ArrayList;)V

    .line 506
    :cond_2e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    if-nez v2, :cond_2f

    .line 507
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/muvee/mvflightanalyser/a;->a(Ljava/util/ArrayList;)V

    .line 510
    :cond_2f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_30

    .line 511
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 512
    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->a:Ljava/lang/String;

    goto :goto_c

    .line 517
    :cond_30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3d

    .line 518
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 519
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_31
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 521
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;-><init>()V

    .line 522
    iget v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    iput v3, v4, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    .line 523
    iget v3, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    iput v3, v4, Lcom/muvee/mvflightanalyser/data/structures/b;->d:I

    .line 524
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    invoke-virtual {v4, v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    .line 526
    const/4 v3, 0x1

    move v5, v3

    move-object v6, v4

    :goto_e
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_39

    .line 528
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 529
    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 532
    iget v7, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    iget v11, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    sub-float/2addr v7, v11

    .line 535
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x43340000    # 180.0f

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_32

    .line 536
    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-lez v11, :cond_36

    .line 537
    const/high16 v11, 0x43b40000    # 360.0f

    sub-float/2addr v7, v11

    .line 543
    :cond_32
    :goto_f
    iget v11, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    iget v12, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    sub-float/2addr v11, v12

    .line 544
    iget-wide v12, v3, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    iget-wide v14, v4, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    sub-double/2addr v12, v14

    .line 547
    float-to-double v14, v7

    div-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    sget v4, Lcom/muvee/mvflightanalyser/a;->u:F

    float-to-double v0, v4

    move-wide/from16 v16, v0

    cmpl-double v4, v14, v16

    if-gez v4, :cond_33

    float-to-double v14, v11

    div-double v12, v14, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sget v4, Lcom/muvee/mvflightanalyser/a;->v:F

    float-to-double v14, v4

    cmpl-double v4, v12, v14

    if-ltz v4, :cond_38

    .line 549
    :cond_33
    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v12

    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_34

    move-object/from16 v0, p0

    iget v4, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_37

    :cond_34
    sget v4, Lcom/muvee/mvflightanalyser/a;->o:F

    :goto_10
    float-to-double v14, v4

    cmpl-double v4, v12, v14

    if-ltz v4, :cond_35

    .line 550
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_35
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;-><init>()V

    .line 555
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    iput v6, v4, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    .line 556
    iget v6, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->c:I

    iput v6, v4, Lcom/muvee/mvflightanalyser/data/structures/b;->d:I

    .line 557
    invoke-virtual {v4, v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    .line 526
    :goto_11
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v6, v4

    goto/16 :goto_e

    .line 538
    :cond_36
    const/4 v11, 0x0

    cmpg-float v11, v7, v11

    if-gez v11, :cond_32

    .line 539
    const/high16 v11, 0x43b40000    # 360.0f

    add-float/2addr v7, v11

    goto :goto_f

    .line 549
    :cond_37
    sget v4, Lcom/muvee/mvflightanalyser/a;->n:F

    goto :goto_10

    .line 560
    :cond_38
    invoke-virtual {v6, v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    move-object v4, v6

    goto :goto_11

    .line 565
    :cond_39
    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v2

    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v4

    sub-double v4, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/muvee/mvflightanalyser/a;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    :cond_3a
    sget v2, Lcom/muvee/mvflightanalyser/a;->o:F

    :goto_12
    float-to-double v2, v2

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_31

    .line 566
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 565
    :cond_3b
    sget v2, Lcom/muvee/mvflightanalyser/a;->n:F

    goto :goto_12

    .line 571
    :cond_3c
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 573
    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/muvee/mvflightanalyser/data/structures/b;->a:Ljava/lang/String;

    .line 576
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 581
    :cond_3d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3e

    .line 582
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_2

    .line 586
    :cond_3e
    new-instance v2, Lcom/muvee/mvflightanalyser/a$b;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/muvee/mvflightanalyser/a$b;-><init>(Lcom/muvee/mvflightanalyser/a;)V

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 589
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 590
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    const/4 v2, 0x1

    move v4, v2

    :goto_14
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_41

    .line 592
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 593
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 595
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v10

    sub-double/2addr v6, v10

    sget v9, Lcom/muvee/mvflightanalyser/a;->D:F

    float-to-double v10, v9

    cmpg-double v6, v6, v10

    if-gez v6, :cond_3f

    .line 597
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 598
    invoke-virtual {v2, v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Lcom/muvee/mvflightanalyser/data/structures/c;)V

    goto :goto_15

    .line 602
    :cond_3f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_40
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_14

    :cond_41
    move-object v2, v5

    .line 606
    goto/16 :goto_2

    :cond_42
    move v4, v2

    goto/16 :goto_9
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 940
    const/4 v9, 0x0

    .line 943
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 945
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 947
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 949
    iget-wide v4, v1, Lcom/muvee/mvflightanalyser/data/structures/c;->d:D

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x1f4

    if-ne v3, v4, :cond_0

    iget-wide v4, v1, Lcom/muvee/mvflightanalyser/data/structures/c;->c:D

    double-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x1f4

    if-ne v1, v3, :cond_0

    .line 950
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 954
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 955
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 998
    :cond_2
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 1002
    const/4 v0, 0x1

    :goto_2
    move v9, v0

    .line 959
    :cond_3
    if-nez v9, :cond_8

    .line 960
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 962
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 963
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 968
    invoke-virtual {v8}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v8}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 971
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 972
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 974
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 975
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 976
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 980
    :cond_5
    invoke-direct {p0, v1}, Lcom/muvee/mvflightanalyser/a;->d(Ljava/util/ArrayList;)D

    move-result-wide v0

    .line 981
    invoke-direct {p0, v2}, Lcom/muvee/mvflightanalyser/a;->d(Ljava/util/ArrayList;)D

    move-result-wide v2

    .line 983
    iget-wide v4, v6, Lcom/muvee/mvflightanalyser/data/structures/c;->c:D

    iget-wide v6, v6, Lcom/muvee/mvflightanalyser/data/structures/c;->d:D

    invoke-static/range {v0 .. v7}, Lcom/muvee/mvflightanalyser/a/a;->a(DDDD)D

    move-result-wide v0

    .line 985
    sget v2, Lcom/muvee/mvflightanalyser/a;->x:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 986
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 991
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 992
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 993
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1007
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1008
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_10

    .line 1011
    new-instance v1, Lcom/muvee/mvflightanalyser/a$a;

    invoke-direct {v1, p0}, Lcom/muvee/mvflightanalyser/a$a;-><init>(Lcom/muvee/mvflightanalyser/a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1012
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1015
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1017
    const/4 v2, 0x1

    move-object v3, v1

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1018
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1019
    const/4 v5, 0x0

    .line 1021
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v4

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v7

    sub-float/2addr v4, v7

    sget v7, Lcom/muvee/mvflightanalyser/a;->y:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_c

    .line 1022
    const/4 v4, 0x1

    .line 1047
    :goto_8
    if-eqz v4, :cond_b

    .line 1049
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_a

    .line 1054
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v3, v1

    .line 1017
    :cond_b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 1025
    :cond_c
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v4

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v7

    sub-float/2addr v4, v7

    .line 1028
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_d

    .line 1029
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-lez v7, :cond_e

    .line 1030
    const/high16 v7, 0x43b40000    # 360.0f

    sub-float/2addr v4, v7

    .line 1035
    :cond_d
    :goto_9
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_f

    .line 1036
    const/4 v4, 0x1

    goto :goto_8

    .line 1031
    :cond_e
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_d

    .line 1032
    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v4, v7

    goto :goto_9

    .line 1039
    :cond_f
    invoke-virtual {v3}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v4

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v7

    sub-float/2addr v4, v7

    .line 1041
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v7, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_12

    .line 1042
    const/4 v4, 0x1

    goto :goto_8

    .line 1059
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1064
    :cond_11
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1067
    new-instance v0, Lcom/muvee/mvflightanalyser/a$b;

    invoke-direct {v0, p0}, Lcom/muvee/mvflightanalyser/a$b;-><init>(Lcom/muvee/mvflightanalyser/a;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1068
    return-void

    :cond_12
    move v4, v5

    goto :goto_8

    :cond_13
    move v0, v9

    goto/16 :goto_2
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 1072
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    move-object v1, v0

    .line 1080
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 1081
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1084
    iget-object v5, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v5}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1086
    iget-object v5, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v5}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1088
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v5

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v1

    sub-float v1, v5, v1

    .line 1091
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 1092
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1

    .line 1093
    const/high16 v5, 0x43b40000    # 360.0f

    sub-float/2addr v1, v5

    .line 1098
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v5, Lcom/muvee/mvflightanalyser/a;->A:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_2

    .line 1100
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1094
    :cond_1
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    .line 1095
    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v1, v5

    goto :goto_1

    .line 1104
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1110
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1115
    :cond_4
    iget-object v5, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v5}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1117
    iget-object v5, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v5}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v6}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1119
    iget-object v1, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {v1, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v5}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1121
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1122
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1125
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1131
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1136
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1145
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1147
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_19

    .line 1149
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1152
    iget-object v2, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v3

    move-object v4, v1

    .line 1155
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1156
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1159
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v8

    sub-double/2addr v6, v8

    sget v8, Lcom/muvee/mvflightanalyser/a;->B:F

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_b

    .line 1160
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1155
    :cond_a
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1164
    :cond_b
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 1165
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1166
    goto :goto_5

    .line 1169
    :cond_c
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->y:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 1170
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1171
    goto :goto_5

    .line 1174
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_a

    .line 1175
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1182
    :cond_e
    iget-object v2, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1184
    iget-object v2, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    .line 1185
    invoke-virtual {v2}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/muvee/mvflightanalyser/data/structures/b;->b:Lcom/muvee/mvflightanalyser/data/structures/d;

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/d;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v3

    move-object v4, v1

    .line 1187
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1191
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v8

    sub-double/2addr v6, v8

    sget v8, Lcom/muvee/mvflightanalyser/a;->B:F

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_10

    .line 1192
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1187
    :cond_f
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 1196
    :cond_10
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_11

    .line 1197
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1198
    goto :goto_7

    .line 1201
    :cond_11
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->y:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_12

    .line 1202
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1203
    goto :goto_7

    .line 1206
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_f

    .line 1207
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    move v2, v3

    move-object v4, v1

    .line 1215
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1216
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1219
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_15

    .line 1220
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1215
    :cond_14
    :goto_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    .line 1224
    :cond_15
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v8

    sub-double/2addr v6, v8

    sget v8, Lcom/muvee/mvflightanalyser/a;->B:F

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_16

    .line 1225
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1226
    goto :goto_9

    .line 1229
    :cond_16
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_17

    .line 1230
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1231
    goto :goto_9

    .line 1234
    :cond_17
    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v6

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/muvee/mvflightanalyser/a;->y:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_18

    .line 1235
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .line 1236
    goto :goto_9

    .line 1239
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_14

    .line 1240
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1251
    :cond_19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 1253
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1254
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 1257
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v8

    sub-double/2addr v6, v8

    sget v2, Lcom/muvee/mvflightanalyser/a;->B:F

    float-to-double v8, v2

    cmpl-double v2, v6, v8

    if-lez v2, :cond_1a

    .line 1258
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1261
    :cond_1a
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v2

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->e()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v4, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1b

    .line 1262
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1265
    :cond_1b
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v2

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->d()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v4, Lcom/muvee/mvflightanalyser/a;->z:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1c

    .line 1266
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1269
    :cond_1c
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v2

    invoke-virtual {v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/muvee/mvflightanalyser/a;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 1270
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1277
    :cond_1d
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1281
    :cond_1e
    return-void
.end method

.method private c(Ljava/util/ArrayList;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 1333
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1334
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1335
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1336
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v0

    .line 1337
    goto :goto_0

    .line 1338
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1340
    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1
.end method

.method private d(Ljava/util/ArrayList;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 1344
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1345
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1346
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 1347
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, v0

    .line 1348
    goto :goto_0

    .line 1349
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 1351
    :goto_1
    return-wide v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1
.end method

.method private e(Ljava/util/ArrayList;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 1356
    invoke-direct {p0, p1}, Lcom/muvee/mvflightanalyser/a;->c(Ljava/util/ArrayList;)F

    move-result v2

    .line 1357
    const/4 v0, 0x0

    .line 1358
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1359
    sub-float v4, v2, v0

    sub-float v0, v2, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 1360
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;I)Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 79
    sget-object v1, Lcom/muvee/mvflightanalyser/a;->a:Ljava/lang/String;

    const-string v3, "MVFlightAnalyser::processDataFilePathArray:: ::logBuild RELEASE_TIMESTAMP: 20180125_1043AM"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    sget-object v1, Lcom/muvee/mvflightanalyser/a;->a:Ljava/lang/String;

    const-string v2, "No url assets to begin flightAnalyser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-object v0

    .line 88
    :cond_1
    iput-object v0, p0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 89
    iput-object v0, p0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 91
    iput-object p2, p0, Lcom/muvee/mvflightanalyser/a;->b:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/muvee/mvflightanalyser/a;->c:Ljava/util/ArrayList;

    .line 93
    iput p3, p0, Lcom/muvee/mvflightanalyser/a;->m:I

    .line 96
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->d:Lcom/muvee/mvflightanalyser/data/a/b;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/data/a/b;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/a;->d:Lcom/muvee/mvflightanalyser/data/a/b;

    .line 100
    :cond_2
    new-instance v0, Lcom/muvee/mvflightanalyser/data/a/a;

    iget-object v1, p0, Lcom/muvee/mvflightanalyser/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/muvee/mvflightanalyser/data/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/a;->e:Lcom/muvee/mvflightanalyser/data/a/a;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/a;->f:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/a;->g:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/a;->h:Ljava/util/ArrayList;

    .line 108
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 111
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 114
    iget-object v3, p0, Lcom/muvee/mvflightanalyser/a;->d:Lcom/muvee/mvflightanalyser/data/a/b;

    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/muvee/mvflightanalyser/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lcom/muvee/mvflightanalyser/data/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    iget-object v3, p0, Lcom/muvee/mvflightanalyser/a;->e:Lcom/muvee/mvflightanalyser/data/a/a;

    invoke-virtual {v3, v0}, Lcom/muvee/mvflightanalyser/data/a/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 121
    if-nez v1, :cond_9

    .line 123
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 124
    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    iput-wide v10, p0, Lcom/muvee/mvflightanalyser/a;->i:D

    move v3, v4

    .line 128
    :goto_2
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_8

    .line 130
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 131
    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    iput-wide v10, p0, Lcom/muvee/mvflightanalyser/a;->j:D

    move v5, v4

    .line 136
    :goto_3
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 137
    iget-object v9, p0, Lcom/muvee/mvflightanalyser/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v8, v0, v3, v5}, Lcom/muvee/mvflightanalyser/a;->a(Ljava/util/ArrayList;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 144
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/b;

    .line 147
    new-instance v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-direct {v5}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;-><init>()V

    .line 148
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v8

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 149
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->b()D

    move-result-wide v8

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 150
    invoke-virtual {v0}, Lcom/muvee/mvflightanalyser/data/structures/b;->a()D

    move-result-wide v8

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    .line 153
    iget-object v7, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->a:Ljava/lang/String;

    iput-object v7, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    .line 156
    iput-boolean v2, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    .line 157
    iput-boolean v2, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    .line 160
    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 161
    iget-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v10, v8

    iput-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 162
    iget-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    sub-double v8, v10, v8

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 164
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->k:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->l:Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_5
    if-eqz v4, :cond_6

    .line 182
    new-instance v0, Lcom/muvee/mvflightanalyser/a$c;

    invoke-direct {v0, p0}, Lcom/muvee/mvflightanalyser/a$c;-><init>(Lcom/muvee/mvflightanalyser/a;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/muvee/mvflightanalyser/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 187
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/a;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/muvee/mvflightanalyser/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 190
    new-instance v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    invoke-direct {v0}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;-><init>()V

    .line 192
    iget-object v4, p0, Lcom/muvee/mvflightanalyser/a;->d:Lcom/muvee/mvflightanalyser/data/a/b;

    invoke-virtual {v4}, Lcom/muvee/mvflightanalyser/data/a/b;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->droneType:Ljava/lang/String;

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->timingsArray:Ljava/util/ArrayList;

    .line 194
    iget-wide v4, p0, Lcom/muvee/mvflightanalyser/a;->i:D

    iput-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataStartTime:D

    .line 195
    iget-wide v4, p0, Lcom/muvee/mvflightanalyser/a;->j:D

    iget-wide v6, p0, Lcom/muvee/mvflightanalyser/a;->i:D

    sub-double/2addr v4, v6

    iput-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->dataDuration:D

    .line 196
    iput v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxAltitude:F

    .line 197
    iput v3, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->maxSpeed:F

    .line 198
    iget-object v1, p0, Lcom/muvee/mvflightanalyser/a;->h:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_7
    move v4, v2

    goto :goto_5

    :cond_8
    move v5, v2

    goto/16 :goto_3

    :cond_9
    move v3, v2

    goto/16 :goto_2
.end method
