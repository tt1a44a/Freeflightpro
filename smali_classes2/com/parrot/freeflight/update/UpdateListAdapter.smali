.class public Lcom/parrot/freeflight/update/UpdateListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UpdateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/UpdateListAdapter$MultipleUpdateActionButtonClickListener;,
        Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;,
        Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUserProductList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/user/UserProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/user/UserProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "userProductList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter;->mUserProductList:Ljava/util/List;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter;->mUserProductList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/update/UpdateListAdapter;->onBindViewHolder(Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter;->mUserProductList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/user/UserProduct;

    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;->updateView(Lcom/parrot/freeflight/user/UserProduct;Z)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/update/UpdateListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/parrot/freeflight/update/UpdateListAdapter$ProductViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/update/UpdateListAdapter$1;)V

    return-object v1
.end method
