.class Lcom/muvee/mvflightanalyser/data/structures/b$a;
.super Ljava/lang/Object;
.source "MVFlightAnalyserTimedData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/mvflightanalyser/data/structures/b;
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
        "Lcom/muvee/mvflightanalyser/data/structures/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvflightanalyser/data/structures/b;


# direct methods
.method constructor <init>(Lcom/muvee/mvflightanalyser/data/structures/b;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/muvee/mvflightanalyser/data/structures/b$a;->a:Lcom/muvee/mvflightanalyser/data/structures/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/muvee/mvflightanalyser/data/structures/c;Lcom/muvee/mvflightanalyser/data/structures/c;)I
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    iget-wide v2, p2, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    iget-wide v2, p2, Lcom/muvee/mvflightanalyser/data/structures/c;->a:D

    cmpl-double v0, v0, v2

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
    .line 87
    check-cast p1, Lcom/muvee/mvflightanalyser/data/structures/c;

    check-cast p2, Lcom/muvee/mvflightanalyser/data/structures/c;

    invoke-virtual {p0, p1, p2}, Lcom/muvee/mvflightanalyser/data/structures/b$a;->a(Lcom/muvee/mvflightanalyser/data/structures/c;Lcom/muvee/mvflightanalyser/data/structures/c;)I

    move-result v0

    return v0
.end method
