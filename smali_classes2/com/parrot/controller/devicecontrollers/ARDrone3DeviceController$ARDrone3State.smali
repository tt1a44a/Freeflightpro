.class Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
.super Ljava/lang/Object;
.source "ARDrone3DeviceController.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARDrone3State"
.end annotation


# instance fields
.field private batteryLevel:I

.field private cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

.field private emergency:Z

.field private flying:Z

.field private lynxData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

.field private pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

.field private userBaroData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

.field private userGPSData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1171
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    iput v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    .line 1173
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    invoke-direct {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    .line 1174
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    invoke-direct {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .line 1175
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    invoke-direct {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userGPSData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    .line 1176
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    invoke-direct {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userBaroData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    .line 1177
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    invoke-direct {v0, p1, v1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->lynxData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .line 1178
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    .line 1179
    iput-boolean v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    .line 1180
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userBaroData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->lynxData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    .param p1, "x1"    # Z

    .prologue
    .line 1159
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    .param p1, "x1"    # Z

    .prologue
    .line 1159
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userGPSData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    .locals 4

    .prologue
    .line 1184
    const/4 v2, 0x0

    .line 1188
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_0
    iget v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    iput v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->batteryLevel:I

    .line 1196
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v3

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->cameraData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    .line 1197
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v3

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->pilotingData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .line 1198
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userGPSData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v3

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userGPSData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    .line 1199
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userBaroData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    move-result-object v3

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->userBaroData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    .line 1200
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->lynxData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v3

    iput-object v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->lynxData:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .line 1201
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->emergency:Z

    .line 1202
    iget-boolean v3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    iput-boolean v3, v2, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->flying:Z

    .line 1204
    return-object v2

    .line 1190
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3State;

    move-result-object v0

    return-object v0
.end method
