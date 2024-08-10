.class Lcom/parrot/freeflight/home/HomeUIController$28;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/DeviceConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILcom/parrot/freeflight/user/UserDrone;ILcom/parrot/freeflight/user/UserRemoteCtrl;)V
    .locals 6
    .param p1, "droneState"    # I
    .param p2, "userDrone"    # Lcom/parrot/freeflight/user/UserDrone;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "remoteCtrlState"    # I
    .param p4, "userRemoteCtrl"    # Lcom/parrot/freeflight/user/UserRemoteCtrl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x1

    .line 1743
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4, p2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4102(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/user/UserDrone;)Lcom/parrot/freeflight/user/UserDrone;

    .line 1744
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4, p4}, Lcom/parrot/freeflight/home/HomeUIController;->access$4202(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/user/UserRemoteCtrl;)Lcom/parrot/freeflight/user/UserRemoteCtrl;

    .line 1745
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$100(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v4

    if-eq v4, p3, :cond_7

    .line 1747
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$100(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v4

    if-eq v4, p1, :cond_8

    if-ne p1, v5, :cond_8

    move v0, v2

    .line 1750
    .local v0, "droneJustConnected":Z
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/home/WifiListView;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1751
    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v4

    if-eq v4, p3, :cond_9

    if-eq p3, v5, :cond_1

    const/4 v4, 0x2

    if-eq p3, v4, :cond_1

    if-ne p3, v2, :cond_9

    :cond_1
    move v1, v2

    .line 1755
    .local v1, "remoteCtrlJustConnectedOrDisconnected":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 1756
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/home/WifiListView;->switchVisibility(Z)V

    .line 1760
    .end local v1    # "remoteCtrlJustConnectedOrDisconnected":Z
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$3600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 1761
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$3602(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 1764
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v2

    if-eq v2, p3, :cond_5

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1765
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4300(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1768
    :cond_5
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$100(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v2

    if-eq v2, p1, :cond_6

    .line 1769
    if-ne p1, v5, :cond_a

    .line 1771
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    instance-of v2, v2, Lcom/parrot/freeflight/piloting/model/bebop/BebopModel;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1772
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v4}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->start(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 1780
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2, p3}, Lcom/parrot/freeflight/home/HomeUIController;->access$1902(Lcom/parrot/freeflight/home/HomeUIController;I)I

    .line 1781
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2, p1}, Lcom/parrot/freeflight/home/HomeUIController;->access$102(Lcom/parrot/freeflight/home/HomeUIController;I)I

    .line 1782
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4500(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1784
    .end local v0    # "droneJustConnected":Z
    :cond_7
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2, p1, p3}, Lcom/parrot/freeflight/home/HomeUIController;->access$4600(Lcom/parrot/freeflight/home/HomeUIController;II)V

    .line 1785
    return-void

    :cond_8
    move v0, v3

    .line 1747
    goto/16 :goto_0

    .restart local v0    # "droneJustConnected":Z
    :cond_9
    move v1, v3

    .line 1751
    goto/16 :goto_1

    .line 1775
    :cond_a
    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$28;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$4400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->stop()V

    goto :goto_2
.end method
