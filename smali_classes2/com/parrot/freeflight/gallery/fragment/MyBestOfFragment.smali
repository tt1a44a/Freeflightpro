.class public Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;
.super Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
.source "MyBestOfFragment.java"


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

.field private mVideoList:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mSelectedMediaList:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$1;-><init>(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mSelectedMediaList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mLoaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mVideoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->updateView()V

    return-void
.end method

.method public static newInstance()Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;

    invoke-direct {v0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;-><init>()V

    return-object v0
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "galleryElements":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gallery/data/GalleryElement;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mVideoList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 152
    .local v1, "videoCount":I
    :goto_0
    new-instance v2, Lcom/parrot/freeflight/gallery/data/GalleryHeader;

    const v3, 0x7f11046f

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/parrot/freeflight/gallery/data/GalleryHeader;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mVideoList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mVideoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setItems(Ljava/util/List;)V

    .line 159
    return-void

    .line 151
    .end local v1    # "videoCount":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mSelectedMediaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mSelectedMediaList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;->onSelectionChanged(Ljava/util/ArrayList;)V

    .line 179
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
    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mSelectedMediaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mVideoList:Ljava/util/List;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    .line 103
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setListener(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;)V

    .line 104
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
    .line 109
    const v3, 0x7f0c009a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 113
    const v3, 0x7f0a003d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mLoaderView:Landroid/view/View;

    .line 116
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 117
    .local v1, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v3, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$2;-><init>(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 130
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 131
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0601b5

    sget-object v5, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    invoke-direct {v0, v3, v4, v5}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V

    .line 132
    .local v0, "itemOffsetDecoration":Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 133
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mVideoList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->updateMedias()V

    .line 141
    :goto_0
    return-object v2

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->updateView()V

    goto :goto_0
.end method

.method public setSelectionMode(I)V
    .locals 1
    .param p1, "mode"    # I
        .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->setSelectionMode(I)V

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setSelectionMode(I)V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;->onSelectionModeChanged(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public updateMedias()V
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->updateView()V

    .line 218
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mLoaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    .line 206
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 207
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment$3;-><init>(Lcom/parrot/freeflight/gallery/fragment/MyBestOfFragment;)V

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->loadBestOfGalleryMedia(IILcom/parrot/freeflight/flightdirector/util/FlightDirectorManager$BestOfRequestListener;)V

    goto :goto_0
.end method
