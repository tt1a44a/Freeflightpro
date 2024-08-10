.class public Lcom/muvee/mvflightanalyser/data/structures/b;
.super Ljava/lang/Object;
.source "MVFlightAnalyserTimedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/mvflightanalyser/data/structures/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/muvee/mvflightanalyser/data/structures/d;

.field public c:I

.field public d:I

.field public e:I

.field private f:Ljava/util/ArrayList;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvflightanalyser/data/structures/b;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)F
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
    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
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

    .line 79
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 83
    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 26
    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    return-wide v0
.end method

.method public a(Lcom/muvee/mvflightanalyser/data/structures/c;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/structures/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 31
    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    return-wide v0
.end method

.method public c()F
    .locals 3

    .prologue
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 38
    iget v0, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0, v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Ljava/util/ArrayList;)F

    move-result v0

    return v0
.end method

.method public d()F
    .locals 3

    .prologue
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 48
    iget v0, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->k:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Ljava/util/ArrayList;)F

    move-result v0

    return v0
.end method

.method public e()F
    .locals 3

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/muvee/mvflightanalyser/data/structures/b;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/c;

    .line 58
    iget v0, v0, Lcom/muvee/mvflightanalyser/data/structures/c;->j:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0, v1}, Lcom/muvee/mvflightanalyser/data/structures/b;->a(Ljava/util/ArrayList;)F

    move-result v0

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/muvee/mvflightanalyser/data/structures/b;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/muvee/mvflightanalyser/data/structures/b$a;

    invoke-direct {v1, p0}, Lcom/muvee/mvflightanalyser/data/structures/b$a;-><init>(Lcom/muvee/mvflightanalyser/data/structures/b;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/muvee/mvflightanalyser/data/structures/b;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
