.class Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;
.super Ljava/lang/Object;
.source "MomentsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/muvee/mvdronecomposer/HighlightSegment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;
    .param p2, "x1"    # Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;-><init>(Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/muvee/mvdronecomposer/HighlightSegment;Lcom/muvee/mvdronecomposer/HighlightSegment;)I
    .locals 4
    .param p1, "o1"    # Lcom/muvee/mvdronecomposer/HighlightSegment;
    .param p2, "o2"    # Lcom/muvee/mvdronecomposer/HighlightSegment;

    .prologue
    .line 420
    iget-wide v0, p1, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    iget-wide v2, p2, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 422
    :goto_0
    return v0

    .line 421
    :cond_0
    iget-wide v0, p1, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    iget-wide v2, p2, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 416
    check-cast p1, Lcom/muvee/mvdronecomposer/HighlightSegment;

    check-cast p2, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/flightdirector/adapter/MomentsAdapter$HighlightComparator;->compare(Lcom/muvee/mvdronecomposer/HighlightSegment;Lcom/muvee/mvdronecomposer/HighlightSegment;)I

    move-result v0

    return v0
.end method
