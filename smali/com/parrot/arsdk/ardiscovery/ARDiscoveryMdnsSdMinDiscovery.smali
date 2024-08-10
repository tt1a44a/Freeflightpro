.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;
.super Ljava/lang/Object;
.source "ARDiscoveryMdnsSdMinDiscovery.java"

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

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mWifiAvailable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

.field private final mdsnSdListener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final netDeviceServicesHmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private final networkStateChangedFilter:Landroid/content/IntentFilter;

.field private final networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private started:Z

.field private final wifiStateChangedFilter:Landroid/content/IntentFilter;

.field private final wifiStateIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

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

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->wifiStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$3;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$3;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdsnSdListener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    .line 79
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v4, "Creating MdsnSd based ARDiscovery"

    invoke-static {v2, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    .line 82
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 84
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v1, v6, :cond_0

    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v1, v6, :cond_1

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
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

    .line 90
    .local v0, "devicesService":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_DOMAIN:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v0    # "devicesService":Ljava/lang/String;
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    .line 96
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdsnSdListener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    invoke-direct {v3, v2, v4}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;-><init>([Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;)V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    .line 99
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    .line 100
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->wifiStateChangedFilter:Landroid/content/IntentFilter;

    .line 103
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->wifiStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->startOrStopDiscovery()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiAvailable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    return-object v0
.end method

.method private startOrStopDiscovery()V
    .locals 18

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v13, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 228
    .local v11, "wifi":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 229
    .local v3, "eth":Landroid/net/NetworkInfo;
    const/4 v10, 0x0

    .line 232
    .local v10, "netInterface":Ljava/net/NetworkInterface;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiAvailable:Z

    if-nez v13, :cond_2

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 234
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    .line 235
    .local v12, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    .line 236
    .local v9, "ipAddressInt":I
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%d.%d.%d.%d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    and-int/lit16 v0, v9, 0xff

    move/from16 v17, v0

    .line 237
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 238
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    shr-int/lit8 v17, v9, 0x18

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 236
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "ipAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 242
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    .line 243
    .local v7, "intfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_3
    if-nez v10, :cond_5

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 245
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 246
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 247
    .local v5, "interfaceAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_4
    :goto_1
    if-nez v10, :cond_3

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 249
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 250
    .local v4, "interfaceAddr":Ljava/net/InetAddress;
    invoke-virtual {v4, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_4

    .line 252
    move-object v10, v6

    goto :goto_1

    .line 257
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v4    # "interfaceAddr":Ljava/net/InetAddress;
    .end local v5    # "interfaceAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v7    # "intfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v14, "Unable to get the wifi network interface"

    invoke-static {v13, v14, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "ipAddress":Ljava/lang/String;
    .end local v9    # "ipAddressInt":I
    .end local v12    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiAvailable:Z

    if-nez v13, :cond_7

    if-eqz v11, :cond_6

    .line 266
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_7

    :cond_6
    if-eqz v3, :cond_8

    .line 267
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 269
    :cond_7
    sget-object v13, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v14, "Restaring MdsnSd"

    invoke-static {v13, v14}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v13}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->stop()V

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v13, v10}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->start(Ljava/net/NetworkInterface;)V

    goto/16 :goto_0

    .line 275
    :cond_8
    sget-object v13, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v14, "Not connected to either wifi or ethernet, need flush list"

    invoke-static {v13, v14}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->stopWifi()V

    goto/16 :goto_0
.end method

.method private stopWifi()V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Clearing devices list"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->stop()V

    .line 284
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 286
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Closing MdsnSd based ARDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->stop()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->stop()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
    .locals 2
    .param p1, "broadcaster"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Opening MdsnSd based ARDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 110
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 112
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 114
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "ARDiscovery"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    if-nez v0, :cond_1

    .line 133
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Starting MdsnSd based ARDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->wifiStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->wifiStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Stopping MdsnSd based ARDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    .line 151
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->wifiStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->stop()V

    .line 158
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 159
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wifiAvailable(Z)V
    .locals 3
    .param p1, "wifiAvailable"    # Z

    .prologue
    .line 166
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifiAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiAvailable:Z

    if-eq v0, p1, :cond_0

    .line 169
    iput-boolean p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mWifiAvailable:Z

    .line 170
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->startOrStopDiscovery()V

    .line 172
    :cond_0
    return-void
.end method
