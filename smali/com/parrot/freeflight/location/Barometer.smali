.class public Lcom/parrot/freeflight/location/Barometer;
.super Ljava/lang/Object;
.source "Barometer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/location/Barometer$Listener;
    }
.end annotation


# static fields
.field private static final FROM_HECTOPASCAL_TO_PASCAL_MULTIPLICATOR:I = 0x64


# instance fields
.field private mListener:Lcom/parrot/freeflight/location/Barometer$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPressure:F

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/parrot/freeflight/location/Barometer$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/Barometer$1;-><init>(Lcom/parrot/freeflight/location/Barometer;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 45
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/location/Barometer;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/Barometer;

    .prologue
    .line 12
    iget v0, p0, Lcom/parrot/freeflight/location/Barometer;->mPressure:F

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/location/Barometer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/Barometer;
    .param p1, "x1"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/parrot/freeflight/location/Barometer;->mPressure:F

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/location/Barometer;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/location/Barometer;

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/parrot/freeflight/location/Barometer;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/location/Barometer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/Barometer;
    .param p1, "x1"    # J

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/parrot/freeflight/location/Barometer;->mTimestamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/location/Barometer;)Lcom/parrot/freeflight/location/Barometer$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/Barometer;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    return-object v0
.end method

.method private hasBarometer()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPressure()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/parrot/freeflight/location/Barometer;->mPressure:F

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/parrot/freeflight/location/Barometer;->mTimestamp:J

    return-wide v0
.end method

.method public removeListener(Lcom/parrot/freeflight/location/Barometer$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/location/Barometer$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    if-ne v0, p1, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    .line 73
    :cond_0
    return-void
.end method

.method public setListener(Lcom/parrot/freeflight/location/Barometer$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/parrot/freeflight/location/Barometer$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    if-eq v0, p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/location/Barometer;->mListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    .line 63
    invoke-direct {p0}, Lcom/parrot/freeflight/location/Barometer;->hasBarometer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mListener:Lcom/parrot/freeflight/location/Barometer$Listener;

    iget v1, p0, Lcom/parrot/freeflight/location/Barometer;->mPressure:F

    iget-wide v2, p0, Lcom/parrot/freeflight/location/Barometer;->mTimestamp:J

    invoke-interface {v0, v1, v2, v3}, Lcom/parrot/freeflight/location/Barometer$Listener;->onChange(FJ)V

    .line 67
    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 5

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/parrot/freeflight/location/Barometer;->hasBarometer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 51
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 54
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/parrot/freeflight/location/Barometer;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 58
    return-void
.end method
