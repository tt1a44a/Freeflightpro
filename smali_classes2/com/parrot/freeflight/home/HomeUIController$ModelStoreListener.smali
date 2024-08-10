.class Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;
.implements Lcom/parrot/freeflight/core/model/ModelStore$RemoteCtrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelStoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/home/HomeUIController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/home/HomeUIController;
    .param p2, "x1"    # Lcom/parrot/freeflight/home/HomeUIController$1;

    .prologue
    .line 1802
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;-><init>(Lcom/parrot/freeflight/home/HomeUIController;)V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 1807
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$4800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$4900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$4900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5102(Lcom/parrot/freeflight/home/HomeUIController;I)I

    .line 1814
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->access$002(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;

    .line 1815
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1816
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$4800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1817
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getRcControllerModel()Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$4902(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    .line 1818
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$4900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$4900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 1821
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$4500(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1826
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$400(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1828
    :cond_3
    return-void

    .line 1823
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$4902(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    goto :goto_0
.end method

.method public onRemoteCtrlModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->removeAuthFailedListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;)V

    .line 1835
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/WifiListView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1800(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/WifiListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/WifiListView;->switchVisibility(Z)V

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    check-cast p1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2002(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 1841
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1842
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1843
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->removeWifiListListener()V

    .line 1845
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    new-instance v1, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;-><init>(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2102(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/WifiDeviceProvider;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    .line 1846
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/HomeUIController$WifiChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->setWifiListListener(Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;)V

    .line 1847
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$5200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->addAuthFailedListener(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;)V

    .line 1855
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)V

    .line 1856
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$100(Lcom/parrot/freeflight/home/HomeUIController;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$200(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/core/model/DroneModel;I)V

    .line 1857
    return-void

    .line 1849
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1850
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/wifi/WifiDeviceProvider;->removeWifiListListener()V

    .line 1851
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$ModelStoreListener;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2102(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/wifi/WifiDeviceProvider;)Lcom/parrot/freeflight/wifi/WifiDeviceProvider;

    goto :goto_0
.end method
