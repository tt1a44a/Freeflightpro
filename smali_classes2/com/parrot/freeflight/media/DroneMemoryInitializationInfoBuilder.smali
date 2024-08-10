.class public Lcom/parrot/freeflight/media/DroneMemoryInitializationInfoBuilder;
.super Ljava/lang/Object;
.source "DroneMemoryInitializationInfoBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;
    .locals 6
    .param p0, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 14
    instance-of v1, p0, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 15
    check-cast v0, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 16
    .local v0, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    instance-of v1, p1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v2

    check-cast p1, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;

    .line 18
    .end local p1    # "remoteCtrlModel":Lcom/parrot/freeflight/core/model/Model;
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMassStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMassStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .end local v0    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    :goto_0
    return-object v1

    .line 20
    .restart local v0    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    .restart local p1    # "remoteCtrlModel":Lcom/parrot/freeflight/core/model/Model;
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getDiscoveryDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMassStorageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getMassStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/parrot/freeflight/media/model/DroneMemoryInitializationInfo;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    .end local v0    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
