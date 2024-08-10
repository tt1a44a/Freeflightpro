.class Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;
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
    name = "ARDrone3CameraData"
.end annotation


# instance fields
.field private pan:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

.field private tilt:F


# direct methods
.method private constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .param p2, "x1"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;

    .prologue
    .line 1233
    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    .prologue
    .line 1233
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->tilt:F

    return v0
.end method

.method static synthetic access$702(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;
    .param p1, "x1"    # F

    .prologue
    .line 1233
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->tilt:F

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    .prologue
    .line 1233
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->pan:F

    return v0
.end method

.method static synthetic access$802(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;
    .param p1, "x1"    # F

    .prologue
    .line 1233
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->pan:F

    return p1
.end method


# virtual methods
.method public clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;
    .locals 4

    .prologue
    .line 1240
    const/4 v2, 0x0

    .line 1244
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :goto_0
    return-object v2

    .line 1246
    :catch_0
    move-exception v1

    .line 1248
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
    .line 1233
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3CameraData;

    move-result-object v0

    return-object v0
.end method
