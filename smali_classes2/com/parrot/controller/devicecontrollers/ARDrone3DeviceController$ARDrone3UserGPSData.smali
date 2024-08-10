.class Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;
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
    name = "ARDrone3UserGPSData"
.end annotation


# instance fields
.field altitude:F

.field eastAcc:F

.field eastSpeed:F

.field horizontalAccuracy:F

.field latitude:D

.field longitude:D

.field northAcc:F

.field northSpeed:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

.field timestamp:D

.field verticalAcc:F

.field verticalAccuracy:F

.field verticalSpeed:F


# direct methods
.method private constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V
    .locals 0

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .param p2, "x1"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;
    .locals 4

    .prologue
    .line 1272
    const/4 v2, 0x0

    .line 1276
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    return-object v2

    .line 1278
    :catch_0
    move-exception v1

    .line 1280
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
    .line 1255
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserGPSData;

    move-result-object v0

    return-object v0
.end method
