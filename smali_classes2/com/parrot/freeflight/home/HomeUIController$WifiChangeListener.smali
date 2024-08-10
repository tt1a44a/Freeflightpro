.class Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiChangeListener"
.end annotation


# instance fields
.field private final mFromDevice:Z

.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;Z)V
    .locals 0
    .param p2, "fromDevice"    # Z

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2290
    iput-boolean p2, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->mFromDevice:Z

    .line 2291
    return-void
.end method


# virtual methods
.method public onWifiListChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2295
    .local p1, "wifiList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/WifiListView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->getWifiList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    .line 2297
    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/user/UserDrone;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$6500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    .line 2298
    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->getDroneComparator()Ljava/util/Comparator;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v5}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->mergeSsid()Z

    move-result v5

    iget-boolean v6, p0, Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;->mFromDevice:Z

    .line 2296
    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/home/WifiListView;->updateFromDroneInfoList(Ljava/util/List;Ljava/lang/String;Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;Ljava/util/Comparator;ZZ)V

    .line 2300
    :cond_0
    return-void

    .line 2297
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
