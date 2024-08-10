.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DroneMemoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;
    }
.end annotation


# static fields
.field public static final ERROR_FRAGMENT_TAG:Ljava/lang/String; = "ERROR_FRAGMENT_TAG"

.field public static final KEY_EXTRA_TRANSFER_LAST_RUN_MEDIAS:Ljava/lang/String; = "KEY_EXTRA_TRANSFER_LAST_RUN_MEDIAS"

.field public static final KEY_EXTRA_TRANSFER_MEDIAS_NB_TO_TRANSFER:Ljava/lang/String; = "KEY_EXTRA_TRANSFER_MEDIAS_NB_TO_TRANSFER"

.field public static final KEY_EXTRA_TRANSFER_RUN_ID:Ljava/lang/String; = "KEY_EXTRA_TRANSFER_RUN_ID"

.field private static final KEY_SAVED_BUNDLE_FILTER_TYPE:Ljava/lang/String; = "filterType"

.field private static final KEY_SAVED_BUNDLE_FREE_SPACE_MAX:Ljava/lang/String; = "freeSpaceMax"

.field private static final KEY_SAVED_BUNDLE_SELECTED_ITEM_PATHS:Ljava/lang/String; = "selectedPaths"

.field private static final KEY_SAVED_BUNDLE_SUPPORTED_DEVICE:Ljava/lang/String; = "mSupportedDevice"

.field private static final KEY_SAVED_BUNDLE_USED_SPACE:Ljava/lang/String; = "freeSpace"

.field private static final RETAINED_FRAGMENT_TAG:Ljava/lang/String; = "RETAINED_FRAGMENT_TAG"

.field private static final TAG:Ljava/lang/String; = "Media"


# instance fields
.field private filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdapterListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBottomActionBarLayout:Landroid/widget/RelativeLayout;

.field private final mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

.field private mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

.field private mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mEmptyListText:Landroid/widget/TextView;

.field private mFreeSpaceMax:I

.field private mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mMassStorage:Lcom/parrot/freeflight/media/model/MassStorage;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMassStorageListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mSelectAllButton:Landroid/widget/Button;

.field private mSelectedItemCountTextView:Landroid/widget/TextView;

.field private final mSelectedItemPath:Ljava/util/Set;
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

.field private mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSupportedDevice:Z

.field private mTransferButton:Landroid/widget/Button;

.field private mUsedSpace:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 98
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorageListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSupportedDevice:Z

    .line 132
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    .line 146
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mAdapterListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;

    .line 170
    const/16 v0, 0x64

    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mFreeSpaceMax:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mUsedSpace:I

    .line 172
    sget-object v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->showEmptyMessage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->showRetrievingErrorDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateFreeStorageSpace(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mEmptyListText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateBottomBar(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateSelectAllButton(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->onMediaClick(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mediaNamesLoaded()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;Lcom/parrot/freeflight/media/model/MediaItemList;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/MediaItemList;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mediaListUpdated(Lcom/parrot/freeflight/media/model/MediaItemList;)V

    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    .line 702
    const v1, 0x7f0a0385

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 704
    .local v0, "loadingProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 706
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mTransferButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 708
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->notifyDataSetInvalidated()V

    .line 710
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->notifyDataSetChanged()V

    .line 712
    :cond_0
    return-void
.end method

.method private confirmTransferLastRunMedias(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 398
    const-string v4, "KEY_EXTRA_TRANSFER_RUN_ID"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "runId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v4, :cond_3

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 402
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getMediasItemListForRunId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 409
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 410
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 411
    .local v0, "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->selectItem(Lcom/parrot/freeflight/media/model/MediaItem;Z)V

    goto :goto_1

    .line 404
    .end local v0    # "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_1
    const-string v4, "KEY_EXTRA_TRANSFER_MEDIAS_NB_TO_TRANSFER"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 405
    .local v2, "nbLastMediasItem":I
    if-lez v2, :cond_0

    .line 406
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getNbLastMediasItem(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 413
    .end local v2    # "nbLastMediasItem":I
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateBottomBar(I)V

    .line 415
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->transferLastRunMedias(Landroid/content/Intent;)V

    .line 418
    .end local v1    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    :cond_3
    return-void
.end method

.method private createControllerAndMassStorage()V
    .locals 5

    .prologue
    .line 366
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "RETAINED_FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .line 368
    .local v0, "droneMemoryController":Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    if-nez v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    invoke-virtual {v3}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getMassStoragePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    invoke-virtual {v4}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getCurrentMassStorageIdKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->newInstance(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "RETAINED_FRAGMENT_TAG"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 372
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/media/model/MassStorage;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorageListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$StorageListener;

    invoke-direct {v1, v0, v2}, Lcom/parrot/freeflight/media/model/MassStorage;-><init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/MassStorage$MassStorageListener;)V

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorage:Lcom/parrot/freeflight/media/model/MassStorage;

    .line 374
    iget-boolean v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSupportedDevice:Z

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorage:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MassStorage;->loadStorageSizeInfo()V

    .line 376
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorage:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MassStorage;->loadMediaList()V

    .line 381
    .end local v0    # "droneMemoryController":Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    :cond_1
    :goto_0
    return-void

    .line 378
    .restart local v0    # "droneMemoryController":Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->showDeviceUnsupportedDialog()V

    goto :goto_0
.end method

.method private static getFormattedFreeSpace()Ljava/lang/String;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide/16 v10, 0x400

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 739
    invoke-static {}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getFreeSpace()J

    move-result-wide v2

    .line 740
    .local v2, "spaceInByte":J
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "bytes"

    aput-object v4, v1, v8

    const-string v4, "Kb"

    aput-object v4, v1, v9

    const-string v4, "Mb"

    aput-object v4, v1, v6

    const/4 v4, 0x3

    const-string v5, "Gb"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "Tb"

    aput-object v5, v1, v4

    .line 741
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 742
    .local v0, "multiplyFactor":I
    :goto_0
    cmp-long v4, v2, v10

    if-lez v4, :cond_0

    .line 743
    div-long/2addr v2, v10

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%d %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    aget-object v7, v1, v0

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getFreeSpace()J
    .locals 8

    .prologue
    .line 725
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 726
    .local v0, "externalDir":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 728
    .local v1, "statFs":Landroid/os/StatFs;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_0

    .line 730
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v2, v4, v6

    .line 734
    .local v2, "freeBytes":J
    :goto_0
    return-wide v2

    .line 732
    .end local v2    # "freeBytes":J
    :cond_0
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long v2, v4, v6

    .restart local v2    # "freeBytes":J
    goto :goto_0
.end method

.method public static getStartingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "runId"    # Ljava/lang/String;
    .param p2, "mediasCountTakenDuringRun"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "droneMemoryIntent":Landroid/content/Intent;
    if-nez p1, :cond_0

    if-lez p2, :cond_1

    .line 83
    :cond_0
    const-string v1, "KEY_EXTRA_TRANSFER_LAST_RUN_MEDIAS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    const-string v1, "KEY_EXTRA_TRANSFER_RUN_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_1
    :goto_0
    return-object v0

    .line 87
    :cond_2
    const-string v1, "KEY_EXTRA_TRANSFER_MEDIAS_NB_TO_TRANSFER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private hasEnoughSpaceToTransfer()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 715
    const-wide/16 v2, 0x0

    .line 716
    .local v2, "neededSpaceInBytes":D
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v4, :cond_0

    .line 717
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getSelectedMediaItem()[Lcom/parrot/freeflight/media/model/MediaItem;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 718
    .local v0, "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/model/MediaItem;->getSize()D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 717
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 721
    .end local v0    # "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getFreeSpace()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v4, v4, v2

    if-ltz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isDeviceSupportable(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z
    .locals 8
    .param p1, "currentService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    const/4 v5, 0x6

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "GT-I9300"

    aput-object v5, v2, v3

    const-string v5, "GT-I9305"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    const-string v6, "GT-I9308"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "C5302"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "C5303"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "C5306"

    aput-object v6, v2, v5

    .line 588
    .local v2, "unSupportDeviceModelNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 589
    .local v0, "isUnsupportDeviceFound":Z
    array-length v6, v2

    move v5, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 590
    .local v1, "model":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 591
    if-eqz v0, :cond_3

    .line 595
    .end local v1    # "model":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-gt v5, v6, :cond_1

    if-eqz p1, :cond_1

    .line 596
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getDevice()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceBLEService;

    if-nez v5, :cond_2

    :cond_1
    move v3, v4

    .line 595
    :cond_2
    return v3

    .line 589
    .restart local v1    # "model":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private mediaListUpdated(Lcom/parrot/freeflight/media/model/MediaItemList;)V
    .locals 12
    .param p1, "itemList"    # Lcom/parrot/freeflight/media/model/MediaItemList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 514
    if-nez p1, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->showLoading()V

    .line 557
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->updateMediaCount(I)V

    .line 520
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 521
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->showEmptyMessage()V

    .line 526
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-nez v0, :cond_5

    .line 527
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mAdapterListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/media/model/MediaItemList;Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;Ljava/util/Set;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 528
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->VIDEO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    if-ne v0, v1, :cond_3

    .line 529
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->filterVideo()V

    goto :goto_0

    .line 523
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->showList()V

    goto :goto_1

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    sget-object v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->PHOTO:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    if-ne v0, v1, :cond_4

    .line 531
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->filterPhoto()V

    goto :goto_0

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->resetFilter()V

    goto :goto_0

    .line 538
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v10, "newPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 540
    invoke-virtual {p1, v6}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 541
    .local v7, "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v7, :cond_6

    .line 542
    invoke-virtual {v7}, Lcom/parrot/freeflight/media/model/MediaItem;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 543
    .local v11, "path":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 544
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v11    # "path":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 548
    .end local v7    # "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_7
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v8

    .line 549
    .local v8, "modified":Z
    if-eqz v8, :cond_8

    .line 550
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    .line 551
    .local v9, "nbItemsSelected":I
    invoke-direct {p0, v9}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateBottomBar(I)V

    .line 552
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getCount()I

    move-result v0

    if-ne v9, v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateSelectAllButton(Z)V

    .line 554
    .end local v9    # "nbItemsSelected":I
    :cond_8
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->swapList(Lcom/parrot/freeflight/media/model/MediaItemList;)V

    goto/16 :goto_0

    .line 552
    .restart local v9    # "nbItemsSelected":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private mediaNamesLoaded()V
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_EXTRA_TRANSFER_LAST_RUN_MEDIAS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->confirmTransferLastRunMedias(Landroid/content/Intent;)V

    .line 511
    :cond_0
    return-void
.end method

.method private onMediaClick(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 482
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v1, p2, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->checkBoxCheckStateChanged(ZI)V

    .line 484
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 485
    .local v0, "nbSelectedItem":I
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateBottomBar(I)V

    .line 486
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateSelectAllButton(Z)V

    .line 488
    .end local v0    # "nbSelectedItem":I
    :cond_0
    return-void

    .line 486
    .restart local v0    # "nbSelectedItem":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDeviceUnsupportedDialog()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    const v2, 0x7f07044d

    const v1, 0x7f1101e5

    .line 602
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1103f4

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1104d4

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move-object v7, v6

    .line 601
    invoke-static/range {v0 .. v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->newInstance(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    move-result-object v8

    .line 603
    .local v8, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    invoke-static {p0, v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 605
    .end local v8    # "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    :cond_0
    return-void
.end method

.method private showEmptyMessage()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 635
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mEmptyListText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 639
    return-void
.end method

.method private showList()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 621
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 625
    return-void
.end method

.method private showLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 628
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    return-void
.end method

.method private showRetrievingErrorDialog()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 608
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const v2, 0x7f07044d

    const v1, 0x7f1101e5

    .line 610
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f110008

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1104d4

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move-object v7, v6

    .line 609
    invoke-static/range {v0 .. v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->newInstance(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    move-result-object v8

    .line 611
    .local v8, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    invoke-static {p0, v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 613
    .end local v8    # "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    :cond_0
    return-void
.end method

.method private startFilesTransfer(I)V
    .locals 3
    .param p1, "endAction"    # I

    .prologue
    .line 466
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "RETAINED_FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 468
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getSelectedMediaItem()[Lcom/parrot/freeflight/media/model/MediaItem;

    move-result-object v2

    .line 467
    invoke-static {v1, v2, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/MediaItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    move-result-object v0

    .line 469
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    invoke-static {p0, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 471
    .end local v0    # "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    :cond_0
    return-void
.end method

.method private startFlightFilesTransfer()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "RETAINED_FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 454
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getSelectedMediaItem()[Lcom/parrot/freeflight/media/model/MediaItem;

    move-result-object v2

    .line 452
    invoke-static {v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/MediaItem;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;

    move-result-object v0

    .line 456
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;
    invoke-static {p0, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;->addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 458
    .end local v0    # "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryConfirmTransferFragment;
    :cond_0
    return-void
.end method

.method private transferLastRunMedias(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 425
    const-string v4, "KEY_EXTRA_TRANSFER_RUN_ID"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "runId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v4, :cond_3

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 429
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getMediasItemListForRunId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 436
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 437
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 438
    .local v0, "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->selectItem(Lcom/parrot/freeflight/media/model/MediaItem;Z)V

    goto :goto_1

    .line 431
    .end local v0    # "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_1
    const-string v4, "KEY_EXTRA_TRANSFER_MEDIAS_NB_TO_TRANSFER"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 432
    .local v2, "nbLastMediasItem":I
    if-lez v2, :cond_0

    .line 433
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getNbLastMediasItem(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 440
    .end local v2    # "nbLastMediasItem":I
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateBottomBar(I)V

    .line 441
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->startFlightFilesTransfer()V

    .line 444
    .end local v1    # "mediaItems":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/media/model/MediaItem;>;"
    :cond_3
    return-void
.end method

.method private updateBottomBar(I)V
    .locals 7
    .param p1, "checkedItemCount"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 561
    if-lez p1, :cond_2

    .line 562
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mBottomActionBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 563
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->hasEnoughSpaceToTransfer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0006

    new-array v4, v6, [Ljava/lang/Object;

    if-le p1, v6, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, p1, v4}, Lcom/parrot/freeflight/util/SafeRes;->getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "mediaSelectedText":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemCountTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mTransferButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 576
    .end local v0    # "mediaSelectedText":Ljava/lang/String;
    :goto_1
    return-void

    .line 564
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemCountTextView:Landroid/widget/TextView;

    const v2, 0x7f1103e0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getFormattedFreeSpace()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemCountTextView:Landroid/widget/TextView;

    const v2, 0x7f050065

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mTransferButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 574
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mBottomActionBarLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateFreeStorageSpace(II)V
    .locals 0
    .param p1, "sizeInMBytes"    # I
    .param p2, "usedSizeInMBytes"    # I

    .prologue
    .line 616
    iput p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mFreeSpaceMax:I

    .line 617
    iput p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mUsedSpace:I

    .line 618
    return-void
.end method

.method private updateMediasNb(Lcom/parrot/freeflight/media/model/MediaItemList;)V
    .locals 8
    .param p1, "itemList"    # Lcom/parrot/freeflight/media/model/MediaItemList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 642
    const/4 v3, 0x0

    .local v3, "photosNb":S
    const/4 v4, 0x0

    .line 643
    .local v4, "videosNb":S
    const/4 v0, 0x0

    .local v0, "it":I
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/MediaItemList;->size()I

    move-result v2

    .local v2, "mediasNumber":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 644
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/media/model/MediaItemList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/media/model/MediaItem;

    .line 645
    .local v1, "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MediaItem;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/freeflight/media/MediaType;->isVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 647
    add-int/lit8 v5, v4, 0x1

    int-to-short v4, v5

    .line 643
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-short v3, v5

    goto :goto_1

    .line 653
    .end local v1    # "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_2
    const-string v5, "Media"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateReadMediaCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/parrot/freeflight/media/MediaCountCompat;->updateReadMediaCount(Lcom/parrot/freeflight/core/model/Model;SS)V

    .line 655
    return-void
.end method

.method private updateSelectAllButton(Z)V
    .locals 2
    .param p1, "allItemsSelected"    # Z
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 580
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectAllButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f1101ca

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 581
    return-void

    .line 580
    :cond_0
    const v0, 0x7f1101cc

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "ERROR_FRAGMENT_TAG"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 493
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v0, 0x0

    .line 494
    .local v0, "caught":Z
    instance-of v2, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;

    if-eqz v2, :cond_0

    .line 495
    check-cast v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;->onBackPressed()Z

    move-result v0

    .line 497
    :cond_0
    if-nez v0, :cond_1

    .line 498
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 501
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const v7, 0x7f0c002d

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->setContentView(I)V

    .line 180
    const v7, 0x7f0a003b

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 182
    const v7, 0x7f0a02e4

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListView:Landroid/widget/ListView;

    .line 183
    const v7, 0x7f0a0139

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mEmptyListText:Landroid/widget/TextView;

    .line 184
    const v7, 0x7f0a02eb

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 186
    const v7, 0x7f0a02f1

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemCountTextView:Landroid/widget/TextView;

    .line 188
    const v7, 0x7f0a0042

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mBottomActionBarLayout:Landroid/widget/RelativeLayout;

    .line 190
    const v7, 0x7f0a03dd

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectAllButton:Landroid/widget/Button;

    .line 191
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectAllButton:Landroid/widget/Button;

    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v7, 0x7f0a0065

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 206
    .local v3, "deleteButton":Landroid/widget/Button;
    new-instance v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$4;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v7, 0x7f0a050d

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mTransferButton:Landroid/widget/Button;

    .line 218
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mTransferButton:Landroid/widget/Button;

    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$5;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$5;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$6;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$6;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v4

    .line 238
    .local v4, "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v6

    .line 240
    .local v6, "remoteCtrlModel":Lcom/parrot/freeflight/core/model/Model;
    if-eqz v4, :cond_0

    .line 242
    new-instance v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    const v8, 0x7f0a02a3

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v7, p0, v8, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/core/model/Model;)V

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    .line 245
    :cond_0
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 246
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$7;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$7;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 253
    if-eqz v4, :cond_1

    .line 254
    invoke-static {v4, v6}, Lcom/parrot/freeflight/media/DroneMemoryInitializationInfoBuilder;->build(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    .line 257
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    if-eqz v7, :cond_2

    .line 258
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    invoke-virtual {v7}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 259
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInitializationInfo:Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    invoke-virtual {v7}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;->getSkyDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 262
    :cond_2
    const v7, 0x7f0a0053

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 264
    .local v1, "backButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$8;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$8;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_3

    .line 271
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_3
    const v7, 0x7f0a0505

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 275
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 277
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_4

    .line 278
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 281
    :cond_4
    if-eqz p1, :cond_6

    .line 282
    const-string v7, "mSupportedDevice"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSupportedDevice:Z

    .line 283
    const-string/jumbo v7, "selectedPaths"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "previouslySelectedPaths":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 285
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_5
    const-string v7, "filterType"

    sget-object v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iget-object v8, v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->getFromValue(Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 288
    const-string v7, "freeSpaceMax"

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mFreeSpaceMax:I

    .line 289
    const-string v7, "freeSpace"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mUsedSpace:I

    .line 295
    .end local v5    # "previouslySelectedPaths":[Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->createControllerAndMassStorage()V

    .line 297
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v2

    .line 298
    .local v2, "connectionManager":Lcom/parrot/freeflight/core/connection/ConnectionManager;
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v2, v7}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 301
    const v7, 0x7f0a04cd

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 303
    const v7, 0x7f0a03bd

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 304
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mEmptyListText:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 305
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectAllButton:Landroid/widget/Button;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 306
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemCountTextView:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 307
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 308
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mTransferButton:Landroid/widget/Button;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 309
    return-void

    .line 291
    .end local v2    # "connectionManager":Lcom/parrot/freeflight/core/connection/ConnectionManager;
    :cond_6
    sget-object v7, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->NONE:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iput-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    .line 292
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-direct {p0, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->isDeviceSupportable(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSupportedDevice:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 351
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorage:Lcom/parrot/freeflight/media/model/MassStorage;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorage:Lcom/parrot/freeflight/media/model/MassStorage;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/model/MassStorage;->close()V

    .line 353
    iput-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mMassStorage:Lcom/parrot/freeflight/media/model/MassStorage;

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->close()V

    .line 357
    iput-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    .line 359
    :cond_1
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v0

    .line 360
    .local v0, "connectionManager":Lcom/parrot/freeflight/core/connection/ConnectionManager;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 361
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 362
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 363
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 390
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 387
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->finish()V

    .line 388
    const/4 v0, 0x1

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 335
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mListAdapter:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getMediaItemList()Lcom/parrot/freeflight/media/model/MediaItemList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->updateMediasNb(Lcom/parrot/freeflight/media/model/MediaItemList;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    const-string v0, "mSupportedDevice"

    iget-boolean v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSupportedDevice:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string/jumbo v1, "selectedPaths"

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mSelectedItemPath:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "filterType"

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->filterType:Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;

    iget-object v1, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$FilterType;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    const-string v0, "freeSpaceMax"

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mFreeSpaceMax:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v0, "freeSpace"

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mUsedSpace:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 326
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->start()V

    .line 329
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->mDroneMemoryInfoController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryInfoController;->stop()V

    .line 346
    :cond_0
    return-void
.end method
