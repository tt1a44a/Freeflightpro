.class public Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VersionHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;,
        Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mItemClickListener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mKnownVersions:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "itemClickListener"    # Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Version;",
            ">;",
            "Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "versionList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/whatsnew/model/Version;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mVersionList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mKnownVersions:Ljava/util/Set;

    .line 68
    iput-object p3, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mItemClickListener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mVersionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->onBindViewHolder(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 86
    iget-object v2, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mVersionList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/whatsnew/model/Version;

    .line 87
    .local v1, "version":Lcom/parrot/freeflight/whatsnew/model/Version;
    iget-object v2, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mKnownVersions:Ljava/util/Set;

    iget-object v3, v1, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 88
    .local v0, "isNew":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mVersionList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/whatsnew/model/Version;

    iget-object v3, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mItemClickListener:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;

    invoke-virtual {p1, v2, v0, v3}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->bind(Lcom/parrot/freeflight/whatsnew/model/Version;ZLcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;)V

    .line 89
    return-void

    .line 87
    .end local v0    # "isNew":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b8

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;-><init>(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public updateKnownVersion(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "knownVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->mKnownVersions:Ljava/util/Set;

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method
