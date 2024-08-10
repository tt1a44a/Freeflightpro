.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
.super Landroid/support/v4/app/Fragment;
.source "DroneMemoryController.java"

# interfaces
.implements Lcom/parrot/freeflight/media/model/IMediaStore;


# static fields
.field private static final DEBUG_LIFECYCLE:Z = true

.field public static final DEVICE_SERVICE_EXTRA:Ljava/lang/String; = "DEVICE_SERVICE_EXTRA"

.field public static final MASS_STORAGE_ID_KEY_EXTRA:Ljava/lang/String; = "MASS_STORAGE_ID_KEY_EXTRA"

.field public static final MASS_STORAGE_PATH_EXTRA:Ljava/lang/String; = "MASS_STORAGE_PATH_EXTRA"

.field public static final SKY_DEVICE_SERVICE_EXTRA:Ljava/lang/String; = "SKY_DEVICE_SERVICE_EXTRA"

.field private static final TAG:Ljava/lang/String; = "StorageController"


# instance fields
.field private mClosed:Z

.field private mCurrentMassStorageIdKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeleteDelegateListener:Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeleteErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDeleteListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteMediaTasks:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/media/task/MediaTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteOperationProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDeleteOperations:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGetAllMediaDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGetMediaThumbnailTaskListener:Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;

.field private mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastDeleteError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastMediaListError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLoaded:Z

.field private mMassStoragePath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaList:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaListErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
            "<[",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaListResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaObjectObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStorageInfoListeners:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailLoaded:Z

.field private final mTransferDelegateListener:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTransferErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTransferListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferMediaTasks:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/media/task/MediaTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferOperationProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTransferOperations:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    .line 52
    new-instance v0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaObjectObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    .line 55
    new-instance v0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    .line 58
    new-instance v0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    .line 61
    new-instance v0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    .line 67
    new-instance v0, Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    .line 70
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    .line 78
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    .line 86
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$3;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    .line 94
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$4;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    .line 102
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$5;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    .line 110
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$6;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$6;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mStorageInfoListeners:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferMediaTasks:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteMediaTasks:Ljava/util/ArrayList;

    .line 150
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastMediaListError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 153
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 156
    sget-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastDeleteError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferOperations:Ljava/util/HashMap;

    .line 162
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$7;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$7;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferOperationProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;

    .line 172
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$8;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$8;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferDelegateListener:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteOperations:Ljava/util/HashMap;

    .line 213
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$9;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$9;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteOperationProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;

    .line 221
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$10;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;

    .line 261
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$11;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$11;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetMediaThumbnailTaskListener:Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;

    .line 287
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController$12;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteDelegateListener:Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->refreshThumbnails()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteOperations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLoaded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->notifyListChanged()V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaObjectObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastMediaListError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mThumbnailLoaded:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Lcom/parrot/freeflight/media/task/MediaTask;)Lcom/parrot/freeflight/media/task/MediaTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/task/MediaTask;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteMediaTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastDeleteError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/util/observer/SuspendableObservable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferOperations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferMediaTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    return-object p1
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;)Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    return-object v0
.end method

.method private cancelThumbnailDownloading()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 644
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 647
    :cond_1
    return-void
.end method

.method public static getFtpNetworkHandler(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
    .locals 4
    .param p0, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "skyDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    if-eqz p1, :cond_0

    .end local p1    # "skyDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :goto_0
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    sget-object v3, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_GENERIC:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)V

    return-object v1

    .restart local p1    # "skyDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static newInstance(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    .locals 3
    .param p0, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "skyDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "massStoragePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentMassStorageIdKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 324
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-direct {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;-><init>()V

    .line 325
    .local v1, "controller":Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "DEVICE_SERVICE_EXTRA"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    const-string v2, "SKY_DEVICE_SERVICE_EXTRA"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    const-string v2, "MASS_STORAGE_PATH_EXTRA"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "MASS_STORAGE_ID_KEY_EXTRA"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->setArguments(Landroid/os/Bundle;)V

    .line 331
    return-object v1
.end method

.method private notifyListChanged()V
    .locals 4

    .prologue
    .line 678
    iget-boolean v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLoaded:Z

    if-eqz v3, :cond_0

    .line 679
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/parrot/freeflight/media/model/MediaItem;

    .line 680
    .local v2, "mediaItems":[Lcom/parrot/freeflight/media/model/MediaItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 681
    new-instance v1, Lcom/parrot/freeflight/media/model/MediaItem;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-direct {v1, v3}, Lcom/parrot/freeflight/media/model/MediaItem;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;)V

    .line 682
    .local v1, "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    aput-object v1, v2, v0

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    .end local v1    # "mediaItem":Lcom/parrot/freeflight/media/model/MediaItem;
    .end local v2    # "mediaItems":[Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_0
    const/4 v2, 0x0

    .line 687
    .restart local v2    # "mediaItems":[Lcom/parrot/freeflight/media/model/MediaItem;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    .line 688
    return-void
.end method

.method private refreshThumbnails()V
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mClosed:Z

    if-nez v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->requestAllThumbnail()Lcom/parrot/freeflight/media/task/MediaTask;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 468
    :cond_0
    return-void
.end method

.method private requestAllMedia()Lcom/parrot/freeflight/media/task/MediaTask;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 613
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    if-eqz v2, :cond_0

    .line 614
    new-instance v0, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaDelegateListener:Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate$Listener;Z)V

    .line 615
    .local v0, "delegate":Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;
    new-instance v1, Lcom/parrot/freeflight/media/task/MediaTask;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMassStoragePath:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/parrot/freeflight/media/task/MediaTask;-><init>(Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;ILjava/lang/String;)V

    .line 616
    .local v1, "task":Lcom/parrot/freeflight/media/task/MediaTask;
    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFtpDefaultExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/media/task/MediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 619
    .end local v0    # "delegate":Lcom/parrot/freeflight/media/task/delegate/GetAllMediaTaskDelegate;
    .end local v1    # "task":Lcom/parrot/freeflight/media/task/MediaTask;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requestAllThumbnail()Lcom/parrot/freeflight/media/task/MediaTask;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 625
    .local v0, "currentTask":Lcom/parrot/freeflight/media/task/MediaTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_2

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 627
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_2

    .line 628
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v3, :cond_2

    .line 629
    new-instance v1, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;

    invoke-static {}, Lcom/parrot/freeflight/MainApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetMediaThumbnailTaskListener:Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;

    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaList:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate$Listener;Ljava/util/List;)V

    .line 630
    .local v1, "delegate":Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;
    new-instance v2, Lcom/parrot/freeflight/media/task/MediaTask;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMassStoragePath:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/parrot/freeflight/media/task/MediaTask;-><init>(Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;ILjava/lang/String;)V

    .line 631
    .local v2, "task":Lcom/parrot/freeflight/media/task/MediaTask;
    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFtpDefaultExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/media/task/MediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 636
    .end local v1    # "delegate":Lcom/parrot/freeflight/media/task/delegate/GetMediaThumbnailTaskDelegate;
    .end local v2    # "task":Lcom/parrot/freeflight/media/task/MediaTask;
    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    goto :goto_0
.end method

.method private requestDeleteMedia([Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/task/MediaTask;
    .locals 5
    .param p1, "mediaObjects"    # [Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 664
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    if-eqz v2, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->cancelThumbnailDownloading()V

    .line 666
    new-instance v0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteDelegateListener:Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;

    invoke-direct {v0, p1, v2}, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;-><init>([Lcom/parrot/arsdk/armedia/ARMediaObject;Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;)V

    .line 667
    .local v0, "delegate":Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;
    new-instance v1, Lcom/parrot/freeflight/media/task/MediaTask;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMassStoragePath:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/parrot/freeflight/media/task/MediaTask;-><init>(Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;ILjava/lang/String;)V

    .line 668
    .local v1, "task":Lcom/parrot/freeflight/media/task/MediaTask;
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteMediaTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFtpOperationExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/media/task/MediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 672
    .end local v0    # "delegate":Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;
    .end local v1    # "task":Lcom/parrot/freeflight/media/task/MediaTask;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requestTransferMedia([Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/task/MediaTask;
    .locals 5
    .param p1, "mediaObjects"    # [Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 651
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    if-eqz v2, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->cancelThumbnailDownloading()V

    .line 653
    new-instance v0, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;

    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferDelegateListener:Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;

    invoke-direct {v0, v2, p1, v3}, Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;-><init>(Lcom/parrot/freeflight/core/academy/MediaManager;[Lcom/parrot/arsdk/armedia/ARMediaObject;Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate$Listener;)V

    .line 654
    .local v0, "delegate":Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;
    new-instance v1, Lcom/parrot/freeflight/media/task/MediaTask;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMassStoragePath:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/parrot/freeflight/media/task/MediaTask;-><init>(Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;ILjava/lang/String;)V

    .line 655
    .local v1, "task":Lcom/parrot/freeflight/media/task/MediaTask;
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferMediaTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getFtpOperationExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/media/task/MediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 659
    .end local v0    # "delegate":Lcom/parrot/freeflight/media/task/delegate/TransferMediaTaskDelegate;
    .end local v1    # "task":Lcom/parrot/freeflight/media/task/MediaTask;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelMediaDelete()V
    .locals 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteMediaTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/MediaTask;

    .line 557
    .local v0, "task":Lcom/parrot/freeflight/media/task/MediaTask;
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    goto :goto_0

    .line 559
    .end local v0    # "task":Lcom/parrot/freeflight/media/task/MediaTask;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteMediaTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 560
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteOperations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 561
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastDeleteError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 562
    return-void
.end method

.method public cancelMediaLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 473
    .local v0, "currentTask":Lcom/parrot/freeflight/media/task/MediaTask;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    .line 475
    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 478
    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    .line 480
    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetThumbnailTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 482
    :cond_1
    return-void
.end method

.method public cancelMediaTransfer()V
    .locals 3

    .prologue
    .line 518
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferMediaTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/MediaTask;

    .line 519
    .local v0, "task":Lcom/parrot/freeflight/media/task/MediaTask;
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    goto :goto_0

    .line 521
    .end local v0    # "task":Lcom/parrot/freeflight/media/task/MediaTask;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferMediaTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 522
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferOperations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 523
    sget-object v1, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 524
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mClosed:Z

    .line 602
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->clearObservers()V

    .line 603
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaObjectObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->clearObservers()V

    .line 604
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->clearObservers()V

    .line 605
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->clearObservers()V

    .line 606
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->clearObservers()V

    .line 607
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->clearObservers()V

    .line 608
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->clearObservers()V

    .line 609
    return-void
.end method

.method public deleteMedias([Lcom/parrot/freeflight/media/model/FileItem;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V
    .locals 9
    .param p1, "items"    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/parrot/freeflight/media/model/FileItem;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "deleteListObserver":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<[Lcom/parrot/freeflight/media/model/FileOperation;>;"
    .local p3, "resultObserver":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<Lcom/parrot/freeflight/media/model/MediaStoreError;>;"
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v7, p2}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 529
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v7, p3}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 530
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v6, "newMediaObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    array-length v7, p1

    new-array v2, v7, [Lcom/parrot/freeflight/media/model/FileOperation;

    .line 532
    .local v2, "fileOperations":[Lcom/parrot/freeflight/media/model/FileOperation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_1

    .line 533
    aget-object v7, p1, v3

    invoke-virtual {v7}, Lcom/parrot/freeflight/media/model/FileItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v4

    .line 534
    .local v4, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteOperations:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 535
    .local v1, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-nez v1, :cond_0

    .line 536
    new-instance v1, Lcom/parrot/freeflight/media/model/FileOperation;

    .end local v1    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteOperationProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;

    invoke-direct {v1, v7}, Lcom/parrot/freeflight/media/model/FileOperation;-><init>(Lcom/parrot/freeflight/media/model/FileOperation$IProvider;)V

    .line 537
    .restart local v1    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteOperations:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_0
    aput-object v1, v2, v3

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v4    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastDeleteError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    sget-object v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v7, v8, :cond_3

    .line 543
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 544
    .local v5, "mediaObjects":[Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->requestDeleteMedia([Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/task/MediaTask;

    .line 545
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v7, v2}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    .line 552
    .end local v5    # "mediaObjects":[Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_2
    :goto_1
    return-void

    .line 547
    :cond_3
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    sget-object v8, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-eq v7, v8, :cond_2

    .line 548
    new-instance v0, Lcom/parrot/freeflight/media/model/MediaStoreError;

    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastDeleteError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-direct {v0, v7, v8}, Lcom/parrot/freeflight/media/model/MediaStoreError;-><init>(Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 549
    .local v0, "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    iget-object v7, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v7, v0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getDeleteErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    return-object v0
.end method

.method public getDeleteListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeleteListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    return-object v0
.end method

.method public getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method public getMediaListErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    return-object v0
.end method

.method public getMediaListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    return-object v0
.end method

.method public getTransferErrorProvider()Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    return-object v0
.end method

.method public getTransferListProvider()Lcom/parrot/freeflight/media/model/ItemList$IProvider;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/media/model/ItemList$IProvider",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferListProvider:Lcom/parrot/freeflight/media/model/ItemList$IProvider;

    return-object v0
.end method

.method public loadMedias(Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V
    .locals 4
    .param p1    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/MediaItem;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "mediaListObserver":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<[Lcom/parrot/freeflight/media/model/MediaItem;>;"
    .local p2, "mediaObjectObserver":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    .local p3, "errorObserver":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<Lcom/parrot/freeflight/media/model/MediaStoreError;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 444
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaObjectObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v2, p2}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 445
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v2, p3}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 447
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastMediaListError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    sget-object v3, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v2, v3, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->notifyListChanged()V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 456
    .local v0, "currentTask":Lcom/parrot/freeflight/media/task/MediaTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 462
    :cond_0
    return-void

    .line 451
    .end local v0    # "currentTask":Lcom/parrot/freeflight/media/task/MediaTask;
    :cond_1
    new-instance v1, Lcom/parrot/freeflight/media/model/MediaStoreError;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastMediaListError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-direct {v1, v2, v3}, Lcom/parrot/freeflight/media/model/MediaStoreError;-><init>(Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 452
    .local v1, "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMediaListResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public loadSizeInfo(Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 428
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mStorageInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mStorageInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 338
    const-string v1, "StorageController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnCreate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->setRetainInstance(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 343
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "DEVICE_SERVICE_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 344
    const-string v1, "SKY_DEVICE_SERVICE_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 345
    const-string v1, "MASS_STORAGE_PATH_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mMassStoragePath:Ljava/lang/String;

    .line 346
    const-string v1, "MASS_STORAGE_ID_KEY_EXTRA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mCurrentMassStorageIdKey:Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mSkyDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->getFtpNetworkHandler(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    .line 349
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mFtpNetworkHandler:Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    if-eqz v1, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->requestAllMedia()Lcom/parrot/freeflight/media/task/MediaTask;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 365
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 389
    const-string v0, "StorageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/task/MediaTask;->cancelTask()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mGetAllMediaTask:Lcom/parrot/freeflight/media/task/MediaTask;

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->cancelThumbnailDownloading()V

    .line 396
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->cancelMediaTransfer()V

    .line 397
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->cancelMediaDelete()V

    .line 398
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->close()V

    .line 411
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 412
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 384
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 375
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 378
    return-void
.end method

.method public transferMedias([Lcom/parrot/freeflight/media/model/FileItem;Lcom/parrot/freeflight/util/observer/IObserver;Lcom/parrot/freeflight/util/observer/IObserver;)V
    .locals 10
    .param p1, "items"    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/util/observer/IObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/parrot/freeflight/media/model/FileItem;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<[",
            "Lcom/parrot/freeflight/media/model/FileOperation;",
            ">;",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p2, "transferListObserver":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<[Lcom/parrot/freeflight/media/model/FileOperation;>;"
    .local p3, "resultObserver":Lcom/parrot/freeflight/util/observer/IObserver;, "Lcom/parrot/freeflight/util/observer/IObserver<Lcom/parrot/freeflight/media/model/MediaStoreError;>;"
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v8, p2}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 487
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v8, p3}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 488
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v7, "newMediaObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/armedia/ARMediaObject;>;"
    array-length v8, p1

    new-array v3, v8, [Lcom/parrot/freeflight/media/model/FileOperation;

    .line 490
    .local v3, "fileOperations":[Lcom/parrot/freeflight/media/model/FileOperation;
    const/4 v0, 0x1

    .line 491
    .local v0, "completed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p1

    if-ge v4, v8, :cond_1

    .line 492
    aget-object v8, p1, v4

    invoke-virtual {v8}, Lcom/parrot/freeflight/media/model/FileItem;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v5

    .line 493
    .local v5, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferOperations:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 494
    .local v2, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-nez v2, :cond_0

    .line 495
    new-instance v2, Lcom/parrot/freeflight/media/model/FileOperation;

    .end local v2    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferOperationProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;

    invoke-direct {v2, v8}, Lcom/parrot/freeflight/media/model/FileOperation;-><init>(Lcom/parrot/freeflight/media/model/FileOperation$IProvider;)V

    .line 496
    .restart local v2    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferOperations:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    aput-object v2, v3, v4

    .line 500
    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperation;->isSucceeded()Z

    move-result v8

    and-int/2addr v0, v8

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 502
    .end local v2    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v5    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    sget-object v9, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v8, v9, :cond_3

    .line 503
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 504
    .local v6, "mediaObjects":[Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->requestTransferMedia([Lcom/parrot/arsdk/armedia/ARMediaObject;)Lcom/parrot/freeflight/media/task/MediaTask;

    .line 505
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferListObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v8, v3}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    .line 506
    if-eqz v0, :cond_2

    .line 507
    new-instance v1, Lcom/parrot/freeflight/media/model/MediaStoreError;

    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    iget-object v9, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-direct {v1, v8, v9}, Lcom/parrot/freeflight/media/model/MediaStoreError;-><init>(Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 508
    .local v1, "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v8, v1}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    .line 514
    .end local v1    # "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    .end local v6    # "mediaObjects":[Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_2
    :goto_1
    return-void

    .line 511
    :cond_3
    new-instance v1, Lcom/parrot/freeflight/media/model/MediaStoreError;

    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferErrorProvider:Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;

    iget-object v9, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mLastTransferError:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    invoke-direct {v1, v8, v9}, Lcom/parrot/freeflight/media/model/MediaStoreError;-><init>(Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 512
    .restart local v1    # "error":Lcom/parrot/freeflight/media/model/MediaStoreError;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mTransferResultObservable:Lcom/parrot/freeflight/util/observer/SuspendableObservable;

    invoke-virtual {v8, v1}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;->notifyChange(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public unregisterSizeInfoListener(Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/media/model/IMediaStore$StorageInfoListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->mStorageInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method
