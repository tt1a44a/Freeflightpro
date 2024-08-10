.class public Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;,
        Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;,
        Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediasList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryElement;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I
    .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMode:I

    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMediasList:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMediasList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMediasList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gallery/data/GalleryElement;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/data/GalleryElement;->getType()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 88
    instance-of v0, p1, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;

    if-eqz v0, :cond_1

    .line 89
    check-cast p1, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMediasList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gallery/data/GalleryHeader;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;->setView(Lcom/parrot/freeflight/gallery/data/GalleryHeader;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    instance-of v0, p1, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMediasList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    iget v1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMode:I

    invoke-virtual {p1, v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;->setView(Lcom/parrot/freeflight/gallery/data/GalleryMedia;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez p2, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00a9

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    invoke-direct {v0, v2, v1, v3}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$ItemViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;)V

    .line 83
    .end local v1    # "view":Landroid/view/View;
    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00aa

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .restart local v1    # "view":Landroid/view/View;
    new-instance v0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;

    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$HeaderViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .restart local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gallery/data/GalleryElement;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMediasList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMediasList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public setListener(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    .line 64
    return-void
.end method

.method public setSelectionMode(I)V
    .locals 0
    .param p1, "mode"    # I
        .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
        .end annotation
    .end param

    .prologue
    .line 57
    iput p1, p0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->mMode:I

    .line 59
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method
