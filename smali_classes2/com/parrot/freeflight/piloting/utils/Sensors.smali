.class public Lcom/parrot/freeflight/piloting/utils/Sensors;
.super Ljava/lang/Object;
.source "Sensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;
    }
.end annotation


# static fields
.field private static final MATRIX_3X3_SIZE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "Sensors"

.field private static final VECTOR_3_SIZE:I = 0x3


# instance fields
.field private final mAccelerationValues:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAxisX:I

.field private mAxisY:I

.field private final mFpvOrientationValues:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFpvRotationMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIdentityMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsWarningLogged:Z

.field private mListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMagnetoValues:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOrientationEventListener:Landroid/view/OrientationEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOrientationValues:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRotatedRotationMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRotationMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScreenRotation:I

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSensorManager:Landroid/hardware/SensorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAccelerationValues:[F

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mMagnetoValues:[F

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    .line 40
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mRotationMatrix:[F

    .line 43
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mRotatedRotationMatrix:[F

    .line 46
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvRotationMatrix:[F

    .line 49
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mIdentityMatrix:[F

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mIsWarningLogged:Z

    .line 64
    new-instance v0, Lcom/parrot/freeflight/piloting/utils/Sensors$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/utils/Sensors$1;-><init>(Lcom/parrot/freeflight/piloting/utils/Sensors;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 93
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 94
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mWindowManager:Landroid/view/WindowManager;

    .line 96
    new-instance v0, Lcom/parrot/freeflight/piloting/utils/Sensors$2;

    invoke-direct {v0, p0, p1}, Lcom/parrot/freeflight/piloting/utils/Sensors$2;-><init>(Lcom/parrot/freeflight/piloting/utils/Sensors;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/utils/Sensors;)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mMagnetoValues:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/utils/Sensors;)[F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAccelerationValues:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/utils/Sensors;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->calculateMagnetoValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/utils/Sensors;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mIsWarningLogged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/piloting/utils/Sensors;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mIsWarningLogged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/utils/Sensors;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/utils/Sensors;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;

    .prologue
    .line 17
    iget v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mScreenRotation:I

    return v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/piloting/utils/Sensors;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mScreenRotation:I

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/utils/Sensors;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/utils/Sensors;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/utils/Sensors;->updateAxis(I)V

    return-void
.end method

.method private calculateMagnetoValues()V
    .locals 9
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mRotationMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mIdentityMatrix:[F

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAccelerationValues:[F

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mMagnetoValues:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mRotationMatrix:[F

    iget v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisX:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisY:I

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mRotatedRotationMatrix:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mRotatedRotationMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mRotatedRotationMatrix:[F

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvRotationMatrix:[F

    invoke-static {v0, v6, v1, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvRotationMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    aget v1, v1, v7

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    aget v3, v3, v8

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    aget v4, v4, v7

    float-to-double v4, v4

    .line 160
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    aget v5, v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v5, v6

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    aget v6, v6, v8

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 159
    invoke-interface/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;->onChange(FFFFFF)V

    .line 163
    :cond_0
    return-void
.end method

.method private updateAxis(I)V
    .locals 4
    .param p1, "screenRotation"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/16 v3, 0x82

    const/16 v2, 0x81

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 182
    iput v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisX:I

    .line 183
    iput v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisY:I

    .line 186
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iput v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisX:I

    .line 170
    iput v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisY:I

    goto :goto_0

    .line 173
    :pswitch_1
    iput v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisX:I

    .line 174
    iput v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisY:I

    goto :goto_0

    .line 177
    :pswitch_2
    iput v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisX:I

    .line 178
    iput v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mAxisY:I

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public hasAccelerometer()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMagnetometer()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

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

.method public pause()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->hasMagnetometer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->hasAccelerometer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 135
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    aget v1, v1, v6

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    aget v2, v2, v7

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationValues:[F

    aget v3, v3, v8

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    aget v4, v4, v6

    float-to-double v4, v4

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    aget v5, v5, v7

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v5, v6

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mFpvOrientationValues:[F

    aget v6, v6, v8

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 139
    invoke-interface/range {v0 .. v6}, Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;->onChange(FFFFFF)V

    .line 141
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 118
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->hasMagnetometer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/utils/Sensors;->hasAccelerometer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 126
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mScreenRotation:I

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 128
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    if-ne v0, p1, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/utils/Sensors;->mListener:Lcom/parrot/freeflight/piloting/utils/Sensors$SensorsListener;

    .line 147
    :cond_0
    return-void
.end method
