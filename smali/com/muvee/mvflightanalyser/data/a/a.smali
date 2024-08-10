.class public Lcom/muvee/mvflightanalyser/data/a/a;
.super Ljava/lang/Object;
.source "MVFlightDataAdapter.java"


# static fields
.field private static c:F


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const v0, 0x42652ee0

    sput v0, Lcom/muvee/mvflightanalyser/data/a/a;->c:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/muvee/mvflightanalyser/data/a/a;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/a;->b:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/a;

    .line 39
    new-instance v2, Lcom/muvee/mvflightanalyser/data/structures/c;

    invoke-direct {v2}, Lcom/muvee/mvflightanalyser/data/structures/c;-><init>()V

    .line 42
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->b:D

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->c:D

    .line 43
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->c:D

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->d:D

    .line 44
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->a:D

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    .line 45
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->d:F

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->b:F

    .line 46
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->g:F

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    .line 47
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->i:D

    double-to-float v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->i:F

    .line 48
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->h:D

    double-to-float v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->h:F

    .line 49
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->j:D

    double-to-float v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    .line 50
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->k:F

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    .line 51
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->m:F

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->l:F

    .line 54
    iput v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->m:I

    .line 55
    iput v6, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->n:I

    .line 56
    const/4 v3, -0x1

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->o:I

    .line 59
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->e:F

    iget v0, v0, Lcom/muvee/mvflightanalyser/data/structures/a;->f:F

    invoke-static {v2, v3, v0}, Lcom/muvee/mvflightanalyser/a/a;->a(Lcom/muvee/mvflightanalyser/data/structures/c;FF)V

    .line 61
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/a;->b:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/e;

    .line 69
    new-instance v2, Lcom/muvee/mvflightanalyser/data/structures/c;

    invoke-direct {v2}, Lcom/muvee/mvflightanalyser/data/structures/c;-><init>()V

    .line 72
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->b:D

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->c:D

    .line 73
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->c:D

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->d:D

    .line 74
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->a:D

    iput-wide v4, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    .line 75
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->d:F

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->b:F

    .line 76
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->g:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->g:F

    .line 77
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->m:I

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->m:I

    .line 78
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->n:I

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->n:I

    .line 79
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->o:I

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->o:I

    .line 82
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->h:D

    double-to-float v3, v4

    sget v4, Lcom/muvee/mvflightanalyser/data/a/a;->c:F

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->h:F

    .line 83
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->i:D

    double-to-float v3, v4

    sget v4, Lcom/muvee/mvflightanalyser/data/a/a;->c:F

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->i:F

    .line 84
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->j:D

    double-to-float v3, v4

    sget v4, Lcom/muvee/mvflightanalyser/data/a/a;->c:F

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    .line 85
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->k:F

    sget v4, Lcom/muvee/mvflightanalyser/data/a/a;->c:F

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    .line 86
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->l:F

    sget v4, Lcom/muvee/mvflightanalyser/data/a/a;->c:F

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/muvee/mvflightanalyser/data/structures/c;->l:F

    .line 89
    iget v3, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->e:F

    iget v0, v0, Lcom/muvee/mvflightanalyser/data/structures/e;->f:F

    invoke-static {v2, v3, v0}, Lcom/muvee/mvflightanalyser/a/a;->a(Lcom/muvee/mvflightanalyser/data/structures/c;FF)V

    .line 91
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeDJI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0, p1}, Lcom/muvee/mvflightanalyser/data/a/a;->b(Ljava/util/ArrayList;)V

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/a;->b:Ljava/util/ArrayList;

    return-object v0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/a/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->kFlightDataTypeParrot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-direct {p0, p1}, Lcom/muvee/mvflightanalyser/data/a/a;->c(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
