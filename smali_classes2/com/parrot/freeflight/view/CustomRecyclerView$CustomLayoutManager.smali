.class public Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "CustomRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/view/CustomRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomLayoutManager"
.end annotation


# instance fields
.field private isScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;->isScrollEnabled:Z

    .line 64
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;->isScrollEnabled:Z

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
    .line 67
    iput-boolean p1, p0, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;->isScrollEnabled:Z

    .line 68
    return-void
.end method
