.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;
.super Ljava/lang/Object;
.source "ARDiscoveryNsdDiscovery.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

.field private context:Landroid/content/Context;

.field private final devicesServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;"
        }
    .end annotation
.end field

.field private isNetDiscovering:Ljava/lang/Boolean;

.field private mDiscoveryListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$DiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mResolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

.field private final netDeviceServicesHmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "supportedProducts":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    .line 72
    iput-boolean v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->opened:Z

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->devicesServices:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 80
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v1, v6, :cond_0

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v1, v6, :cond_1

    .line 78
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_FORMAT:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "devicesService":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    .end local v0    # "devicesService":Ljava/lang/String;
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    .line 91
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->initializeDiscoveryListeners()V

    .line 92
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->initializeResolveListener()V

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->devicesServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Landroid/net/nsd/NsdManager$ResolveListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mResolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Landroid/net/nsd/NsdManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method

.method private initializeDiscoveryListeners()V
    .locals 4

    .prologue
    .line 174
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    .line 175
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "type":Ljava/lang/String;
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)V

    .line 239
    .local v0, "dl":Landroid/net/nsd/NsdManager$DiscoveryListener;
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 241
    .end local v0    # "dl":Landroid/net/nsd/NsdManager$DiscoveryListener;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initializeResolveListener()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$2;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery$2;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mResolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    .line 297
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will stop searching for devices of type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v3, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 114
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 125
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->context:Landroid/content/Context;

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->opened:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getDeviceServicesArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
    .locals 2
    .param p1, "broadcaster"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 99
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->context:Landroid/content/Context;

    .line 100
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 106
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->context:Landroid/content/Context;

    const-string/jumbo v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 5

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will start searching for devices of type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NsdManager.PROTOCOL_DNS_SD:1 mDiscoveryListeners.get(type):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v3, v0, v4, v1}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 146
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->isNetDiscovering:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will stop searching for devices of type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->mDiscoveryListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v3, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 163
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;->isNetDiscovering:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public wifiAvailable(Z)V
    .locals 0
    .param p1, "wifiAvailable"    # Z

    .prologue
    .line 170
    return-void
.end method
