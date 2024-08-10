.class public Lcom/parrot/freeflight/gamepad/GamePadManager;
.super Ljava/lang/Object;
.source "GamePadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/GamePadManager$LockReason;,
        Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;,
        Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;,
        Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    }
.end annotation


# static fields
.field public static final LOCK_REASON_CALIBRATION:I = 0x4

.field public static final LOCK_REASON_FORCE_UPDATE:I = 0x2

.field private static final LOCK_REASON_NONE:I = 0x0

.field public static final LOCK_REASON_REGISTRATION_NEEDED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentDialog:Landroid/app/Dialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

.field private final mDiscoveryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockReasons:I

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRcControllerConnected:Z

.field private final mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVirtualInputDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Lcom/parrot/freeflight/core/model/ModelStore;Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "modelStore"    # Lcom/parrot/freeflight/core/model/ModelStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mLockReasons:I

    .line 230
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$4;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    .line 278
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$5;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    .line 348
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$6;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$6;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    .line 101
    invoke-static {p3}, Lcom/parrot/freeflight/gamepad/GamePadDiscoveryFactory;->create(Landroid/content/Context;)Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 110
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnCurrentActivityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;)V

    .line 118
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/gamepad/GamePadManager;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifyCurrentActivityChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifyGamePadListListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/core/model/ModelStore;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addVirtualInputDevice(Lcom/parrot/freeflight/gamepad/GamePad;)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/GamePadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/GamePadManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mRcControllerConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/gamepad/GamePadManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mRcControllerConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifySelectedVirtualInputDeviceChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/gamepad/GamePadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    return-object v0
.end method

.method private addVirtualInputDevice(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 4
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 165
    .local v0, "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->close()V

    .line 169
    .end local v0    # "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-direct {v1, p1, p0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;-><init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    .line 170
    .local v1, "virtualInputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method private getList(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/gamepad/VirtualInputDevice;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "inputDeviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/gamepad/VirtualInputDevice;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 343
    .local v0, "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    .end local v0    # "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_0
    return-object v1
.end method

.method private lockGamePadMode()V
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 382
    .local v0, "selectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->lockGamePadMode()V

    .line 385
    :cond_0
    return-void
.end method

.method private notifyCurrentActivityChange()V
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

    .line 311
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentActivityChange(Landroid/app/Activity;)V

    goto :goto_0

    .line 313
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    :cond_0
    return-void
.end method

.method private notifyCurrentDialogChange()V
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;

    .line 317
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentDialog:Landroid/app/Dialog;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentDialogChange(Landroid/app/Dialog;)V

    goto :goto_0

    .line 319
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
    :cond_0
    return-void
.end method

.method private notifyGamePadListListeners()V
    .locals 5

    .prologue
    .line 331
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 332
    .local v1, "knownGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 333
    .local v0, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 334
    .local v2, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
    invoke-interface {v2, v1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;->onGamePadListChange(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 336
    .end local v2    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
    :cond_0
    return-void
.end method

.method private notifySelectedVirtualInputDeviceChange()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 274
    .local v0, "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;->onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 276
    .end local v0    # "listener":Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
    :cond_1
    return-void
.end method

.method private unlockGamePadMode()V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 389
    .local v0, "selectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->unlockGamePadMode()V

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public addCurrentWindowListener(Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentActivity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentActivityChange(Landroid/app/Activity;)V

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentDialog:Landroid/app/Dialog;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;->onCurrentDialogChange(Landroid/app/Dialog;)V

    .line 303
    return-void
.end method

.method public addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;->onGamePadListChange(Ljava/util/List;Ljava/util/List;)V

    .line 324
    return-void
.end method

.method public addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;->onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 266
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->close()V

    .line 176
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unselectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 180
    .local v0, "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->close()V

    goto :goto_0

    .line 182
    .end local v0    # "inputDevice":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 183
    return-void
.end method

.method public forget(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockGamePadMode(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 399
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mLockReasons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mLockReasons:I

    .line 400
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->lockGamePadMode()V

    .line 401
    return-void
.end method

.method public removeCurrentWindowListener(Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$CurrentWindowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentWindowListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedGamePadListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public selectDefaultGamePad()V
    .locals 4

    .prologue
    .line 221
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 222
    .local v0, "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    .line 223
    .local v1, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Lcom/parrot/freeflight/gamepad/RcControllerGamePad;

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 228
    .end local v0    # "device":Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
    .end local v1    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_1
    return-void
.end method

.method public selectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 4
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->getGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    .line 188
    .local v0, "currentGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :goto_0
    const-string v1, "FF4.GamePad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select new game pad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eq v0, p1, :cond_2

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->removeListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 194
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->unlockGamePadMode()V

    .line 195
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 200
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedListener:Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addSelectedListener(Lcom/parrot/freeflight/gamepad/GamePad$SelectedListener;)V

    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-nez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 204
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-nez v1, :cond_4

    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-nez v1, :cond_5

    .line 212
    const-string v1, "FF4.GamePad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected game pad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but cannot find a virtual input device for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    :goto_2
    return-void

    .line 186
    .end local v0    # "currentGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v0    # "currentGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 214
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->start()V

    .line 215
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->addListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V

    goto :goto_2
.end method

.method public setCurrentDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 376
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mCurrentDialog:Landroid/app/Dialog;

    .line 377
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->notifyCurrentDialogChange()V

    .line 378
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadManager$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$2;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    new-instance v1, Lcom/parrot/freeflight/gamepad/GamePadManager$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/GamePadManager$3;-><init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 159
    return-void
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->startScan()V

    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->addListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 368
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->removeListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mGamePadDiscovery:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->stopScan()V

    .line 373
    return-void
.end method

.method public unlockGamePadMode(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 408
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mLockReasons:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mLockReasons:I

    .line 409
    iget v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mLockReasons:I

    if-nez v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unlockGamePadMode()V

    .line 412
    :cond_0
    return-void
.end method

.method public unselectGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 2
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 245
    const-string v0, "FF4.GamePad"

    const-string/jumbo v1, "unselectGamePad: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mVirtualInputDeviceListener:Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->removeListener(Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;)V

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->stop()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager;->mSelectedVirtualInputDevice:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .line 252
    :cond_0
    return-void
.end method
