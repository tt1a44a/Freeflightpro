.class public Lcom/parrot/freeflight/core/academy/DroneRegisterManager;
.super Ljava/lang/Object;
.source "DroneRegisterManager.java"


# static fields
.field private static final DRONE_REGISTRATION_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "drone_registration"

.field private static final DRONE_SIMULATOR_SERIAL:Ljava/lang/String; = "000000000000000000"

.field private static final SERIALS_SENT_SHARED_PREF_KEY:Ljava/lang/String; = "serials_sent"

.field private static final TAG:Ljava/lang/String; = "DroneRegisterManager"


# instance fields
.field private mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mInternetAvailable:Z

.field private mIsCanceled:Z

.field private mIsRunning:Z

.field private final mOnUserDroneChangeListener:Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUserSettings:Lcom/parrot/freeflight/user/UserSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userSettings"    # Lcom/parrot/freeflight/user/UserSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mInternetAvailable:Z

    .line 47
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsRunning:Z

    .line 48
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsCanceled:Z

    .line 50
    new-instance v0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$1;-><init>(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mOnUserDroneChangeListener:Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;

    .line 59
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    .line 60
    const-string v0, "drone_registration"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;)Lcom/parrot/freeflight/core/academy/AcademyService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;Lcom/parrot/freeflight/core/academy/AcademyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/DroneRegisterManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/academy/AcademyService;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->registerDrone(Lcom/parrot/freeflight/core/academy/AcademyService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/DroneRegisterManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private registerDrone(Lcom/parrot/freeflight/core/academy/AcademyService;)V
    .locals 13
    .param p1, "academyService"    # Lcom/parrot/freeflight/core/academy/AcademyService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x0

    .line 120
    iget-boolean v8, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsRunning:Z

    if-nez v8, :cond_4

    if-eqz p1, :cond_4

    iget-boolean v8, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mInternetAvailable:Z

    if-eqz v8, :cond_4

    .line 123
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsRunning:Z

    .line 124
    iput-boolean v12, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsCanceled:Z

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v7, "userDronesToRegister":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v5

    .line 130
    .local v5, "settings":Lcom/parrot/freeflight/user/UserSettings;
    invoke-virtual {v5}, Lcom/parrot/freeflight/user/UserSettings;->getKnownDrones()Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "knownDrones":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "serials_sent"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 133
    .local v4, "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 134
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 137
    .restart local v4    # "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/user/UserProduct;

    .line 138
    .local v0, "drone":Lcom/parrot/freeflight/user/UserProduct;
    invoke-virtual {v0}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "serial":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 140
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "000000000000000000"

    .line 141
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "_bridged"

    .line 142
    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 143
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "drone":Lcom/parrot/freeflight/user/UserProduct;
    .end local v3    # "serial":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v2, "newSerialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/user/UserProduct;

    .line 149
    .local v6, "userDrone":Lcom/parrot/freeflight/user/UserProduct;
    iget-boolean v9, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsCanceled:Z

    if-eqz v9, :cond_5

    .line 172
    .end local v6    # "userDrone":Lcom/parrot/freeflight/user/UserProduct;
    :cond_3
    iput-boolean v12, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsRunning:Z

    .line 174
    .end local v1    # "knownDrones":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    .end local v2    # "newSerialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "settings":Lcom/parrot/freeflight/user/UserSettings;
    .end local v7    # "userDronesToRegister":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    :cond_4
    return-void

    .line 154
    .restart local v1    # "knownDrones":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    .restart local v2    # "newSerialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "settings":Lcom/parrot/freeflight/user/UserSettings;
    .restart local v6    # "userDrone":Lcom/parrot/freeflight/user/UserProduct;
    .restart local v7    # "userDronesToRegister":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/user/UserProduct;>;"
    :cond_5
    new-instance v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;

    invoke-direct {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;-><init>()V

    .line 155
    .local v0, "drone":Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;
    invoke-virtual {v6}, Lcom/parrot/freeflight/user/UserProduct;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->setSerial(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v6}, Lcom/parrot/freeflight/user/UserProduct;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v9

    invoke-static {v9}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->setProductId(I)V

    .line 157
    invoke-virtual {v6}, Lcom/parrot/freeflight/user/UserProduct;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->setNickname(Ljava/lang/String;)V

    .line 158
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->setDevice(Ljava/lang/String;)V

    .line 159
    const-string v9, "DroneRegisterManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "registerDrone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;->getSerial()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v9, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;

    invoke-direct {v9, p0, v2, v0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager$2;-><init>(Lcom/parrot/freeflight/core/academy/DroneRegisterManager;Ljava/util/Set;Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;)V

    invoke-virtual {p1, v0, v9}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthAddDrone(Lcom/parrot/freeflight/core/academy/model/ARAcademyDrone;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthAddDroneListener;)I

    goto :goto_1
.end method


# virtual methods
.method public isDroneRegistered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "droneId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "serials_sent"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 83
    .local v0, "serialsAlreadySent":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onAcademyConnected(Lcom/parrot/freeflight/core/academy/AcademyService;)V
    .locals 1
    .param p1, "academyService"    # Lcom/parrot/freeflight/core/academy/AcademyService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->registerDrone(Lcom/parrot/freeflight/core/academy/AcademyService;)V

    .line 92
    return-void
.end method

.method onAcademyDisconnected()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 99
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsCanceled:Z

    .line 102
    :cond_0
    return-void
.end method

.method onNetworkChanged(Z)V
    .locals 1
    .param p1, "internetAvailable"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mInternetAvailable:Z

    .line 109
    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mAcademyService:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->registerDrone(Lcom/parrot/freeflight/core/academy/AcademyService;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsCanceled:Z

    goto :goto_0
.end method

.method start()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mOnUserDroneChangeListener:Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->addOnUserDroneChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;)V

    .line 69
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mUserSettings:Lcom/parrot/freeflight/user/UserSettings;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mOnUserDroneChangeListener:Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/user/UserSettings;->removeOnUserDroneChangeListener(Lcom/parrot/freeflight/user/UserSettings$OnUserDroneChangeListener;)V

    .line 76
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/DroneRegisterManager;->mIsCanceled:Z

    .line 79
    :cond_0
    return-void
.end method
