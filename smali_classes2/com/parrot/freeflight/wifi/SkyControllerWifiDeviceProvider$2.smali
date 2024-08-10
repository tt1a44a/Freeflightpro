.class Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$2;
.super Ljava/lang/Object;
.source "SkyControllerWifiDeviceProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->getDroneComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$2;->this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    .param p2, "rhs"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, -0x1

    .line 99
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->getRssi()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    check-cast p1, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    check-cast p2, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$2;->compare(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)I

    move-result v0

    return v0
.end method
