.class Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;
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
    name = "ARDrone3UserBaroData"
.end annotation


# instance fields
.field private pressure:F

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

.field private timestamp:D


# direct methods
.method private constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .param p2, "x1"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    .prologue
    .line 1287
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->pressure:F

    return v0
.end method

.method static synthetic access$1102(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;
    .param p1, "x1"    # F

    .prologue
    .line 1287
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->pressure:F

    return p1
.end method

.method static synthetic access$1200(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;)D
    .locals 2
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    .prologue
    .line 1287
    iget-wide v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->timestamp:D

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;D)D
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;
    .param p1, "x1"    # D

    .prologue
    .line 1287
    iput-wide p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->timestamp:D

    return-wide p1
.end method


# virtual methods
.method public clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;
    .locals 4

    .prologue
    .line 1294
    const/4 v2, 0x0

    .line 1298
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    :goto_0
    return-object v2

    .line 1300
    :catch_0
    move-exception v1

    .line 1302
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
    .line 1287
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3UserBaroData;

    move-result-object v0

    return-object v0
.end method
