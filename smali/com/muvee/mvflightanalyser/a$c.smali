.class Lcom/muvee/mvflightanalyser/a$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/mvflightanalyser/a;


# direct methods
.method constructor <init>(Lcom/muvee/mvflightanalyser/a;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/muvee/mvflightanalyser/a$c;->a:Lcom/muvee/mvflightanalyser/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;)I
    .locals 4

    .prologue
    .line 1381
    iget-wide v0, p1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    iget-wide v2, p2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    iget-wide v2, p2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

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
    .line 1378
    check-cast p1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    check-cast p2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-virtual {p0, p1, p2}, Lcom/muvee/mvflightanalyser/a$c;->a(Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;)I

    move-result v0

    return v0
.end method
