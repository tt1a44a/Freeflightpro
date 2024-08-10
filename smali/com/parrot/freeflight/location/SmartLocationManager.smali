.class public Lcom/parrot/freeflight/location/SmartLocationManager;
.super Ljava/lang/Object;
.source "SmartLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/location/SmartLocationManager$Listener;,
        Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;,
        Lcom/parrot/freeflight/location/SmartLocationManager$LocationMode;
    }
.end annotation


# static fields
.field private static final ARM_DISPLACEMENT_DEGREES:I = 0x6

.field private static final DEFAULT_SKYCONTROLLER_ACCURACY:F = 5.0f

.field private static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field private static final FASTEST_GPS_REFRESH_TIME_MS:J = 0x64L

.field private static final FAST_GPS_REFRESH_TIME_MS:J = 0x1f4L

.field private static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field private static final GPS_FIX_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final GPS_MIN_ACCURACY_IN_METER:F = 12.0f

.field private static final GPS_REFRESH_DISTANCE:F = 0.0f

.field private static final GPS_REFRESH_TIME_MS:J = 0x2710L

.field static final LOCATION_MODE_FUSED:I = 0x4

.field static final LOCATION_MODE_GPS_FULL:I = 0x5

.field static final LOCATION_MODE_GPS_LIGHT:I = 0x3

.field static final LOCATION_MODE_REMOTE_CONTROL:I = 0x2

.field static final LOCATION_MODE_STOPPED:I = 0x1

.field public static final SENSOR_MIN_ACCURACY:I = 0x2

.field public static final SKYCONTROLLER_PROVIDER:Ljava/lang/String; = "skycontroller"

.field private static final SWITCH_ON_FRESHNESS_CLIFF_MS:J = 0x2af8L

.field private static final SWITCH_ON_FRESHNESS_CLIFF_NS:J = 0x28fa6ae00L

.field public static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"


# instance fields
.field private mAccuracy:I

.field private final mApplicationContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFusedLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGPSLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGeomagneticField:Landroid/hardware/GeomagneticField;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGooglePlayServicesAvailable:Z

.field private mGpsFixChangeReceiverRegistered:Z

.field private final mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mHeading:I

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
            "Lcom/parrot/freeflight/location/SmartLocationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/LocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLocationSettingsReady:Z

.field private mMode:I

.field private final mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOrientation:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhoneGpsFixHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhoneGpsFixListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneGpsFixed:Z

.field private mRequestingGoogleLocation:Z

.field private mRotationMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRotationVector:Landroid/hardware/Sensor;

.field private mSelectedLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSelectedRotation:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRotation:F

.field private mSkyControllerLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSkycontrollerRotation:F

.field private mWantingGoogleLocation:Z

.field private mWasMissingPermissions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/location/SmartLocationManager;->GPS_FIX_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    .line 145
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkycontrollerRotation:F

    .line 172
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRotationMatrix:[F

    .line 174
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mOrientation:[F

    .line 185
    new-instance v0, Lcom/parrot/freeflight/location/SmartLocationManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$1;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcom/parrot/freeflight/location/SmartLocationManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$2;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    .line 207
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 209
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRotationVector:Landroid/hardware/Sensor;

    .line 212
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    .line 213
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/parrot/freeflight/location/SmartLocationManager$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$4;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/location/SmartLocationManager$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/location/SmartLocationManager$3;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApiIfAvailable(Lcom/google/android/gms/common/api/Api;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 244
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/parrot/freeflight/location/CountryDetector;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/location/CountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;

    .line 246
    return-void

    :cond_0
    move v0, v2

    .line 212
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/location/SmartLocationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/SmartLocationManager;->notifyPhoneGpsFixStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/location/SmartLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/location/SmartLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/location/SmartLocationManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/SmartLocationManager;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGoogleLocationRequest()V

    return-void
.end method

.method public static checkAccuracy(Landroid/location/Location;F)Z
    .locals 1
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "accuracy"    # F

    .prologue
    .line 853
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private computeTrueNorth(F)F
    .locals 1
    .param p1, "heading"    # F

    .prologue
    .line 447
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGeomagneticField:Landroid/hardware/GeomagneticField;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGeomagneticField:Landroid/hardware/GeomagneticField;

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    add-float/2addr p1, v0

    .line 450
    .end local p1    # "heading":F
    :cond_0
    return p1
.end method

.method protected static createLocationRequest(JJI)Lcom/google/android/gms/location/LocationRequest;
    .locals 2
    .param p0, "intervalMs"    # J
    .param p2, "fastestIntervalMs"    # J
    .param p4, "priority"    # I

    .prologue
    .line 857
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 858
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 859
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 860
    invoke-virtual {v0, p4}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 861
    return-object v0
.end method

.method private static isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 10
    .param p0, "locationA"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "locationB"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide v8, 0x28fa6ae00L

    const-wide/16 v6, 0x2af8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 815
    if-nez p0, :cond_1

    move v0, v1

    .line 849
    :cond_0
    :goto_0
    return v0

    .line 818
    :cond_1
    if-eqz p1, :cond_0

    .line 824
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 825
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 827
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 828
    goto :goto_0

    .line 831
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 833
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 834
    goto :goto_0

    .line 842
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 843
    goto :goto_0

    .line 846
    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPermissionGranted()Z
    .locals 2

    .prologue
    .line 563
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 564
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 565
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mod(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 463
    rem-float v0, p0, p1

    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    return v0
.end method

.method private notifyPhoneGpsFixStatus(Z)V
    .locals 3
    .param p1, "phoneGpsFixed"    # Z

    .prologue
    .line 297
    iget-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    if-eq v1, p1, :cond_0

    .line 298
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    .line 299
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;

    .line 300
    .local v0, "gpsFixStatusListener":Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
    iget-boolean v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;->onGpsStatusChange(Z)V

    goto :goto_0

    .line 303
    .end local v0    # "gpsFixStatusListener":Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
    :cond_0
    return-void
.end method

.method private onRotationChanged(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 472
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 473
    iput p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSensorRotation:F

    .line 474
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->udpateSelectedRotation()V

    .line 476
    :cond_0
    return-void
.end method

.method private startFusedRequest()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1f4

    .line 596
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 597
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.location"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->isPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateMissingPermissionsFlag()V

    .line 609
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-eqz v1, :cond_1

    .line 601
    const-wide/16 v4, 0x64

    const/16 v1, 0x64

    invoke-static {v2, v3, v4, v5, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->createLocationRequest(JJI)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 602
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->tryToStartGoogleLocationRequest()V

    goto :goto_0

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v4, 0x0

    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    const/4 v7, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    .line 607
    :cond_2
    const-string v1, "FF4.Location"

    const-string/jumbo v2, "startFusedRequest no feature location"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startGoogleLocationRequest()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    .line 706
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    if-nez v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    .line 710
    const-string v0, "FF4.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start Google Location Request with settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateMissingPermissionsFlag()V

    goto :goto_0
.end method

.method private startGpsRequest(Z)V
    .locals 7
    .param p1, "lowRate"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 578
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.location.gps"

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateMissingPermissionsFlag()V

    .line 592
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x2710

    :goto_1
    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 584
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/parrot/freeflight/location/SmartLocationManager;->GPS_FIX_CHANGE_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsFixChangeReceiverRegistered:Z

    goto :goto_0

    .line 582
    :cond_1
    const-wide/16 v2, 0x1f4

    goto :goto_1

    .line 587
    :cond_2
    const-string v0, "FF4.Location"

    const-string/jumbo v1, "startGpsRequest no gps provider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    :cond_3
    const-string v0, "FF4.Location"

    const-string/jumbo v1, "startGpsRequest no gps feature"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 498
    packed-switch p1, :pswitch_data_0

    .line 523
    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->registerSensors()V

    .line 526
    :cond_0
    return-void

    .line 500
    :pswitch_0
    const-string v0, "FF4.Location"

    const-string/jumbo v1, "startMode skycontroller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :pswitch_1
    const-string v0, "FF4.Location"

    const-string/jumbo v1, "startMode stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :pswitch_2
    const-string v0, "FF4.Location"

    const-string/jumbo v1, "startMode fused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startFusedRequest()V

    goto :goto_0

    .line 514
    :pswitch_3
    const-string v0, "FF4.Location"

    const-string/jumbo v1, "startMode gps low rate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGpsRequest(Z)V

    goto :goto_0

    .line 519
    :pswitch_4
    const-string v0, "FF4.Location"

    const-string/jumbo v1, "startMode gps high rate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGpsRequest(Z)V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private stopGoogleLocationRequest()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 721
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    .line 722
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    .line 723
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    if-eqz v0, :cond_0

    .line 724
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRequestingGoogleLocation:Z

    .line 726
    const-string v0, "FF4.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop Google Location Request with settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 732
    :cond_0
    return-void
.end method

.method private stopMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 529
    packed-switch p1, :pswitch_data_0

    .line 556
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->unregisterSensors()V

    .line 559
    :cond_1
    return-void

    .line 531
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    goto :goto_0

    .line 539
    :pswitch_2
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsFixChangeReceiverRegistered:Z

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsLocalGpsFixStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGpsFixChangeReceiverRegistered:Z

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 547
    :pswitch_3
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-eqz v0, :cond_3

    .line 549
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->stopGoogleLocationRequest()V

    goto :goto_0

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private tryToStartGoogleLocationRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 612
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGoogleLocationRequest()V

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    .line 617
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkGoogleLocationSettings(Landroid/app/Activity;I)V

    goto :goto_0

    .line 620
    :cond_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    goto :goto_0
.end method

.method private udpateSelectedRotation()V
    .locals 5

    .prologue
    .line 763
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedRotation:F

    .line 765
    const/4 v0, 0x2

    .line 774
    .local v0, "accuracy":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 775
    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v3

    .line 777
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 778
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    iget v4, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedRotation:F

    invoke-interface {v2, v4}, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;->onRotationChanged(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 766
    .end local v0    # "accuracy":I
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkycontrollerRotation:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 767
    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkycontrollerRotation:F

    iput v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedRotation:F

    .line 768
    const/4 v0, 0x2

    .restart local v0    # "accuracy":I
    goto :goto_0

    .line 770
    .end local v0    # "accuracy":I
    :cond_1
    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSensorRotation:F

    iput v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedRotation:F

    .line 771
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mAccuracy:I

    .restart local v0    # "accuracy":I
    goto :goto_0

    .line 780
    .restart local v1    # "i":I
    :cond_2
    :try_start_1
    monitor-exit v3

    .line 782
    .end local v1    # "i":I
    :cond_3
    return-void

    .line 780
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateGeomagneticField()V
    .locals 6

    .prologue
    .line 432
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Landroid/hardware/GeomagneticField;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    .line 434
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    .line 435
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    iput-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGeomagneticField:Landroid/hardware/GeomagneticField;

    .line 437
    :cond_0
    return-void
.end method

.method private updateHomeLocation()V
    .locals 4

    .prologue
    .line 800
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 803
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mHomeLocation:Landroid/location/Location;

    invoke-interface {v1, v3}, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;->onHomeLocationChanged(Landroid/location/Location;)V

    .line 802
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 805
    :cond_0
    monitor-exit v2

    .line 806
    return-void

    .line 805
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateMissingPermissionsFlag()V
    .locals 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    if-nez v0, :cond_0

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    .line 571
    const-string v0, "FF4.Location"

    const-string v1, "Must ask in some activity Location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-void
.end method

.method private updatePhoneGpsFixStatus(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 291
    .local v0, "phoneGpsFixed":Z
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mNotifyGpsNotFixedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->notifyPhoneGpsFixStatus(Z)V

    .line 294
    return-void

    .line 290
    .end local v0    # "phoneGpsFixed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelectedLocation()V
    .locals 6

    .prologue
    .line 737
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 738
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    .line 745
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateGeomagneticField()V

    .line 747
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/location/CountryDetector;->onLocationAvailable(Landroid/location/Location;)V

    .line 749
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 750
    const-string v1, "FF4.Location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedLocation lat = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], long = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] provider =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | accuracy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 755
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    invoke-interface {v1, v3}, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;->onControllerLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 739
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGPSLocation:Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->isBetterThan(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 740
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGPSLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 741
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 742
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    goto/16 :goto_0

    .line 757
    .restart local v0    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v2

    .line 759
    .end local v0    # "i":I
    :cond_4
    return-void

    .line 757
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V
    .locals 1
    .param p1, "gpsFixStatusListener"    # Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixed:Z

    invoke-interface {p1, v0}, Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;->onGpsStatusChange(Z)V

    .line 283
    :cond_0
    return-void
.end method

.method public checkGoogleLocationSettings(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .prologue
    .line 636
    const-string v2, "FF4.Location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGoogleLocationSettings googleplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 639
    new-instance v2, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 640
    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 641
    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v0

    .line 642
    .local v0, "builder":Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 643
    .local v1, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/location/LocationSettingsResult;>;"
    new-instance v2, Lcom/parrot/freeflight/location/SmartLocationManager$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/parrot/freeflight/location/SmartLocationManager$5;-><init>(Lcom/parrot/freeflight/location/SmartLocationManager;Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 681
    .end local v0    # "builder":Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .end local v1    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/location/LocationSettingsResult;>;"
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v2, "FF4.Location"

    const-string v3, "checkGoogleLocationSettings not needed because we are using SkyController location"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/CountryDetector;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mHomeLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->isPermissionGranted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 318
    const-string v6, "FF4.Location"

    const-string v7, "Must ask in some activity Location permission"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    .line 350
    :cond_0
    :goto_0
    return-object v5

    .line 322
    :cond_1
    iget-boolean v6, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGooglePlayServicesAvailable:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 323
    sget-object v6, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v7, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v6, v7}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v5

    .line 324
    .local v5, "location":Landroid/location/Location;
    if-eqz v5, :cond_0

    .line 325
    invoke-virtual {v5}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 326
    .local v2, "extra":Landroid/os/Bundle;
    :goto_1
    const-string/jumbo v6, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 327
    invoke-virtual {v5, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 325
    .end local v2    # "extra":Landroid/os/Bundle;
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    .line 331
    .end local v5    # "location":Landroid/location/Location;
    :cond_3
    iget-object v6, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    if-nez v6, :cond_6

    .line 334
    const/4 v3, 0x0

    .line 335
    .local v3, "lastKnownLocationGPS":Landroid/location/Location;
    const/4 v4, 0x0

    .line 337
    .local v4, "lastKnownLocationNetwork":Landroid/location/Location;
    :try_start_0
    iget-object v6, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 338
    iget-object v6, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 342
    :goto_2
    invoke-static {v3, v4}, Lcom/parrot/freeflight/location/LocationUtils;->getBetterLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 343
    .local v0, "choosedLocation":Landroid/location/Location;
    if-eqz v0, :cond_4

    .line 344
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 345
    .restart local v2    # "extra":Landroid/os/Bundle;
    :goto_3
    const-string/jumbo v6, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 346
    invoke-virtual {v0, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .end local v2    # "extra":Landroid/os/Bundle;
    :cond_4
    move-object v5, v0

    .line 348
    goto :goto_0

    .line 339
    .end local v0    # "choosedLocation":Landroid/location/Location;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "choosedLocation":Landroid/location/Location;
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_3

    .line 350
    .end local v0    # "choosedLocation":Landroid/location/Location;
    .end local v3    # "lastKnownLocationGPS":Landroid/location/Location;
    .end local v4    # "lastKnownLocationNetwork":Landroid/location/Location;
    :cond_6
    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    goto :goto_0
.end method

.method public getUserLocation()Landroid/location/Location;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSelectedLocation:Landroid/location/Location;

    .line 308
    .local v0, "location":Landroid/location/Location;
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->checkAccuracy(Landroid/location/Location;F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mHomeLocation:Landroid/location/Location;

    .line 311
    :cond_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 468
    iput p2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mAccuracy:I

    .line 469
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 361
    const-string v1, "FF4.Location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLocationChanged() called provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", location = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 364
    .local v0, "extra":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 366
    const-string/jumbo v1, "skycontroller"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    .line 369
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 370
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateSelectedLocation()V

    .line 371
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->udpateSelectedRotation()V

    .line 381
    :cond_0
    :goto_1
    return-void

    .line 363
    .end local v0    # "extra":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 372
    .restart local v0    # "extra":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/SmartLocationManager;->updatePhoneGpsFixStatus(Landroid/location/Location;)V

    .line 374
    const-string v1, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGPSLocation:Landroid/location/Location;

    .line 379
    :goto_2
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateSelectedLocation()V

    goto :goto_1

    .line 377
    :cond_3
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mFusedLocation:Landroid/location/Location;

    goto :goto_2
.end method

.method public onPermissionsGranted()V
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    .line 481
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startMode(I)V

    .line 483
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 403
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 398
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 412
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkyControllerLocation:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 417
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRotationMatrix:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 418
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRotationMatrix:[F

    const/4 v3, 0x1

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRotationMatrix:[F

    invoke-static {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 419
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRotationMatrix:[F

    iget-object v3, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mOrientation:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 422
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mOrientation:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 423
    .local v1, "magneticHeading":F
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/location/SmartLocationManager;->computeTrueNorth(F)F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-static {v2, v3}, Lcom/parrot/freeflight/location/SmartLocationManager;->mod(FF)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v0, v2, -0x6

    .line 424
    .local v0, "heading":I
    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mHeading:I

    if-eq v0, v2, :cond_0

    .line 425
    iput v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mHeading:I

    .line 426
    iget v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mHeading:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/location/SmartLocationManager;->onRotationChanged(F)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 385
    const-string v1, "FF4.Location"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStatusChanged() called with: provider = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], status = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], extras = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;

    invoke-interface {v1, p1, p2, p3}, Lcom/parrot/freeflight/location/SmartLocationManager$Listener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 389
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 392
    :cond_0
    monitor-exit v2

    .line 393
    return-void

    .line 392
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerSensors()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mRotationVector:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 271
    return-void
.end method

.method public removePhoneGpsFixListener(Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;)V
    .locals 1
    .param p1, "gpsFixStatusListener"    # Lcom/parrot/freeflight/location/SmartLocationManager$GpsFixStatusListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mPhoneGpsFixListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public removeUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/location/SmartLocationManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 265
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->unregisterSensors()V

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestLocationUpdates(Lcom/parrot/freeflight/location/SmartLocationManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight/location/SmartLocationManager$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->registerSensors()V

    .line 260
    :cond_1
    return-void

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setDroneLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 785
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/location/CountryDetector;->onLocationAvailable(Landroid/location/Location;)V

    .line 786
    return-void
.end method

.method protected setHomeLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 789
    if-eqz p1, :cond_0

    .line 790
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 791
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 792
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 793
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 795
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mHomeLocation:Landroid/location/Location;

    .line 796
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->updateHomeLocation()V

    .line 797
    return-void

    .line 791
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public setLocationSettingsReady(Z)V
    .locals 3
    .param p1, "ready"    # Z

    .prologue
    .line 626
    const-string v0, "FF4.Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLocationSettingsReady= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWantingGoogleLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mLocationSettingsReady:Z

    .line 629
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWantingGoogleLocation:Z

    if-eqz v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->startGoogleLocationRequest()V

    .line 632
    :cond_0
    return-void
.end method

.method protected setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 486
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 489
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/SmartLocationManager;->stopMode(I)V

    .line 491
    iput p1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mMode:I

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mWasMissingPermissions:Z

    .line 494
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/SmartLocationManager;->startMode(I)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 684
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 685
    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-virtual {v1}, Lcom/parrot/freeflight/location/CountryDetector;->start()V

    .line 687
    invoke-virtual {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 688
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/location/CountryDetector;->onLocationAvailable(Landroid/location/Location;)V

    .line 689
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 693
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mCountryDetector:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-virtual {v0}, Lcom/parrot/freeflight/location/CountryDetector;->stop()V

    .line 694
    return-void
.end method

.method public unregisterSensors()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 275
    return-void
.end method

.method public updateSkycontrollerRotation(D)V
    .locals 1
    .param p1, "rotation"    # D

    .prologue
    .line 406
    double-to-float v0, p1

    iput v0, p0, Lcom/parrot/freeflight/location/SmartLocationManager;->mSkycontrollerRotation:F

    .line 407
    invoke-direct {p0}, Lcom/parrot/freeflight/location/SmartLocationManager;->udpateSelectedRotation()V

    .line 408
    return-void
.end method
