.class public Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;
.super Ljava/lang/Object;
.source "DroneConnectionInfoHelper.java"


# static fields
.field private static final DEVICE_PREFIXES:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BebopDrone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bebop2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->DEVICE_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->isParrotDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getInfoForSsid(Ljava/util/List;Ljava/lang/String;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "droneConnectionInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    const/4 v0, 0x0

    .line 19
    .local v0, "droneConnectionInfo":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    if-eqz p1, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 21
    .local v1, "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    invoke-virtual {v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    move-object v0, v1

    .line 27
    .end local v1    # "info":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    :cond_1
    return-object v0
.end method

.method private static isParrotDevice(Ljava/lang/String;)Z
    .locals 6
    .param p0, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "ret":Z
    if-eqz p0, :cond_0

    .line 71
    sget-object v3, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper;->DEVICE_PREFIXES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 72
    .local v0, "pref":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 78
    .end local v0    # "pref":Ljava/lang/String;
    :cond_0
    return v1

    .line 71
    .restart local v0    # "pref":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static sortList(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "currentWifiSsid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "droneConnectionInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    new-instance v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    return-void
.end method
