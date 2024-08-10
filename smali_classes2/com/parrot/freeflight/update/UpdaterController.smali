.class public Lcom/parrot/freeflight/update/UpdaterController;
.super Landroid/support/v4/app/Fragment;
.source "UpdaterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;,
        Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;,
        Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;,
        Lcom/parrot/freeflight/update/UpdaterController$StateListener;,
        Lcom/parrot/freeflight/update/UpdaterController$Event;,
        Lcom/parrot/freeflight/update/UpdaterController$State;
    }
.end annotation


# static fields
.field public static final EVENT_DOWNLOADING_UPDATED_STRING_VALUE:Ljava/lang/String; = "EVENT_DOWNLOADING_UPDATED"

.field public static final EVENT_START_UPLOAD_STRING_VALUE:Ljava/lang/String; = "EVENT_START_UPLOAD"

.field public static final UPDATE_CURRENT_VERSION_KEY:Ljava/lang/String; = "UPDATE_CURRENT_VERSION_KEY"

.field public static final UPDATE_EVENT_KEY:Ljava/lang/String; = "UPDATE_EVENT_KEY"

.field public static final UPDATE_NEED_TRAMPOLINE_UPDATE_KEY:Ljava/lang/String; = "UPDATE_NEED_TRAMPOLINE_UPDATE_KEY"

.field public static final UPDATE_PRODUCT_ID_KEY:Ljava/lang/String; = "UPDATE_PRODUCT_ID_KEY"

.field public static final UPDATE_PRODUCT_KEY:Ljava/lang/String; = "UPDATE_PRODUCT_KEY"

.field public static final UPDATE_TARGET_VERSION_KEY:Ljava/lang/String; = "UPDATE_TARGET_VERSION_KEY"


# instance fields
.field private final mAvailableUpdateList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentProgress:F

.field private mCurrentVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDownloaderListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

.field private mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDownloadingProductVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

.field private final mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mKnownGamePadList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mProcessingHandler:Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRegistered:Z

.field private final mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mState:Lcom/parrot/freeflight/update/UpdaterController$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTargetProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTargetVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUploaderListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

.field private mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 129
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 551
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$1;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

    .line 572
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$2;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 581
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$3;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    .line 621
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/update/UpdaterController$4;-><init>(Lcom/parrot/freeflight/update/UpdaterController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    .line 190
    new-instance v2, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;

    invoke-direct {v2, p0, v3}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;-><init>(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$1;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingHandler:Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    .line 193
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 194
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 195
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    .line 196
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    .line 197
    .local v1, "model":Lcom/parrot/freeflight/core/model/Model;
    if-nez v1, :cond_0

    .line 198
    iput-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    .line 199
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_NO_DRONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-direct {v2, v1}, Lcom/parrot/freeflight/update/DroneModelWrapper;-><init>(Lcom/parrot/freeflight/core/model/Model;)V

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterController$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/UpdaterController$Event;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/task/UploaderTask;)Lcom/parrot/freeflight/update/task/UploaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/task/UploaderTask;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/update/UpdaterController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterController;->notifyProcessingListenerChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->unregisterBroadCast()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/update/UpdaterController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProductVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/UpdaterController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloadingProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/UpdaterController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 66
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    return v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/update/UpdaterController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/update/UpdaterController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyProgressChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/update/UpdaterController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/task/DownloaderTask;)Lcom/parrot/freeflight/update/task/DownloaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/task/DownloaderTask;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    return-object p1
.end method

.method private doDownloadTask()V
    .locals 5

    .prologue
    .line 489
    const-string v0, "FF4.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDownloadTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    .line 495
    new-instance v0, Lcom/parrot/freeflight/update/task/DownloaderTask;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/parrot/freeflight/update/task/DeviceVersion;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {v2, v3, v4}, Lcom/parrot/freeflight/update/task/DeviceVersion;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderListener:Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/freeflight/update/task/DownloaderTask;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/update/task/DeviceVersion;Lcom/parrot/freeflight/update/task/DownloaderTask$Listener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    .line 496
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/DownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 498
    :cond_0
    return-void
.end method

.method private doInstall()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->reboot()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingHandler:Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->start(IZLcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 524
    :cond_1
    return-void
.end method

.method private doInstallDone()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 527
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v1

    .line 528
    .local v1, "userSettings":Lcom/parrot/freeflight/user/UserSettings;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v0

    .line 529
    .local v0, "productFamily":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_GAMEPAD:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    .line 530
    invoke-virtual {v0, v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/user/UserSettings;->setRemoteCtrlUpdateState(Ljava/lang/String;I)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/user/UserSettings;->setDroneUpdateState(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private doResetProduct()V
    .locals 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingHandler:Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;

    const/4 v1, 0x5

    const/4 v2, 0x1

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_REBOOT_DRONE:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->start(IZLcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 515
    :cond_0
    return-void
.end method

.method private doUploadTask()V
    .locals 6

    .prologue
    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    .line 502
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->registerBroadCast()V

    .line 504
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 505
    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v5, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderListener:Lcom/parrot/freeflight/update/task/UploaderTask$Listener;

    .line 504
    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/update/UploadTaskFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)Lcom/parrot/freeflight/update/task/UploaderTask;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    .line 507
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/task/UploaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 509
    :cond_0
    return-void

    .line 504
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyProcessingListenerChange(Z)V
    .locals 2
    .param p1, "productReset"    # Z

    .prologue
    .line 450
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingHandler:Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->getProgress()F

    move-result v0

    .line 452
    .local v0, "progress":F
    if-eqz p1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;->onDroneResetProgressChange(F)V

    .line 458
    .end local v0    # "progress":F
    :cond_0
    :goto_0
    return-void

    .line 455
    .restart local v0    # "progress":F
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;->onInstallProgressChange(F)V

    goto :goto_0
.end method

.method private notifyProgressChange()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;->onProgressChange(F)V

    .line 447
    :cond_0
    return-void
.end method

.method private notifyStateChange()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/parrot/freeflight/update/UpdaterController$StateListener;->onStateChange(Lcom/parrot/freeflight/update/UpdaterController$State;Lcom/parrot/freeflight/core/model/Model;)V

    .line 441
    :cond_0
    return-void

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBroadCast()V
    .locals 4

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    .line 540
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    :cond_0
    return-void
.end method

.method private runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/parrot/freeflight/update/UpdaterController$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    const-string v0, "FF4.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runStateMachine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 435
    :goto_0
    return-void

    .line 326
    :pswitch_0
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 328
    :pswitch_2
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_START_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 329
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 330
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 331
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 334
    :pswitch_3
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_SUCCESS:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 335
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 338
    :pswitch_4
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 339
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 345
    :pswitch_5
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 347
    :pswitch_6
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->startDownload()V

    goto :goto_0

    .line 353
    :pswitch_7
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 355
    :sswitch_0
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 356
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 357
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doUploadTask()V

    goto :goto_0

    .line 361
    :sswitch_1
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 362
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 368
    :pswitch_8
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 381
    :pswitch_9
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOAD_FAILED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 382
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 370
    :pswitch_a
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_WAITING_PAIRING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 371
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto :goto_0

    .line 375
    :pswitch_b
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PRODUCT_RESET:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 376
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doResetProduct()V

    .line 377
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 388
    :pswitch_c
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 390
    :pswitch_d
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 391
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 397
    :pswitch_e
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    .line 399
    :pswitch_f
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UPLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 400
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 401
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doUploadTask()V

    goto/16 :goto_0

    .line 407
    :pswitch_10
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    .line 409
    :pswitch_11
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALLING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 410
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 411
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doInstall()V

    goto/16 :goto_0

    .line 417
    :pswitch_12
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7

    goto/16 :goto_0

    .line 419
    :pswitch_13
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALLING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 420
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    .line 421
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doInstall()V

    goto/16 :goto_0

    .line 427
    :pswitch_14
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8

    goto/16 :goto_0

    .line 429
    :pswitch_15
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doInstallDone()V

    .line 430
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_INSTALL_DONE:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 431
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->notifyStateChange()V

    goto/16 :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_14
    .end packed-switch

    .line 326
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 345
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_6
    .end packed-switch

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    .line 368
    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 388
    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_d
    .end packed-switch

    .line 397
    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_f
    .end packed-switch

    .line 407
    :pswitch_data_6
    .packed-switch 0xb
        :pswitch_11
    .end packed-switch

    .line 417
    :pswitch_data_7
    .packed-switch 0xb
        :pswitch_13
    .end packed-switch

    .line 427
    :pswitch_data_8
    .packed-switch 0xc
        :pswitch_15
    .end packed-switch
.end method

.method private startDownload()V
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_DOWNLOADING:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 483
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_DOWNLOADING_UPDATED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 484
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->doDownloadTask()V

    .line 485
    return-void
.end method

.method private unregisterBroadCast()V
    .locals 2

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mRegistered:Z

    .line 547
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mBluetoothPairStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 549
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CLOSED:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->cancelTask()V

    .line 264
    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask;->cancelTask()V

    .line 268
    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    .line 270
    :cond_1
    return-void
.end method

.method public getAvailableUpdateList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/update/task/AvailableUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mAvailableUpdateList:Ljava/util/List;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isDeviceReadyForUpload()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 294
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    if-eqz v6, :cond_5

    .line 295
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v4, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 296
    .local v4, "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v6}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    .end local v4    # "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :goto_0
    return v5

    .line 300
    .restart local v4    # "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    const/4 v0, 0x0

    .line 302
    .local v0, "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterController;->mKnownGamePadList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 303
    .local v2, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    move-object v0, v2

    .line 308
    .end local v2    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_2
    if-eqz v0, :cond_3

    .line 309
    invoke-static {v1, v0}, Lcom/parrot/freeflight/update/GamePadUpdaterHelper;->addGamePadToConnectedProductList(Ljava/util/List;Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 311
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 312
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 317
    .end local v0    # "connectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    .end local v1    # "connectedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    .end local v3    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v4    # "uploadingProduct":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 207
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/update/UpdaterController;->setRetainInstance(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mContext:Landroid/content/Context;

    .line 210
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "UPDATE_EVENT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "UPDATE_EVENT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/update/UpdaterController$Event;->valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/update/UpdaterController$Event;

    move-result-object v1

    .line 216
    .local v1, "launchEvent":Lcom/parrot/freeflight/update/UpdaterController$Event;
    const-string v2, "UPDATE_PRODUCT_ID_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProductId:Ljava/lang/String;

    .line 217
    const-string v2, "UPDATE_PRODUCT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 218
    const-string v2, "UPDATE_CURRENT_VERSION_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentVersion:Ljava/lang/String;

    .line 219
    const-string v2, "UPDATE_TARGET_VERSION_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetVersion:Ljava/lang/String;

    .line 221
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$5;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$Event:[I

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 231
    .end local v1    # "launchEvent":Lcom/parrot/freeflight/update/UpdaterController$Event;
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v1    # "launchEvent":Lcom/parrot/freeflight/update/UpdaterController$Event;
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->startDownload()V

    goto :goto_0

    .line 226
    :pswitch_1
    sget-object v2, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PREPARING_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 227
    new-instance v2, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterController;->mTargetProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    const-string v5, "UPDATE_NEED_TRAMPOLINE_UPDATE_KEY"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/parrot/freeflight/update/task/AvailableUpdate;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ZZ)V

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/UpdaterController;->startUpload(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    .line 236
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mDownloaderTask:Lcom/parrot/freeflight/update/task/DownloaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/DownloaderTask;->cancelTask()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploaderTask:Lcom/parrot/freeflight/update/task/UploaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/task/UploaderTask;->cancelTask()V

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterController;->unregisterBroadCast()V

    .line 244
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 245
    return-void
.end method

.method public retryDownload()V
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_DOWNLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 287
    return-void
.end method

.method public retryUpload()V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_RETRY_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 291
    return-void
.end method

.method public setProcessingListener(Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;)V
    .locals 2
    .param p1, "processingListener"    # Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 475
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PRODUCT_RESET:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingListener:Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProcessingHandler:Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingHandler;->getProgress()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;->onDroneResetProgressChange(F)V

    .line 479
    :cond_0
    return-void
.end method

.method public setProgressListener(Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;)V
    .locals 2
    .param p1, "progressListener"    # Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 468
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    .line 469
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mProgressListener:Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;

    iget v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mCurrentProgress:F

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;->onProgressChange(F)V

    .line 472
    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/parrot/freeflight/update/UpdaterController$StateListener;)V
    .locals 3
    .param p1, "stateListener"    # Lcom/parrot/freeflight/update/UpdaterController$StateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 461
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    .line 462
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mStateListener:Lcom/parrot/freeflight/update/UpdaterController$StateListener;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterController;->mModel:Lcom/parrot/freeflight/update/DroneModelWrapper;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/DroneModelWrapper;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/parrot/freeflight/update/UpdaterController$StateListener;->onStateChange(Lcom/parrot/freeflight/update/UpdaterController$State;Lcom/parrot/freeflight/core/model/Model;)V

    .line 465
    :cond_0
    return-void

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUpload(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 3
    .param p1, "availableUpdate"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    const-string v0, "FF4.Updater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start upload task for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterController;->mUploadingUpdate:Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 278
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/UpdaterController;->isDeviceReadyForUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_START_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterController$Event;->EVENT_UPLOADING_FAILED:Lcom/parrot/freeflight/update/UpdaterController$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/UpdaterController;->runStateMachine(Lcom/parrot/freeflight/update/UpdaterController$Event;)V

    goto :goto_0
.end method
