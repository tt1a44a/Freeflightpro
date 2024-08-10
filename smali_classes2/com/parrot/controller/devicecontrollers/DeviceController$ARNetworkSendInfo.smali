.class Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;
.super Ljava/lang/Object;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARNetworkSendInfo"
.end annotation


# instance fields
.field private deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field private notificationData:Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

.field private notificationListener:Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

.field private timeoutPolicy:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p2, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .param p3, "notificationListener"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;
    .param p4, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .param p5, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1978
    iput-object p2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->timeoutPolicy:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    .line 1979
    iput-object p3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->notificationListener:Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    .line 1980
    iput-object p4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->notificationData:Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .line 1981
    iput-object p5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 1982
    return-void
.end method


# virtual methods
.method public getDeviceController()Lcom/parrot/controller/devicecontrollers/DeviceController;
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    return-object v0
.end method

.method public getNotificationData()Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->notificationData:Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    return-object v0
.end method

.method public getNotificationListener()Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->notificationListener:Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    return-object v0
.end method

.method public getTimeoutPolicy()Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->timeoutPolicy:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    return-object v0
.end method

.method public setDeviceController(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 0
    .param p1, "deviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->deviceController:Lcom/parrot/controller/devicecontrollers/DeviceController;

    .line 2022
    return-void
.end method

.method public setNotificationListener(Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;)V
    .locals 0
    .param p1, "notificationListener"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->notificationListener:Lcom/parrot/controller/devicecontrollers/NetworkNotificationListener;

    .line 2012
    return-void
.end method

.method public setTimeoutPolicy(Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;)V
    .locals 0
    .param p1, "timeoutPolicy"    # Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->timeoutPolicy:Lcom/parrot/arsdk/arnetwork/ARNETWORK_MANAGER_CALLBACK_RETURN_ENUM;

    .line 2007
    return-void
.end method

.method public setUserData(Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;)V
    .locals 0
    .param p1, "notificationData"    # Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ARNetworkSendInfo;->notificationData:Lcom/parrot/controller/devicecontrollers/NetworkNotificationData;

    .line 2017
    return-void
.end method
