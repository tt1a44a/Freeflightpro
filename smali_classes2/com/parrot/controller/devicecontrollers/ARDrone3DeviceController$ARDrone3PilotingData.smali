.class Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
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
    name = "ARDrone3PilotingData"
.end annotation


# instance fields
.field private active:Z

.field private gaz:F

.field private pitch:F

.field private roll:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

.field private yaw:F


# direct methods
.method private constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .param p2, "x1"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .prologue
    .line 1208
    iget-boolean v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->active:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # Z

    .prologue
    .line 1208
    iput-boolean p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->active:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .prologue
    .line 1208
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->roll:F

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 1208
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->roll:F

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .prologue
    .line 1208
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->pitch:F

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 1208
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->pitch:F

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .prologue
    .line 1208
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->yaw:F

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 1208
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->yaw:F

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    .prologue
    .line 1208
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->gaz:F

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .param p1, "x1"    # F

    .prologue
    .line 1208
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->gaz:F

    return p1
.end method


# virtual methods
.method public clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    .locals 4

    .prologue
    .line 1218
    const/4 v2, 0x0

    .line 1222
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    return-object v2

    .line 1224
    :catch_0
    move-exception v1

    .line 1226
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
    .line 1208
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3PilotingData;

    move-result-object v0

    return-object v0
.end method
