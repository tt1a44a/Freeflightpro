.class public Lcom/parrot/freeflight/update/view/UpdateListController;
.super Ljava/lang/Object;
.source "UpdateListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/view/UpdateListController$CheckServerUpdateTask;,
        Lcom/parrot/freeflight/update/view/UpdateListController$Listener;
    }
.end annotation


# static fields
.field private static final UPDATE_CHECK_MIN_INTERVAL_DURATION_MS:J = 0xa4cb800L


# instance fields
.field private mCheckingInternetConnection:Z

.field private mCheckingServerUpdate:Z

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneConnected:Z

.field private mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasInternet:Z

.field private final mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNbProductsToUpdate:I

.field private mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRemoteCtrlConnected:Z

.field private mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRemoteCtrlModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTrampolineFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUpdateFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUserProducts:Ljava/util/List;
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

.field private final mUserSettings:Lcom/parrot/freeflight/user/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userSettings"    # Lcom/parrot/freeflight/user/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/parrot/freeflight/update/view/UpdateListController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/view/UpdateListController$1;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    .line 91
    new-instance v0, Lcom/parrot/freeflight/update/view/UpdateListController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/view/UpdateListController$2;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 106
    new-instance v0, Lcom/parrot/freeflight/update/view/UpdateListController$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/view/UpdateListController$3;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 121
    new-instance v0, Lcom/parrot/freeflight/update/view/UpdateListController$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/view/UpdateListController$4;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 129
    new-instance v0, Lcom/parrot/freeflight/update/view/UpdateListController$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/update/view/UpdateListController$5;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    .line 140
    iput-object p3, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserProducts:Ljava/util/List;

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUiHandler:Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUpdateFolder:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/freeflight/update/UpdateFolderProvider;->getSdkTrampolineFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mTrampolineFolder:Ljava/lang/String;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/view/UpdateListController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/view/UpdateListController;->processInternetConnectionChange(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mHasInternet:Z

    return p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneConnected:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mCheckingServerUpdate:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/update/view/UpdateListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/UpdateListController;->checkUpdateStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/update/view/UpdateListController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/update/view/UpdateListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/UpdateListController;->updateDroneConnectionState()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/update/view/UpdateListController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/UpdateListController;->updateRemoteCtrlConnectionState()V

    return-void
.end method

.method static synthetic access$902(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/UpdateListController;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mCheckingInternetConnection:Z

    return p1
.end method

.method private checkUpdateStatus()V
    .locals 26
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 184
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/update/view/UpdateListController;->mNbProductsToUpdate:I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserProducts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/parrot/freeflight/user/UserProduct;

    .line 187
    .local v17, "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mCheckingInternetConnection:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 189
    const/16 v22, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto :goto_0

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mCheckingServerUpdate:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 192
    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/user/UserProduct;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v9

    .line 195
    .local v9, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/user/UserProduct;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v11

    .line 196
    .local v11, "productVersionString":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 197
    const-string v11, "0.0.0"

    .line 201
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9, v11}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromEmbeddedVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v14

    .line 203
    .local v14, "shouldUpdateProductFromEmbeddedVersion":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9, v11}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->shouldUpdateProductFromServerVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v15

    .line 205
    .local v15, "shouldUpdateProductFromServerVersion":Z
    if-nez v14, :cond_3

    if-eqz v15, :cond_17

    .line 206
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mNbProductsToUpdate:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/freeflight/update/view/UpdateListController;->mNbProductsToUpdate:I

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9, v11}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductUpdateMandatory(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateMandatory(Z)V

    .line 210
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/user/UserProduct;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v22

    sget-object v23, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual/range {v22 .. v23}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 211
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    .line 279
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->saveProduct(Lcom/parrot/freeflight/user/UserProduct;)V

    goto/16 :goto_0

    .line 213
    :cond_5
    new-instance v10, Lcom/parrot/freeflight/update/task/DeviceVersion;

    invoke-direct {v10, v11, v9}, Lcom/parrot/freeflight/update/task/DeviceVersion;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 214
    .local v10, "productVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getServerFirmwareVersion(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v12

    .line 215
    .local v12, "serverStringVersion":Ljava/lang/String;
    new-instance v13, Lcom/parrot/freeflight/util/Version;

    if-eqz v12, :cond_a

    .end local v12    # "serverStringVersion":Ljava/lang/String;
    :goto_2
    invoke-direct {v13, v12}, Lcom/parrot/freeflight/util/Version;-><init>(Ljava/lang/String;)V

    .line 216
    .local v13, "serverVersion":Lcom/parrot/freeflight/util/Version;
    invoke-static {v10}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getTrampolineVersion(Lcom/parrot/freeflight/update/task/DeviceVersion;)Lcom/parrot/freeflight/util/Version;

    move-result-object v16

    .line 217
    .local v16, "trampolineVersion":Lcom/parrot/freeflight/util/Version;
    if-eqz v16, :cond_b

    iget-object v0, v10, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v22

    if-gez v22, :cond_b

    const/4 v8, 0x1

    .line 219
    .local v8, "needTrampolineUpdate":Z
    :goto_3
    if-eqz v8, :cond_c

    move-object/from16 v20, v16

    .line 221
    .local v20, "versionToCheck":Lcom/parrot/freeflight/util/Version;
    :goto_4
    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mTrampolineFolder:Ljava/lang/String;

    .line 223
    .local v5, "folder":Ljava/lang/String;
    :goto_5
    iget-object v0, v10, Lcom/parrot/freeflight/update/task/DeviceVersion;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/parrot/freeflight/update/task/PlfChecker;->compareDownloadedPlfToVersion(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;

    move-result-object v4

    .line 225
    .local v4, "deviceVersion":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->getLocalVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/parrot/freeflight/util/Version;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-gtz v22, :cond_e

    const/4 v6, 0x1

    .line 226
    .local v6, "isDeviceVersionUpToDate":Z
    :goto_6
    if-eqz v16, :cond_f

    iget-object v0, v10, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v22

    if-nez v22, :cond_f

    const/4 v7, 0x1

    .line 227
    .local v7, "isTrampolineVersion":Z
    :goto_7
    if-nez v6, :cond_6

    if-eqz v8, :cond_11

    :cond_6
    if-nez v7, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/user/UserProduct;->getUpdateState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 229
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneConnected:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlConnected:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    .line 230
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getSerial()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 231
    :cond_9
    const/16 v22, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    .line 232
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/user/UserProduct;->setNeedTrampolineUpdate(Z)V

    .line 236
    :goto_8
    if-eqz v4, :cond_4

    .line 237
    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->getLocalVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 215
    .end local v4    # "deviceVersion":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .end local v5    # "folder":Ljava/lang/String;
    .end local v6    # "isDeviceVersionUpToDate":Z
    .end local v7    # "isTrampolineVersion":Z
    .end local v8    # "needTrampolineUpdate":Z
    .end local v13    # "serverVersion":Lcom/parrot/freeflight/util/Version;
    .end local v16    # "trampolineVersion":Lcom/parrot/freeflight/util/Version;
    .end local v20    # "versionToCheck":Lcom/parrot/freeflight/util/Version;
    .restart local v12    # "serverStringVersion":Ljava/lang/String;
    :cond_a
    const-string v12, "0.0.0"

    goto/16 :goto_2

    .line 217
    .end local v12    # "serverStringVersion":Ljava/lang/String;
    .restart local v13    # "serverVersion":Lcom/parrot/freeflight/util/Version;
    .restart local v16    # "trampolineVersion":Lcom/parrot/freeflight/util/Version;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    .restart local v8    # "needTrampolineUpdate":Z
    :cond_c
    move-object/from16 v20, v13

    .line 219
    goto/16 :goto_4

    .line 221
    .restart local v20    # "versionToCheck":Lcom/parrot/freeflight/util/Version;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUpdateFolder:Ljava/lang/String;

    goto/16 :goto_5

    .line 225
    .restart local v4    # "deviceVersion":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .restart local v5    # "folder":Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 226
    .restart local v6    # "isDeviceVersionUpToDate":Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 234
    .restart local v7    # "isTrampolineVersion":Z
    :cond_10
    const/16 v22, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto :goto_8

    .line 240
    :cond_11
    if-eqz v4, :cond_12

    iget-object v0, v10, Lcom/parrot/freeflight/update/task/DeviceVersion;->version:Lcom/parrot/freeflight/util/Version;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->getLocalVersion()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/parrot/freeflight/util/Version;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_14

    .line 241
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mHasInternet:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 242
    const/16 v22, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    .line 243
    invoke-virtual {v13}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_13
    const/16 v22, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto/16 :goto_1

    .line 247
    :cond_14
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/freeflight/user/UserProduct;->getUpdateState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mHasInternet:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 251
    const/16 v22, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    .line 252
    invoke-virtual {v13}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 254
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->getLocalVersion()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v9, v1}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->isProductVersionBlacklisted(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 256
    const/16 v22, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto/16 :goto_1

    .line 259
    :cond_16
    const/16 v22, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    .line 260
    invoke-virtual {v13}, Lcom/parrot/freeflight/util/Version;->getStringVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateVersion(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v4}, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->getLocalVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setAdditionalUpdateVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 267
    .end local v4    # "deviceVersion":Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
    .end local v5    # "folder":Ljava/lang/String;
    .end local v6    # "isDeviceVersionUpToDate":Z
    .end local v7    # "isTrampolineVersion":Z
    .end local v8    # "needTrampolineUpdate":Z
    .end local v10    # "productVersion":Lcom/parrot/freeflight/update/task/DeviceVersion;
    .end local v13    # "serverVersion":Lcom/parrot/freeflight/util/Version;
    .end local v16    # "trampolineVersion":Lcom/parrot/freeflight/util/Version;
    .end local v20    # "versionToCheck":Lcom/parrot/freeflight/util/Version;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mHasInternet:Z

    move/from16 v22, v0

    if-nez v22, :cond_1a

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/parrot/freeflight/util/FirmwareVersionChecker;->getLastSuccessfulVersionUpdate(Landroid/content/Context;)J

    move-result-wide v18

    .line 270
    .local v18, "updateTimeStamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 271
    .local v2, "currentTimeStamp":J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-eqz v22, :cond_18

    sub-long v22, v2, v18

    const-wide/32 v24, 0xa4cb800

    cmp-long v22, v22, v24

    if-lez v22, :cond_19

    .line 272
    :cond_18
    const/16 v22, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto/16 :goto_1

    .line 274
    :cond_19
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto/16 :goto_1

    .line 277
    .end local v2    # "currentTimeStamp":J
    .end local v18    # "updateTimeStamp":J
    :cond_1a
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserProduct;->setUpdateState(I)V

    goto/16 :goto_1

    .line 283
    .end local v9    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v11    # "productVersionString":Ljava/lang/String;
    .end local v14    # "shouldUpdateProductFromEmbeddedVersion":Z
    .end local v15    # "shouldUpdateProductFromServerVersion":Z
    .end local v17    # "userProduct":Lcom/parrot/freeflight/user/UserProduct;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/UpdateListController;->mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/parrot/freeflight/update/view/UpdateListController$Listener;->onListUpdated()V

    .line 286
    :cond_1c
    return-void
.end method

.method private populateUserProducts()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserProducts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v0

    .line 178
    .local v0, "settings":Lcom/parrot/freeflight/user/UserSettings;
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserProducts:Ljava/util/List;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getKnownDrones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserProducts:Ljava/util/List;

    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserSettings;->getKnownRemoteCtrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    return-void
.end method

.method private processInternetConnectionChange(Z)V
    .locals 2
    .param p1, "hasInternet"    # Z
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight/update/view/UpdateListController$6;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/update/view/UpdateListController$6;-><init>(Lcom/parrot/freeflight/update/view/UpdateListController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method private updateDroneConnectionState()V
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    .line 311
    .local v0, "droneConnected":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneConnected:Z

    if-eq v0, v1, :cond_0

    .line 312
    iput-boolean v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneConnected:Z

    .line 313
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/UpdateListController;->checkUpdateStatus()V

    .line 318
    .end local v0    # "droneConnected":Z
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneConnected:Z

    goto :goto_0
.end method

.method private updateRemoteCtrlConnectionState()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v0

    .line 323
    .local v0, "remoteCtrlModelConnected":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlConnected:Z

    if-eq v0, v1, :cond_0

    .line 324
    iput-boolean v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlConnected:Z

    .line 325
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/UpdateListController;->checkUpdateStatus()V

    .line 330
    .end local v0    # "remoteCtrlModelConnected":Z
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlConnected:Z

    goto :goto_0
.end method


# virtual methods
.method public getNbProductsToUpdate()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mNbProductsToUpdate:I

    return v0
.end method

.method public getUserProducts()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/user/UserProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mUserProducts:Ljava/util/List;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModel:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModel:Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 167
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mCheckingInternetConnection:Z

    .line 149
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/UpdateListController;->populateUserProducts()V

    .line 150
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/UpdateListController;->checkUpdateStatus()V

    .line 152
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mRemoteCtrlModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 155
    return-void
.end method

.method public setOnListUpdatedListener(Lcom/parrot/freeflight/update/view/UpdateListController$Listener;)V
    .locals 1
    .param p1, "onListUpdatedListener"    # Lcom/parrot/freeflight/update/view/UpdateListController$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 333
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;

    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController;->mOnListUpdatedListener:Lcom/parrot/freeflight/update/view/UpdateListController$Listener;

    invoke-interface {v0}, Lcom/parrot/freeflight/update/view/UpdateListController$Listener;->onListUpdated()V

    .line 337
    :cond_0
    return-void
.end method
