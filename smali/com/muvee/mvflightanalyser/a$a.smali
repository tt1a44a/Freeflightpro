.class Lcom/muvee/mvflightanalyser/a$a;
.super Ljava/lang/Object;
.source "MVFlightAnalyserEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/mvflightanalyser/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/muvee/mvflightanalyser/data/structures/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvflightanalyser/a;


# direct methods
.method constructor <init>(Lcom/muvee/mvflightanalyser/a;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/muvee/mvflightanalyser/a$a;->a:Lcom/muvee/mvflightanalyser/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/muvee/mvflightanalyser/data/structures/b;Lcom/muvee/mvflightanalyser/data/structures/b;)I
    .locals 2

    .prologue
    .line 1367
    invoke-virtual {p1}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v0

    invoke-virtual {p2}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v0

    invoke-virtual {p2}, Lcom/muvee/mvflightanalyser/data/structures/b;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1364
    check-cast p1, Lcom/muvee/mvflightanalyser/data/structures/b;

    check-cast p2, Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-virtual {p0, p1, p2}, Lcom/muvee/mvflightanalyser/a$a;->a(Lcom/muvee/mvflightanalyser/data/structures/b;Lcom/muvee/mvflightanalyser/data/structures/b;)I

    move-result v0

    return v0
.end method
