.class public Lcom/parrot/freeflight/update/UploadTaskFactory;
.super Ljava/lang/Object;
.source "UploadTaskFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)Lcom/parrot/freeflight/update/task/UploaderTask;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectedGamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "update"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "listener"    # Lcom/parrot/freeflight/update/task/UploaderTask$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    iget-object v1, p4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_TINOS:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v1, v2, :cond_1

    .line 28
    instance-of v1, p3, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;

    check-cast p3, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .end local p3    # "selectedGamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-direct {v0, p0, p3, p5}, Lcom/parrot/freeflight/update/task/FlypadUploaderTask;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;)V

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 32
    .restart local p3    # "selectedGamepad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_1
    const/4 v8, 0x0

    .line 33
    .local v8, "skyControllerModel":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
    instance-of v1, p2, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v1, :cond_2

    move-object v8, p2

    .line 34
    check-cast v8, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 37
    :cond_2
    const/4 v7, 0x0

    .line 38
    .local v7, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    instance-of v1, p1, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_3

    move-object v7, p1

    .line 39
    check-cast v7, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 42
    :cond_3
    const/4 v5, 0x0

    .line 43
    .local v5, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const/4 v6, 0x0

    .line 44
    .local v6, "destination":Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isRemoteCtrlConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v5

    .line 46
    iget-object v1, p4, Lcom/parrot/freeflight/update/task/AvailableUpdate;->productFamily:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->ARDISCOVERY_PRODUCT_FAMILY_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    if-ne v1, v2, :cond_5

    .line 47
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_SKYCONTROLLER:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    .line 56
    :cond_4
    :goto_1
    if-eqz v5, :cond_0

    .line 57
    new-instance v0, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;

    new-instance v2, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;

    sget-object v1, Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;->ARUTILS_FTP_TYPE_UPDATE:Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;

    invoke-direct {v2, p0, v5, v6, v1}, Lcom/parrot/freeflight/media/task/FtpNetworkHandler;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;Lcom/parrot/arsdk/arutils/ARUTILS_FTP_TYPE_ENUM;)V

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/update/task/ParrotUploaderTask;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/media/task/FtpNetworkHandler;Lcom/parrot/freeflight/update/task/AvailableUpdate;Lcom/parrot/freeflight/update/task/UploaderTask$Listener;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    goto :goto_0

    .line 48
    :cond_5
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    goto :goto_1

    .line 51
    :cond_6
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v5

    .line 53
    sget-object v6, Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;->ARUTILS_DESTINATION_DRONE:Lcom/parrot/arsdk/arutils/ARUTILS_DESTINATION_ENUM;

    goto :goto_1
.end method
