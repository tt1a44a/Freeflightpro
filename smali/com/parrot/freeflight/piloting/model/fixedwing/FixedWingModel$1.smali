.class Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;
.super Ljava/lang/Object;
.source "FixedWingModel.java"

# interfaces
.implements Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 4
    .param p1, "newState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "droneDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "remoteCtrlDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "remoteCtrlDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
    instance-of v1, p3, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1132
    check-cast v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .line 1134
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$002(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 1135
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$100(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 1136
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$202(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 1137
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$300(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 1139
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$400(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1140
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$502(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Z)Z

    .line 1142
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1143
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$600(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 1144
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$602(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;

    .line 1146
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$700(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->setDeviceController(Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;)V

    .line 1148
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getDeviceDiscoveryInfo()Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->usesARStream2()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1149
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$800(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->addVideoUpdateAlert()Z

    .line 1154
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$1000(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->save()V

    .line 1155
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->restartNetworkAuthorizedCountryScan()V

    .line 1156
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$1100(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 1157
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$1000(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->restore()V

    .line 1158
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->saveToStore()V

    .line 1159
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$502(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Z)Z

    .line 1160
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$1202(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Z)Z

    .line 1161
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->notifyListener()V

    .line 1163
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$1300(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V

    .line 1165
    :cond_5
    return-void

    .line 1151
    :cond_6
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel$1;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->access$900(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->removeVideoUpdateAlert()Z

    goto :goto_0
.end method
