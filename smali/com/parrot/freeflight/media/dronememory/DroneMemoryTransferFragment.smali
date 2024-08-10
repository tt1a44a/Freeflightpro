.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
.super Landroid/support/v4/app/Fragment;
.source "DroneMemoryTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$EndAction;
    }
.end annotation


# static fields
.field public static final ACTION_BACK_WELCOME:I = 0x1

.field public static final ACTION_BEST_OF:I = 0x2

.field public static final ACTION_NONE:I = 0x0

.field private static final ARG_END_ACTION:Ljava/lang/String; = "endAction"

.field private static final ARG_FILE_ITEM_ARRAY:Ljava/lang/String; = "fileItems"

.field public static final KEY_CURRENT_FILE_PROGRESS:Ljava/lang/String; = "fileProgress"


# instance fields
.field private mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

.field private mEndAction:I

.field private mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

.field private final mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFileProgressBar:Landroid/widget/ProgressBar;

.field private mFileProgressTextView:Landroid/widget/TextView;

.field private mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mResumed:Z

.field private mRootView:Landroid/view/View;

.field private mShouldCancel:Z

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTotalProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 63
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;

    .line 66
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onTransferError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Lcom/parrot/freeflight/media/model/FileOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/FileOperation;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->transferOperationUpdated(Lcom/parrot/freeflight/media/model/FileOperation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)[Lcom/parrot/freeflight/media/model/FileItem;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Lcom/parrot/freeflight/media/model/FileTransferManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mResumed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mShouldCancel:Z

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/FileOperationList;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->transferListUpdated(Lcom/parrot/freeflight/media/model/FileOperationList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onTransferSucceeded()V

    return-void
.end method

.method public static addFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010015

    const v2, 0x7f010014

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0358

    const-string v2, "ERROR_FRAGMENT_TAG"

    .line 120
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 122
    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 414
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v0

    .line 415
    .local v0, "productMainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 418
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 419
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 420
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 423
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 311
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileTransferManager;->cancelTransfer()V

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_2

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 317
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/model/FileOperation;->close()V

    .line 315
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V
    .locals 1
    .param p0, "endAction"    # I
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fileItems"    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 139
    invoke-static {p1, p3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->endTransferActionBestOf(Landroid/support/v4/app/FragmentActivity;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 141
    invoke-static {p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->endTransferActionBackWelcome(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->endOperation(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method private static endOperation(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "currentFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010015

    const v2, 0x7f010014

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 178
    return-void
.end method

.method private static endTransferActionBackWelcome(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 171
    return-void
.end method

.method private static endTransferActionBestOf(Landroid/support/v4/app/FragmentActivity;[Lcom/parrot/freeflight/media/model/FileItem;)V
    .locals 6
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fileItems"    # [Lcom/parrot/freeflight/media/model/FileItem;

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 154
    .local v0, "item":Lcom/parrot/freeflight/media/model/FileItem;
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/model/FileItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v4

    sget-object v5, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    if-ne v4, v5, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/model/FileItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/arsdk/armedia/ARMediaObject;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "item":Lcom/parrot/freeflight/media/model/FileItem;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 159
    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setDataFilePaths(Ljava/util/ArrayList;)V

    .line 160
    invoke-static {p0, v1}, Lcom/parrot/freeflight/flightdirector/activity/PreviewActivity;->newIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 163
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .locals 3
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fileItems"    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endAction"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;-><init>()V

    .line 100
    .local v1, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "endAction"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v2, "fileItems"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v1
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/MediaItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .locals 4
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediaItems"    # [Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endAction"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 110
    array-length v2, p1

    new-array v0, v2, [Lcom/parrot/freeflight/media/model/FileItem;

    .line 111
    .local v0, "fileItems":[Lcom/parrot/freeflight/media/model/FileItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 112
    new-instance v2, Lcom/parrot/freeflight/media/model/FileItem;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/media/model/FileItem;-><init>(Lcom/parrot/freeflight/media/model/MediaItem;)V

    aput-object v2, v0, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    move-result-object v2

    return-object v2
.end method

.method private onTransferError()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 399
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 400
    const/4 v0, 0x1

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    const v2, 0x7f07044d

    const v3, 0x7f1101e5

    .line 401
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f1104d4

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    move-object v7, v4

    .line 400
    invoke-static/range {v0 .. v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->newInstance(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    move-result-object v8

    .line 402
    .local v8, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->replaceFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 403
    return-void
.end method

.method private onTransferSucceeded()V
    .locals 4

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 407
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    iget v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    move-result-object v0

    .line 409
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->replaceFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V

    .line 411
    .end local v0    # "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;
    :cond_0
    return-void
.end method

.method public static replaceFragment(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000c

    const v2, 0x7f01000d

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0358

    const-string v2, "ERROR_FRAGMENT_TAG"

    .line 127
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    return-void
.end method

.method private transferListUpdated(Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 3
    .param p1, "operationList"    # Lcom/parrot/freeflight/media/model/FileOperationList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 359
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    .line 360
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_1

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 363
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_0

    .line 364
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/media/model/FileOperation;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 361
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->updateProgress()V

    .line 369
    return-void
.end method

.method private transferOperationUpdated(Lcom/parrot/freeflight/media/model/FileOperation;)V
    .locals 2
    .param p1, "fileOperation"    # Lcom/parrot/freeflight/media/model/FileOperation;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/FileOperation;->getProgress()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 373
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/FileOperation;->isSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->updateProgress()V

    .line 376
    :cond_0
    return-void
.end method

.method private updateProgress()V
    .locals 10

    .prologue
    .line 379
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    .line 380
    .local v3, "operationList":Lcom/parrot/freeflight/media/model/FileOperationList;
    if-eqz v3, :cond_3

    .line 381
    invoke-virtual {v3}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v0

    .line 382
    .local v0, "fileOperationCount":I
    const/4 v4, 0x0

    .line 383
    .local v4, "transferredItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 384
    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 385
    .local v2, "operation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperation;->isSucceeded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperation;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 386
    add-int/lit8 v4, v4, 0x1

    .line 383
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v2    # "operation":Lcom/parrot/freeflight/media/model/FileOperation;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 390
    if-eq v4, v0, :cond_2

    .line 392
    add-int/lit8 v4, v4, 0x1

    .line 394
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressTextView:Landroid/widget/TextView;

    const v6, 0x7f1101f9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .end local v0    # "fileOperationCount":I
    .end local v1    # "i":I
    .end local v4    # "transferredItemCount":I
    :cond_3
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 326
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 327
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    .line 327
    invoke-static {v0, v2, p0, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 333
    return v1

    .line 327
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 184
    .local v2, "context":Landroid/content/Context;
    new-instance v8, Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    .line 185
    const v8, 0x7f0c00c8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    .line 186
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a005a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 187
    .local v1, "cancelButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a01dd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 188
    .local v4, "droneImageView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a04be

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mStatusTextView:Landroid/widget/TextView;

    .line 189
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a0257

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressTextView:Landroid/widget/TextView;

    .line 190
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a037c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    .line 191
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a0258

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 192
    .local v7, "totalProgressTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a037d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    .line 194
    if-eqz p3, :cond_0

    .line 195
    const-string v8, "fileProgress"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 196
    .local v5, "fileProgress":I
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 199
    .end local v5    # "fileProgress":I
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .line 201
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-virtual {v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v3

    .line 202
    .local v3, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v3, :cond_1

    .line 203
    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v8

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    .line 208
    .local v6, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "endAction"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    .line 210
    const-string v8, "fileItems"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, [Lcom/parrot/freeflight/media/model/FileItem;

    check-cast v8, [Lcom/parrot/freeflight/media/model/FileItem;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    .line 212
    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance v8, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v8, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 226
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v9, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;

    invoke-direct {v9, p0, v4, v6}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Landroid/widget/ImageView;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 235
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0a04cd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 236
    invoke-static {v2, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 237
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 238
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressTextView:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 239
    invoke-static {v2, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 240
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    return-object v8

    .line 205
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v6    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_1
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .restart local v6    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 347
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->closePermissionRequestDialog()V

    .line 348
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 350
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mResumed:Z

    .line 290
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 291
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 356
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 275
    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mResumed:Z

    .line 276
    iget-boolean v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mShouldCancel:Z

    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 278
    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    .line 278
    invoke-static {v0, v1, p0, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 285
    :cond_0
    return-void

    .line 278
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "fileProgress"

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 246
    new-instance v0, Lcom/parrot/freeflight/media/model/FileTransferManager;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/media/model/FileTransferManager;-><init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f1104f6

    aput v3, v2, v4

    const v3, 0x7f1104f7

    new-instance v4, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;)V

    .line 270
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 295
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 296
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileTransferManager;->close()V

    .line 298
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_2

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 303
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_1

    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/media/model/FileOperation;->unregisterObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
