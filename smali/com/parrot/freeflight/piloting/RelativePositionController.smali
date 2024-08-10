.class public Lcom/parrot/freeflight/piloting/RelativePositionController;
.super Ljava/lang/Object;
.source "RelativePositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FF4.Location.Relative"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBearing:F

.field private mControllerLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mControllerRotation:F

.field private mDistanceToDrone:F

.field private mDistanceToHome:F

.field private mDroneLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHomeLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

.field private final mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

.field private mUserLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "locationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToHome:F

    .line 264
    new-instance v1, Lcom/parrot/freeflight/piloting/RelativePositionController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/RelativePositionController$1;-><init>(Lcom/parrot/freeflight/piloting/RelativePositionController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mApplicationContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 67
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "FF4.Location.Relative"

    const-string v2, "Must ask in some activity Location permission"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 73
    .local v0, "location":Landroid/location/Location;
    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iput-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    .line 76
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    .line 77
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void

    .line 71
    .end local v0    # "location":Landroid/location/Location;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v0

    .restart local v0    # "location":Landroid/location/Location;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/RelativePositionController;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->updateHomeLocation(Landroid/location/Location;)V

    return-void
.end method

.method private isControllerLocationDifferent(Landroid/location/Location;)Z
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    .line 245
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    .line 246
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDroneLocationDifferent(Landroid/location/Location;)Z
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    .line 239
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    .line 240
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHomeLocationDifferent(Landroid/location/Location;)Z
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    .line 253
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    .line 254
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    .line 255
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    .line 255
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPositionUpdated()V
    .locals 5

    .prologue
    .line 226
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 227
    .local v0, "listener":Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    iget v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToDrone:F

    iget v3, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToHome:F

    iget v4, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    invoke-interface {v0, v2, v3, v4}, Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;->updatePosition(FFF)V

    goto :goto_0

    .line 229
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    :cond_0
    return-void
.end method

.method private notifyRotationUpdated()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;

    .line 233
    .local v0, "listener":Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    iget v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerRotation:F

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;->updateRotation(F)V

    goto :goto_0

    .line 235
    .end local v0    # "listener":Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
    :cond_0
    return-void
.end method

.method private updateHomeLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "homeLocation"    # Landroid/location/Location;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isHomeLocationDifferent(Landroid/location/Location;)Z

    move-result v0

    .line 210
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 211
    if-eqz p1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 213
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    :goto_1
    iput v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToHome:F

    .line 221
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->notifyPositionUpdated()V

    .line 223
    :cond_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 217
    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1

    .line 219
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    goto :goto_2
.end method


# virtual methods
.method public getControllerLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getControllerRotation()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerRotation:F

    return v0
.end method

.method public getDistanceToDrone()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToDrone:F

    return v0
.end method

.method public getDroneLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getHomeLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->removeUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    .line 105
    return-void
.end method

.method public registerListener(Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 96
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "FF4.Location.Relative"

    const-string v1, "Must ask in some activity Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationListener:Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->requestLocationUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public updateControllerLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "controllerLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isControllerLocationDifferent(Landroid/location/Location;)Z

    move-result v0

    .line 141
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    if-nez v1, :cond_2

    .line 143
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    if-nez v1, :cond_3

    .line 149
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToDrone:F

    .line 155
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mHomeLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToHome:F

    .line 156
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    .line 161
    :cond_0
    :goto_3
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->notifyPositionUpdated()V

    .line 163
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_1

    .line 155
    :cond_4
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_2

    .line 159
    :cond_5
    const-string v1, "FF4.Location.Relative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got new controller location with wrong accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public updateControllerRotation(F)V
    .locals 2
    .param p1, "rotation"    # F

    .prologue
    .line 166
    iget v1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerRotation:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 167
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 168
    iput p1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mControllerRotation:F

    .line 169
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->notifyRotationUpdated()V

    .line 171
    :cond_0
    return-void

    .line 166
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDroneLocation(Landroid/location/Location;)V
    .locals 5
    .param p1, "droneLocation"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->isDroneLocationDifferent(Landroid/location/Location;)Z

    move-result v0

    .line 113
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 114
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    if-nez v2, :cond_2

    .line 115
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->getUserLocation()Landroid/location/Location;

    move-result-object v1

    .line 121
    .local v1, "userLocation":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    if-nez v2, :cond_3

    .line 123
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    .line 128
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToDrone:F

    .line 130
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    .line 135
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/RelativePositionController;->notifyPositionUpdated()V

    .line 137
    .end local v1    # "userLocation":Landroid/location/Location;
    :cond_1
    return-void

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDroneLocation:Landroid/location/Location;

    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_0

    .line 125
    .restart local v1    # "userLocation":Landroid/location/Location;
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mUserLocation:Landroid/location/Location;

    invoke-virtual {v2, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto :goto_1

    .line 132
    :cond_4
    iput v4, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mDistanceToDrone:F

    .line 133
    iput v4, p0, Lcom/parrot/freeflight/piloting/RelativePositionController;->mBearing:F

    goto :goto_2
.end method
