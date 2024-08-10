.class public abstract Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
.super Ljava/lang/Object;
.source "ARNetworkConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkConfig"

.field protected static bleNotificationIDs:[I

.field protected static c2dParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field protected static commandsBuffers:[I

.field protected static d2cParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation
.end field

.field protected static hasVideo:Z

.field protected static inboundPort:I

.field protected static iobufferC2dAck:I

.field protected static iobufferC2dEmergency:I

.field protected static iobufferC2dNack:I

.field protected static iobufferD2cEvents:I

.field protected static iobufferD2cNavdata:I

.field protected static outboundPort:I

.field protected static videoMaxAckInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 12
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dNack:I

    .line 13
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dAck:I

    .line 14
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dEmergency:I

    .line 15
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cNavdata:I

    .line 16
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cEvents:I

    .line 18
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->inboundPort:I

    .line 19
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->outboundPort:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    .line 23
    new-array v0, v2, [I

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->commandsBuffers:[I

    .line 25
    sput-boolean v2, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->hasVideo:Z

    .line 26
    sput v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->videoMaxAckInterval:I

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->bleNotificationIDs:[I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->updateParams()V

    .line 33
    return-void
.end method


# virtual methods
.method public commonCommandsAckedIOBuffer()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dAck:I

    return v0
.end method

.method public getBLENotificationIDs()[I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->bleNotificationIDs:[I

    return-object v0
.end method

.method public getC2dAckId()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dAck:I

    return v0
.end method

.method public getC2dEmergencyId()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dEmergency:I

    return v0
.end method

.method public getC2dNackId()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferC2dNack:I

    return v0
.end method

.method public getC2dParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v0
.end method

.method public getC2dParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->c2dParams:Ljava/util/List;

    return-object v0
.end method

.method public getCommandsIOBuffers()[I
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->commandsBuffers:[I

    return-object v0
.end method

.method public getD2cAckIdId()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->iobufferD2cEvents:I

    return v0
.end method

.method public getD2cParams()[Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    return-object v0
.end method

.method public getD2cParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->d2cParams:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultVideoMaxAckInterval()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->videoMaxAckInterval:I

    return v0
.end method

.method public getInboundPort()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->inboundPort:I

    return v0
.end method

.method public getOutboundPort()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->outboundPort:I

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->hasVideo:Z

    return v0
.end method

.method protected abstract updateParams()V
.end method
