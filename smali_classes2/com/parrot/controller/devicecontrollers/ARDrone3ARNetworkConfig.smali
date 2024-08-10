.class public final Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;
.super Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
.source "ARDrone3ARNetworkConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateParams()V
    .locals 11

    .prologue
    .line 14
    const/16 v0, 0xa

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferC2dNack:I

    .line 15
    const/16 v0, 0xb

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferC2dAck:I

    .line 16
    const/16 v0, 0xc

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferC2dEmergency:I

    .line 17
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferD2cNavdata:I

    .line 18
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferD2cEvents:I

    .line 20
    const v0, 0xd431

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->inboundPort:I

    .line 21
    const v0, 0xa8ca

    sput v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->outboundPort:I

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->hasVideo:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->bleNotificationIDs:[I

    .line 27
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->c2dParams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 31
    .local v9, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v9}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    goto :goto_0

    .line 34
    .end local v9    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_0
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    sget-object v10, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->c2dParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferC2dNack:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    sget v4, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/4 v6, 0x5

    const/16 v7, 0x80

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v10, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->c2dParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferC2dAck:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    const/16 v4, 0x96

    const/4 v5, 0x5

    const/16 v6, 0x64

    const/16 v7, 0x1000

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v10, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->c2dParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferC2dEmergency:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    const/16 v4, 0x96

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->d2cParams:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 64
    .restart local v9    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v9}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    goto :goto_1

    .line 67
    .end local v9    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    sget-object v10, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->d2cParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferD2cNavdata:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    sget v4, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/16 v6, 0x14

    const/16 v7, 0x80

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v10, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->d2cParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferD2cEvents:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x0

    const/16 v4, 0x96

    const/4 v5, 0x5

    const/16 v6, 0x14

    const/16 v7, 0x1000

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferD2cNavdata:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->iobufferD2cEvents:I

    aput v2, v0, v1

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3ARNetworkConfig;->commandsBuffers:[I

    .line 89
    return-void
.end method
