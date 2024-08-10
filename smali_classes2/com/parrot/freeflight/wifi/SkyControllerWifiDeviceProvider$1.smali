.class Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;
.super Ljava/lang/Object;
.source "SkyControllerWifiDeviceProvider.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;->this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;->this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    invoke-static {v0}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->access$000(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDroneConnectionInfoList()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;->this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    invoke-static {v0}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->access$100(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;->this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    invoke-static {v0}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->access$100(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider$1;->this$0:Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;

    invoke-static {v1}, Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;->access$000(Lcom/parrot/freeflight/wifi/SkyControllerWifiDeviceProvider;)Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDroneConnectionInfoList()Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/wifi/WifiDeviceProviderListener;->onWifiListChanged(Ljava/util/List;)V

    .line 66
    :cond_0
    return-void
.end method
