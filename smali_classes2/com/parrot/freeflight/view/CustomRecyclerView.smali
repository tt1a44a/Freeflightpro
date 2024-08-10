.class public Lcom/parrot/freeflight/view/CustomRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "CustomRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/CustomRecyclerView;->getLayoutManager()Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 45
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;

    .line 48
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_0
    return-object v0

    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 37
    instance-of v0, p1, Lcom/parrot/freeflight/view/CustomRecyclerView$CustomLayoutManager;

    if-eqz v0, :cond_0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 40
    :cond_0
    return-void
.end method
