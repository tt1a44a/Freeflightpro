.class public Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;
.super Ljava/lang/Object;
.source "DeviceDiscoveryInfo.java"


# static fields
.field private static final DEFAULT_VIDEO_FRAGMENT_MAXIMUM_NUMBER:I = 0x80

.field private static final DEFAULT_VIDEO_FRAGMENT_SIZE:I = 0x3e8


# instance fields
.field private arStream2MaxBitrate:I

.field private arStream2MaxLatency:I

.field private arStream2MaxNetworkLatency:I

.field private arStream2MaxPacketSize:I

.field private arStream2ParameterSets:Ljava/lang/String;

.field private arStream2ServerControlPort:I

.field private arStream2ServerStreamPort:I

.field private c2dPort:I

.field private ipAddress:Ljava/lang/String;

.field private napSoftVersion:Ljava/lang/String;

.field private qosMode:I

.field private serial:Ljava/lang/String;

.field private videoFragmentMaximumNumber:I

.field private videoFragmentSize:I

.field private videoMaxAckInterval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;)V
    .locals 1
    .param p1, "deviceDiscoveryInfo"    # Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;

    .prologue
    .line 70
    iget-object v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->ipAddress:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->serial:Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->serial:Ljava/lang/String;

    .line 72
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->c2dPort:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->c2dPort:I

    .line 73
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->qosMode:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->qosMode:I

    .line 74
    iget-object v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->napSoftVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->napSoftVersion:Ljava/lang/String;

    .line 75
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentSize:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentSize:I

    .line 76
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentMaximumNumber:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentMaximumNumber:I

    .line 77
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoMaxAckInterval:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoMaxAckInterval:I

    .line 78
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerStreamPort:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerStreamPort:I

    .line 79
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerControlPort:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerControlPort:I

    .line 80
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxPacketSize:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxPacketSize:I

    .line 81
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxLatency:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxLatency:I

    .line 82
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxNetworkLatency:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxNetworkLatency:I

    .line 83
    iget v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxBitrate:I

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxBitrate:I

    .line 84
    iget-object v0, p1, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ParameterSets:Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ParameterSets:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public getArStream2MaxBitrate()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxBitrate:I

    return v0
.end method

.method public getArStream2MaxLatency()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxLatency:I

    return v0
.end method

.method public getArStream2MaxNetworkLatency()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxNetworkLatency:I

    return v0
.end method

.method public getArStream2MaxPacketSize()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxPacketSize:I

    return v0
.end method

.method public getArStream2ParameterSets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ParameterSets:Ljava/lang/String;

    return-object v0
.end method

.method public getArStream2ServerControlPort()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerControlPort:I

    return v0
.end method

.method public getArStream2ServerStreamPort()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerStreamPort:I

    return v0
.end method

.method public getC2dPort()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->c2dPort:I

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNapSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->napSoftVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getQosMode()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->qosMode:I

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFragmentMaximumNumber()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentMaximumNumber:I

    return v0
.end method

.method public getVideoFragmentSize()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentSize:I

    return v0
.end method

.method public getVideoMaxAckInterval()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoMaxAckInterval:I

    return v0
.end method

.method public reset(Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;)V
    .locals 3
    .param p1, "netConfig"    # Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 34
    iput-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->ipAddress:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->serial:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->c2dPort:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->qosMode:I

    .line 38
    iput-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->napSoftVersion:Ljava/lang/String;

    .line 39
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentSize:I

    .line 40
    const/16 v0, 0x80

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentMaximumNumber:I

    .line 41
    invoke-virtual {p1}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getDefaultVideoMaxAckInterval()I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoMaxAckInterval:I

    .line 42
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerStreamPort:I

    .line 43
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerControlPort:I

    .line 44
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxPacketSize:I

    .line 45
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxLatency:I

    .line 46
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxNetworkLatency:I

    .line 47
    iput v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxBitrate:I

    .line 48
    iput-object v2, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ParameterSets:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->ipAddress:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->serial:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public updateFrom(Lorg/json/JSONObject;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 53
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->c2dPort:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->c2dPort:I

    .line 54
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_QOS_MODE_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->qosMode:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->qosMode:I

    .line 55
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_SKYCONTROLLER_VERSION:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->napSoftVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->napSoftVersion:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_SIZE_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentSize:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentSize:I

    .line 57
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_MAXIMUM_NUMBER_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentMaximumNumber:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoFragmentMaximumNumber:I

    .line 58
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_MAX_ACK_INTERVAL_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoMaxAckInterval:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->videoMaxAckInterval:I

    .line 59
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_STREAM_PORT_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerStreamPort:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerStreamPort:I

    .line 60
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_CONTROL_PORT_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerControlPort:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerControlPort:I

    .line 61
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_PACKET_SIZE_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxPacketSize:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxPacketSize:I

    .line 62
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_LATENCY_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxLatency:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxLatency:I

    .line 63
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_NETWORK_LATENCY_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxNetworkLatency:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxNetworkLatency:I

    .line 64
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_BITRATE_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxBitrate:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2MaxBitrate:I

    .line 65
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_PARAMETER_SETS_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ParameterSets:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ParameterSets:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public usesARStream2()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 177
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerStreamPort:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceDiscoveryInfo;->arStream2ServerControlPort:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
