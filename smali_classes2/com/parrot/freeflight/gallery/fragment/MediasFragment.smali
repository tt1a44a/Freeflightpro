.class public Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
.super Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
.source "MediasFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediasFragment"


# instance fields
.field private mLoaderView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedMediaList:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoList:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$1;-><init>(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    .line 76
    new-instance v0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;-><init>(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mSelectedMediaList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mPhotoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mLoaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->updateView()V

    return-void
.end method

.method public static newInstance()Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;-><init>()V

    return-object v0
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "galleryElements":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gallery/data/GalleryElement;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 192
    .local v2, "videoCount":I
    :goto_0
    new-instance v4, Lcom/parrot/freeflight/gallery/data/GalleryHeader;

    const v5, 0x7f11046f

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/parrot/freeflight/gallery/data/GalleryHeader;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mPhotoList:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mPhotoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 199
    .local v1, "photoCount":I
    :goto_1
    new-instance v3, Lcom/parrot/freeflight/gallery/data/GalleryHeader;

    const v4, 0x7f11046e

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/parrot/freeflight/gallery/data/GalleryHeader;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mPhotoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mPhotoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setItems(Ljava/util/List;)V

    .line 206
    return-void

    .end local v1    # "photoCount":I
    .end local v2    # "videoCount":I
    :cond_2
    move v2, v3

    .line 191
    goto :goto_0

    .restart local v2    # "videoCount":I
    :cond_3
    move v1, v3

    .line 198
    goto :goto_1
.end method


# virtual methods
.method public clearSelection()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mSelectedMediaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mSelectedMediaList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;->onSelectionChanged(Ljava/util/ArrayList;)V

    .line 228
    :cond_0
    return-void
.end method

.method public getSelection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mSelectedMediaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setListener(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    const v3, 0x7f0c0097

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 133
    .local v2, "view":Landroid/view/View;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mSelectedMediaList:Ljava/util/Map;

    .line 136
    const v3, 0x7f0a02fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 137
    const v3, 0x7f0a02f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mLoaderView:Landroid/view/View;

    .line 140
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 141
    .local v1, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v3, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$3;-><init>(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 154
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 155
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0601b5

    sget-object v5, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    invoke-direct {v0, v3, v4, v5}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V

    .line 156
    .local v0, "itemOffsetDecoration":Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 157
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 159
    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 182
    invoke-super {p0}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->onPause()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->registerListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 177
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->onStart()V

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mVideoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mPhotoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->updateMedias()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->updateView()V

    goto :goto_0
.end method

.method public setSelectionMode(I)V
    .locals 1
    .param p1, "mode"    # I
        .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
        .end annotation
    .end param

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->setSelectionMode(I)V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setSelectionMode(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;->onSelectionModeChanged(I)V

    .line 220
    :cond_1
    return-void
.end method

.method public updateMedias()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->updateView()V

    .line 288
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mLoaderView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    new-instance v1, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;

    invoke-direct {v1, p0, p0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;-><init>(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;Ljava/lang/Object;)V

    .line 284
    invoke-static {}, Lcom/parrot/freeflight/utils/ProductsUtils;->getSupportedProductList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v5, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    aput-object v5, v3, v4

    .line 285
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 253
    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/MediaManager;->requestAllLocalMediasForProducts(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
