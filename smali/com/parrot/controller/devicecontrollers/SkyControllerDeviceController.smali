.class public Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;
.super Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;
.source "SkyControllerDeviceController.java"


# static fields
.field private static final AXIS_NUMBER:I = 0x8

.field private static LOOP_INTERVAL:D = 0.0

.field public static final MapperDeviceControllerGrabAxisEventNotificationAxisValues:Ljava/lang/String; = "MapperDeviceControllerGrabAxisEventNotificationAxisValues"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final axisValues:[B

.field private cmdSkyControllerGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

.field private cmdSkyControllerGetAllStatesSent:Ljava/util/concurrent/Semaphore;

.field private isSkyControllerWaitingAllSettingsSent:Z

.field private isSkyControllerWaitingAllStatesSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->TAG:Ljava/lang/String;

    .line 30
    const-wide v0, 0x3f9999999999999aL    # 0.025

    sput-wide v0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->LOOP_INTERVAL:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;-><init>()V

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->axisValues:[B

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "discoveryDeviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;

    invoke-direct {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;-><init>()V

    .line 43
    .local v0, "deviceController":Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->mApplicationContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->onCreate()V

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v0, v1, v3, v3}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->onStartCommand(Landroid/content/Intent;II)I

    .line 48
    return-object v0
.end method


# virtual methods
.method protected cancelBaseControllerStart()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->baseControllerCancelled:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;->cancelBaseControllerStart()V

    .line 116
    return-void
.end method

.method public cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->skyControllerNotificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method protected declared-synchronized clearNotifications()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;->clearNotifications()V

    .line 103
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->skyControllerNotificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARBundle;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public controllerLoop()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    .line 128
    .local v0, "currentState":Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 130
    sget-object v1, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController$1;->$SwitchMap$com$parrot$controller$devicecontrollers$DEVICE_CONTROLLER_STATE_ENUM:[I

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    :pswitch_0
    return-void

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getInitialSettings()Z
    .locals 5

    .prologue
    .line 222
    const/4 v1, 0x1

    .line 224
    .local v1, "successful":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->isSkyControllerWaitingAllSettingsSent:Z

    .line 226
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v2

    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendSettingsAllSettings(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->isSkyControllerWaitingAllSettingsSent:Z

    .line 246
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 236
    const/4 v1, 0x0

    .line 237
    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getInitialStates()Z
    .locals 5

    .prologue
    .line 253
    const/4 v1, 0x1

    .line 255
    .local v1, "successful":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->isSkyControllerWaitingAllStatesSent:Z

    .line 257
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v2

    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_RETRY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendCommonAllStates(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->isSkyControllerWaitingAllStatesSent:Z

    .line 277
    return v1

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 267
    const/4 v1, 0x0

    .line 268
    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    return-object v0
.end method

.method initDeviceState()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public networkDidCancelFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 216
    :cond_0
    return-void
.end method

.method public networkDidReceiveAck(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;->notificationRun()V

    .line 200
    :cond_0
    return-void
.end method

.method public networkDidSendFrame(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 191
    return-void
.end method

.method public networkTimeoutOccurred(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 206
    return-void
.end method

.method public declared-synchronized onMapperGrabAxisEventUpdate(IB)V
    .locals 4
    .param p1, "axis"    # I
    .param p2, "value"    # B

    .prologue
    .line 638
    monitor-enter p0

    if-ltz p1, :cond_0

    const/16 v2, 0x8

    if-ge p1, v2, :cond_0

    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->axisValues:[B

    aput-byte p2, v2, p1

    .line 643
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 644
    .local v1, "notificationBundle":Landroid/os/Bundle;
    const-string v2, "MapperDeviceControllerGrabAxisEventNotificationAxisValues"

    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->axisValues:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 646
    new-instance v0, Landroid/content/Intent;

    const-string v2, "MapperDeviceControllerGrabAxisEventNotification"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "notificationBundle":Landroid/os/Bundle;
    :cond_0
    monitor-exit p0

    return-void

    .line 638
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onMapperGrabStateUpdate(III)V
    .locals 3
    .param p1, "buttons"    # I
    .param p2, "axes"    # I
    .param p3, "buttons_state"    # I

    .prologue
    .line 622
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 623
    shr-int v1, p2, v0

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_0

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->axisValues:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;->onMapperGrabStateUpdate(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onSkyControllerCommonStateAllStatesChangedUpdate()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;->onSkyControllerCommonStateAllStatesChangedUpdate()V

    .line 303
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->isSkyControllerWaitingAllStatesSent:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 307
    :cond_0
    return-void
.end method

.method public declared-synchronized onSkyControllerGamepadInfosStateGamepadControlUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v6, "SkyControllerDeviceControllerGamepadInfosStateGamepadControlNotificationTypeKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    if-nez p1, :cond_0

    .line 581
    sget-object v5, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `type` in GamepadControl command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    const-string v5, "SkyControllerDeviceControllerGamepadInfosStateGamepadControlNotificationIdKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    const-string v5, "SkyControllerDeviceControllerGamepadInfosStateGamepadControlNotificationNameKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->skyControllerNotificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "SkyControllerDeviceControllerGamepadInfosStateGamepadControlNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 587
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 588
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 592
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :goto_1
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 593
    move-object v3, v2

    .line 595
    const-string v5, "SkyControllerDeviceControllerGamepadInfosStateGamepadControlNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 598
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->skyControllerNotificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "SkyControllerDeviceControllerGamepadInfosStateGamepadControlNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "skyControllerDeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v5, "SkyControllerDeviceControllerGamepadInfosStateGamepadControlNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 578
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;->ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_GAMEPADINFOSSTATE_GAMEPADCONTROL_TYPE_ENUM;->getValue()I

    move-result v5

    goto :goto_0

    .line 590
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    goto :goto_1

    .line 576
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onSkyControllerSettingsStateAllSettingsChangedUpdate()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;->onSkyControllerSettingsStateAllSettingsChangedUpdate()V

    .line 292
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->isSkyControllerWaitingAllSettingsSent:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 296
    :cond_0
    return-void
.end method

.method public declared-synchronized onSkyControllerWifiStateWifiAuthChannelListChangedUpdate(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;BB)V
    .locals 9
    .param p1, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;
    .param p2, "channel"    # B
    .param p3, "in_or_out"    # B

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 519
    .local v4, "updateDictionary":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 520
    .local v3, "notificationBundle":Landroid/os/Bundle;
    const-string v6, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotificationBandKey"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    :goto_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 521
    if-nez p1, :cond_0

    .line 523
    sget-object v5, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->TAG:Ljava/lang/String;

    const-string v6, "Bad value for argument `band` in WifiAuthChannelListChanged command from the device."

    invoke-static {v5, v6}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    const-string v5, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotificationChannelKey"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 526
    const-string v5, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotificationInOrOutKey"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 528
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->skyControllerNotificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 529
    .local v2, "listDictionary":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 530
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 534
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :goto_1
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 535
    move-object v3, v2

    .line 537
    const-string v5, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 540
    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->skyControllerNotificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v6, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotification"

    invoke-virtual {v5, v6, v3}, Lcom/parrot/controller/devicecontrollers/ARBundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 543
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "skyControllerDeviceControllerNotificationDictionaryChanged"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v1, "intentDicChanged":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-string v5, "SkyControllerDeviceControllerWifiStateWifiAuthChannelListChangedNotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    .line 520
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentDicChanged":Landroid/content/Intent;
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_MAX:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_WIFISTATE_WIFIAUTHCHANNELLISTCHANGED_BAND_ENUM;->getValue()I

    move-result v5

    goto :goto_0

    .line 532
    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listDictionary":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "listDictionary":Landroid/os/Bundle;
    goto :goto_1

    .line 518
    .end local v2    # "listDictionary":Landroid/os/Bundle;
    .end local v3    # "notificationBundle":Landroid/os/Bundle;
    .end local v4    # "updateDictionary":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 56
    sget-object v2, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recreated by the system, don\'t need! stop it"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->stopSelf()V

    .line 84
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->initialize()V

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->state:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    sget-object v3, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLLER_STATE_ENUM;

    if-ne v2, v3, :cond_2

    .line 70
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.deviceservice"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 71
    .local v0, "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    const-string v2, "com.parrot.freeflight3.DeviceController.extra.fastreconnection"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 73
    .local v1, "fastReconnection":Z
    invoke-virtual {p0, v0, v1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Z)V

    .line 75
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->start()V

    .line 82
    .end local v0    # "extraService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v1    # "fastReconnection":Z
    :goto_1
    iget-object v2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->stateLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v2, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onStartCommand not effective because device controller is not stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 176
    return-void
.end method

.method protected registerCurrentProduct()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 311
    const-string v5, "DEVICECONTROLLER_SHARED_PREFERENCES_KEY"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 312
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v0

    .line 313
    .local v0, "bundle":Lcom/parrot/controller/devicecontrollers/ARBundle;
    if-eqz v0, :cond_0

    .line 315
    const-string v5, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotification"

    invoke-virtual {v0, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    const-string v5, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotification"

    invoke-virtual {v0, v5}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 318
    .local v4, "settingsStateProductSerialChangedNotification":Landroid/os/Bundle;
    const-string v5, "SkyControllerDeviceControllerSettingsStateProductSerialChangedNotificationSerialNumberKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "serial":Ljava/lang/String;
    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 322
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 323
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "serial":Ljava/lang/String;
    .end local v4    # "settingsStateProductSerialChangedNotification":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public setConfigurations(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;Z)V
    .locals 7
    .param p1, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .param p2, "fastReconnection"    # Z

    .prologue
    const/4 v1, 0x0

    .line 89
    new-instance v2, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;

    invoke-direct {v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;-><init>()V

    .line 91
    .local v2, "netConfig":Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;
    iput-boolean p2, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->fastReconnection:Z

    .line 93
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllSettingsSent:Ljava/util/concurrent/Semaphore;

    .line 94
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cmdSkyControllerGetAllStatesSent:Ljava/util/concurrent/Semaphore;

    .line 96
    sget-wide v4, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->LOOP_INTERVAL:D

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-super/range {v1 .. v6}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceControllerAndLibARCommands;->setConfigurations(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;DLjava/lang/Class;)V

    .line 97
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->startThread()V

    .line 159
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->stopThread()V

    .line 168
    return-void
.end method

.method public userConnectToDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendDeviceConnectToDevice(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    .line 411
    return-void
.end method

.method public userConnectToDrone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->DroneManagerDeviceController_SendConnect(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public userConnectToWifi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendWifiConnectToWifi(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public userForgetDrone(Ljava/lang/String;)Z
    .locals 3
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->DroneManagerDeviceController_SendForget(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public userForgetNetwork(Ljava/lang/String;)Z
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendWifiForgetWifi(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public userRequestCurrentWifi()Z
    .locals 3

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendWifiRequestCurrentWifi(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v0

    return v0
.end method

.method public userRequestDeviceList()V
    .locals 3

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendDeviceRequestDeviceList(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 406
    return-void
.end method

.method public userRequestDroneList()Z
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->DroneManagerDeviceController_SendDiscoverDrones(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v0

    return v0
.end method

.method public userRequestPilotingFromSource(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;)V
    .locals 3
    .param p1, "source"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendCoPilotingSetPilotingSource(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_COPILOTING_SETPILOTINGSOURCE_SOURCE_ENUM;)Z

    .line 459
    return-void
.end method

.method public userRequestSetAPSSID(Ljava/lang/String;)Z
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendAccessPointSettingsAccessPointSSID(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public userRequestSetWifiApChannel(B)Z
    .locals 3
    .param p1, "channel"    # B

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendAccessPointSettingsAccessPointChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    move-result v0

    return v0
.end method

.method public userRequestSetWifiApChannel(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;B)Z
    .locals 7
    .param p1, "type"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;
    .param p2, "band"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;
    .param p3, "channel"    # B

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendAccessPointSettingsWifiSelection(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_TYPE_ENUM;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_SKYCONTROLLER_ACCESSPOINTSETTINGS_WIFISELECTION_BAND_ENUM;B)Z

    move-result v0

    return v0
.end method

.method public userRequestWifiList()Z
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->skyControllerNotificationDictionary:Lcom/parrot/controller/devicecontrollers/ARBundle;

    const-string v1, "SkyControllerDeviceControllerWifiStateWifiListNotification"

    invoke-virtual {v0, v1}, Lcom/parrot/controller/devicecontrollers/ARBundle;->remove(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendWifiRequestWifiList(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    move-result v0

    return v0
.end method

.method public userRequestedAxisMappingChange(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;II)V
    .locals 8
    .param p1, "product"    # S
    .param p2, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "axis"    # I
    .param p4, "buttons"    # I

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->MapperDeviceController_SendMapAxisAction(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_AXIS_ACTION_ENUM;II)Z

    .line 498
    return-void
.end method

.method public userRequestedButtonMappingChange(SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;I)V
    .locals 7
    .param p1, "product"    # S
    .param p2, "action"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "buttons"    # I

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->MapperDeviceController_SendMapButtonAction(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;SLcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;I)Z

    .line 494
    return-void
.end method

.method public userRequestedCameraReset()V
    .locals 3

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendCameraResetOrientation(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 416
    return-void
.end method

.method public userRequestedDefaultAxisFilters()V
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendAxisFiltersDefaultAxisFilters(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 450
    return-void
.end method

.method public userRequestedDefaultAxisMappings()V
    .locals 3

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendAxisMappingsDefaultAxisMapping(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 440
    return-void
.end method

.method public userRequestedDefaultButtonMappings()V
    .locals 3

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendButtonMappingsDefaultButtonMapping(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 430
    return-void
.end method

.method public userRequestedExpoChange(SILcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V
    .locals 7
    .param p1, "product"    # S
    .param p2, "axis"    # I
    .param p3, "expo"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->MapperDeviceController_SendSetExpo(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;SILcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Z

    .line 502
    return-void
.end method

.method public userRequestedGrabCommand(II)V
    .locals 6
    .param p1, "buttonsToGrab"    # I
    .param p2, "joysticksToGrab"    # I

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->MapperDeviceController_SendGrab(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;II)Z

    .line 486
    return-void
.end method

.method public userRequestedMagnetoCalibrationQualityUpdates(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendCalibrationEnableMagnetoCalibrationQualityUpdates(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;B)Z

    .line 468
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userRequestedMagnetoCalibrationV2Abort()V
    .locals 3

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendCalibrationAbortCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 478
    return-void
.end method

.method public userRequestedMagnetoCalibrationV2Start()V
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendCalibrationStartCalibration(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 473
    return-void
.end method

.method public userRequestedResetMapping(S)V
    .locals 3
    .param p1, "product"    # S

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->MapperDeviceController_SendResetMapping(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;S)Z

    .line 490
    return-void
.end method

.method public userRequestedSettingsWifiAuthChannel()V
    .locals 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->cleanNetworkStateWifiAuthChannelListChangedNotificationDictionary()V

    .line 557
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v0

    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendWifiWifiAuthChannel(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)Z

    .line 558
    return-void
.end method

.method public userSetAxisFilter(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "mapping"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendAxisFiltersSetAxisFilter(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;ILjava/lang/String;)Z

    .line 445
    return-void
.end method

.method public userSetAxisMapping(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "mapping"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendAxisMappingsSetAxisMapping(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;ILjava/lang/String;)Z

    .line 435
    return-void
.end method

.method public userSetButtonMapping(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "mapping"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->getNetConfig()Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getC2dAckId()I

    move-result v1

    sget-object v2, Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;->ARNETWORK_MANAGER_CALLBACK_RETURN_DATA_POP:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/controller/devicecontrollers/SkyControllerDeviceController;->SkyControllerDeviceController_SendButtonMappingsSetButtonMapping(ILcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;ILjava/lang/String;)Z

    .line 425
    return-void
.end method
