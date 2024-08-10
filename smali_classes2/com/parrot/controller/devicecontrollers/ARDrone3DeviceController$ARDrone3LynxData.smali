.class Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
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
    name = "ARDrone3LynxData"
.end annotation


# instance fields
.field private azimuth:F

.field private changeOfScale:F

.field private confidenceIndex:B

.field private elevation:F

.field private isNewSelection:B

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

.field private timestampMs:J


# direct methods
.method private constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->this$0:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
    .param p2, "x1"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$1;

    .prologue
    .line 1309
    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;-><init>(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .prologue
    .line 1309
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->azimuth:F

    return v0
.end method

.method static synthetic access$1402(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .param p1, "x1"    # F

    .prologue
    .line 1309
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->azimuth:F

    return p1
.end method

.method static synthetic access$1500(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .prologue
    .line 1309
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->elevation:F

    return v0
.end method

.method static synthetic access$1502(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .param p1, "x1"    # F

    .prologue
    .line 1309
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->elevation:F

    return p1
.end method

.method static synthetic access$1600(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .prologue
    .line 1309
    iget v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->changeOfScale:F

    return v0
.end method

.method static synthetic access$1602(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .param p1, "x1"    # F

    .prologue
    .line 1309
    iput p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->changeOfScale:F

    return p1
.end method

.method static synthetic access$1700(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)B
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .prologue
    .line 1309
    iget-byte v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->confidenceIndex:B

    return v0
.end method

.method static synthetic access$1702(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;B)B
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .param p1, "x1"    # B

    .prologue
    .line 1309
    iput-byte p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->confidenceIndex:B

    return p1
.end method

.method static synthetic access$1800(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)B
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .prologue
    .line 1309
    iget-byte v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->isNewSelection:B

    return v0
.end method

.method static synthetic access$1802(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;B)B
    .locals 0
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .param p1, "x1"    # B

    .prologue
    .line 1309
    iput-byte p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->isNewSelection:B

    return p1
.end method

.method static synthetic access$1900(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    .prologue
    .line 1309
    iget-wide v0, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->timestampMs:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .param p1, "x1"    # J

    .prologue
    .line 1309
    iput-wide p1, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->timestampMs:J

    return-wide p1
.end method


# virtual methods
.method public clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    .locals 4

    .prologue
    .line 1320
    const/4 v2, 0x0

    .line 1324
    .local v2, "other":Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_0
    return-object v2

    .line 1326
    :catch_0
    move-exception v1

    .line 1328
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
    .line 1309
    invoke-virtual {p0}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;->clone()Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$ARDrone3LynxData;

    move-result-object v0

    return-object v0
.end method
