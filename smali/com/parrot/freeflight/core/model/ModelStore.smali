.class public Lcom/parrot/freeflight/core/model/ModelStore;
.super Ljava/lang/Object;
.source "ModelStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;,
        Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mBarometer:Lcom/parrot/freeflight/location/Barometer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/model/ModelStore$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserDrone:Lcom/parrot/freeflight/user/UserDrone;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mUserSettings:Lcom/parrot/freeflight/user/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/location/Barometer;)V
    .locals 1
    .param p1, "applicationManager"    # Lcom/parrot/freeflight/core/ApplicationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "connectionManager"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "userSettings"    # Lcom/parrot/freeflight/user/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "barometer"    # Lcom/parrot/freeflight/location/Barometer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Lcom/parrot/freeflight/core/model/ModelStore$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/ModelStore$4;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 315
    new-instance v0, Lcom/parrot/freeflight/core/model/ModelStore$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/ModelStore$5;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    iput-object p2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 71
    iput-object p4, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    .line 72
    iput-object p5, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 73
    iput-object p6, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    .line 74
    new-instance v0, Lcom/parrot/freeflight/core/model/ModelStore$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/model/ModelStore$1;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/ApplicationManager;->addOnApplicationVisibilityChangeListener(Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveDrone()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveRemoteCtrl()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/location/Barometer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mBarometer:Lcom/parrot/freeflight/location/Barometer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->notifyRemoteListeners()V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->loadRemoteCtrl()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserDrone;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/user/UserDrone;)Lcom/parrot/freeflight/user/UserDrone;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/user/UserDrone;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/model/ModelStore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->notifyListeners()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/location/SmartLocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    return-object v0
.end method

.method private loadDrone()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->loadFromStore()V

    .line 98
    :cond_0
    return-void
.end method

.method private loadRemoteCtrl()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->loadFromStore()V

    .line 110
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 243
    .local v0, "listener":Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/core/model/ModelStore$Listener;->onModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    goto :goto_0

    .line 245
    .end local v0    # "listener":Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    :cond_0
    return-void
.end method

.method private notifyRemoteListeners()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;

    .line 249
    .local v0, "listener":Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    iget-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;->onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    goto :goto_0

    .line 251
    .end local v0    # "listener":Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
    :cond_0
    return-void
.end method

.method private saveDrone()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->saveToStore()V

    .line 92
    :cond_0
    return-void
.end method

.method private saveRemoteCtrl()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->saveToStore()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/model/ModelStore$Listener;->onModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    .line 216
    return-void
.end method

.method public addRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;->onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V

    .line 225
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveDrone()V

    .line 194
    invoke-direct {p0}, Lcom/parrot/freeflight/core/model/ModelStore;->saveRemoteCtrl()V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 197
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserDrone:Lcom/parrot/freeflight/user/UserDrone;

    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mDroneModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/Model;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 202
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    .line 204
    :cond_0
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserRemoteCtrl:Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/Model;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/parrot/freeflight/core/model/Model;->listenEvents(Landroid/content/Context;Z)V

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/Model;->close()V

    .line 209
    iput-object v2, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    .line 211
    :cond_1
    return-void
.end method

.method public getModel()Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method public getRemoteCtrlModel()Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method public removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public removeRemoteCtrlListener(Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mRemoteCtrlListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    new-instance v1, Lcom/parrot/freeflight/core/model/ModelStore$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/model/ModelStore$2;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->addOnUserDroneChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/ModelStore;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    new-instance v1, Lcom/parrot/freeflight/core/model/ModelStore$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/model/ModelStore$3;-><init>(Lcom/parrot/freeflight/core/model/ModelStore;)V

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->addOnUserRemoteCtrlChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserRemoteCtrlChangeListener;)V

    .line 190
    return-void
.end method
