.class public Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ExtendedLinearLayoutManager.java"


# instance fields
.field private mIsScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;->mIsScrollEnabled:Z

    .line 11
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;->mIsScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;->mIsScrollEnabled:Z

    .line 15
    return-void
.end method
