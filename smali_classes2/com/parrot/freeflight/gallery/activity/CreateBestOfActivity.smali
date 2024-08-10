.class public Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CreateBestOfActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateBestOfActivity"


# instance fields
.field private mBestOfButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCancelButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCountView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDescriptionView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLoaderView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaList:Ljava/util/List;
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

.field private mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedList:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$1;-><init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    .line 91
    new-instance v0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;-><init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mSelectedList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mLoaderView:Landroid/view/View;

    return-object v0
.end method

.method public static newIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method private updateView()V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mSelectedList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mBestOfButton:Landroid/widget/Button;

    const v1, 0x7f05012c

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mCountView:Landroid/widget/TextView;

    const v1, 0x7f110187

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mSelectedList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mBestOfButton:Landroid/widget/Button;

    const v1, 0x7f0500a3

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v2, 0x7f0c0025

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->setContentView(I)V

    .line 137
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getFlightDirectorManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->clearHighlights()V

    .line 138
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getFlightDirectorManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->loadDefaultSoundtracks()V

    .line 139
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->resetParam(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaList:Ljava/util/List;

    .line 144
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mSelectedList:Ljava/util/Map;

    .line 147
    const v2, 0x7f0a00f9

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mTitleView:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f0a00f4

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mDescriptionView:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f0a00f8

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 150
    const v2, 0x7f0a00f3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mCancelButton:Landroid/widget/Button;

    .line 151
    const v2, 0x7f0a00f7

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mCountView:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f0a00f1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mBestOfButton:Landroid/widget/Button;

    .line 153
    const v2, 0x7f0a00f5

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mLoaderView:Landroid/view/View;

    .line 155
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 156
    .local v1, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v2, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$3;-><init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 169
    new-instance v2, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    .line 170
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaListener:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setListener(Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;)V

    .line 171
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setSelectionMode(I)V

    .line 173
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 174
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;

    const v2, 0x7f0601b5

    sget-object v3, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    invoke-direct {v0, p0, v2, v3}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;-><init>(Landroid/content/Context;ILcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;)V

    .line 176
    .local v0, "itemOffsetDecoration":Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 177
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaAdapter:Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 180
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 181
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mDescriptionView:Landroid/widget/TextView;

    invoke-static {p0, v2, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 182
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mCancelButton:Landroid/widget/Button;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 183
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mCountView:Landroid/widget/TextView;

    invoke-static {p0, v2, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 184
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mBestOfButton:Landroid/widget/Button;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 187
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$4;-><init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mBestOfButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$5;-><init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->updateMedias()V

    .line 206
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->updateView()V

    .line 207
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 218
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->registerListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 213
    return-void
.end method

.method public updateMedias()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 242
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mLoaderView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    new-instance v1, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;

    invoke-direct {v1, p0, p0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;-><init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Lcom/parrot/freeflight/utils/ProductsUtils;->getSupportedProductList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    sget-object v4, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v5, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    aput-object v5, v3, v4

    .line 279
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/core/academy/MediaManager;->requestAllLocalMediasForProducts(Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
