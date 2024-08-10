.class Lcom/parrot/freeflight/core/model/ModelStore$4;
.super Ljava/lang/Object;
.source "ModelStore.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/ModelStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/ModelStore;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/ModelStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/ModelStore;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .prologue
    .line 257
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 258
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$400(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 259
    .local v1, "model":Lcom/parrot/freeflight/core/model/DroneModel;
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/user/UserSettings;->getUserDrone()Lcom/parrot/freeflight/user/UserDrone;

    move-result-object v5

    .line 261
    .local v5, "userDrone":Lcom/parrot/freeflight/user/UserDrone;
    if-nez v5, :cond_1

    .line 312
    .end local v1    # "model":Lcom/parrot/freeflight/core/model/DroneModel;
    .end local v5    # "userDrone":Lcom/parrot/freeflight/user/UserDrone;
    :cond_0
    :goto_0
    return-void

    .line 265
    .restart local v1    # "model":Lcom/parrot/freeflight/core/model/DroneModel;
    .restart local v5    # "userDrone":Lcom/parrot/freeflight/user/UserDrone;
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/user/UserSettings;->getCurrentDroneId()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "currentDroneId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "modelSoftwareVersion":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/parrot/freeflight/user/UserDrone;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 271
    const-string v6, "FF4.Model.Store"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updating userDrone software version from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/parrot/freeflight/user/UserDrone;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserDroneVersion(Ljava/lang/String;)V

    .line 276
    :cond_2
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "modelName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/parrot/freeflight/user/UserDrone;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 279
    const-string v6, "FF4.Model.Store"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updating userDrone name from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/parrot/freeflight/user/UserDrone;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserDroneName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .end local v3    # "modelName":Ljava/lang/String;
    .end local v4    # "modelSoftwareVersion":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->isProductSerialFull()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->connectionProtocolEnded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    const-string v6, "FF4.Model.Store"

    const-string v7, "drone connection protocol ended, we will update userDrone\'s serial if needed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v2

    .line 307
    .local v2, "modelDeviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v2, :cond_0

    invoke-virtual {v5, v2}, Lcom/parrot/freeflight/user/UserDrone;->isSameProduct(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    iget-object v6, p0, Lcom/parrot/freeflight/core/model/ModelStore$4;->this$0:Lcom/parrot/freeflight/core/model/ModelStore;

    invoke-static {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->access$200(Lcom/parrot/freeflight/core/model/ModelStore;)Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v6

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getProductSerial()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/user/UserSettings;->setCurrentUserDroneUid(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
