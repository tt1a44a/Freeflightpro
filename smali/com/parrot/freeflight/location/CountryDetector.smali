.class public Lcom/parrot/freeflight/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;
    }
.end annotation


# static fields
.field private static final COUNTRY_CODE_KEY:Ljava/lang/String; = "COUNTRY_CODE_KEY"

.field private static final GEOCODE_NEEDED_KEY:Ljava/lang/String; = "GEOCODE_NEEDED_KEY"

.field private static final GEOCODE_REQUEST_DELAY_SECONDS:I = 0x3c

.field private static final INVALID_LOCATION:I = 0x1f4

.field private static final LAST_LATITUDE_KEY:Ljava/lang/String; = "LAST_LATITUDE_KEY"

.field private static final LAST_LONGITUDE_KEY:Ljava/lang/String; = "LAST_LONGITUDE_KEY"

.field private static final MIN_DISTANCE_TO_GEOCODE_METERS:I = 0xbb8

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "country_detector"

.field private static final TAG:Ljava/lang/String; = "CountryDetector"

.field private static final UPDATE_RETRY_DELAY_MILLIS:I = 0x36ee80

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME_KEY"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCountryCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFirstTime:Z

.field private mGeoCodeHandle:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mGeoCodeNeeded:Z

.field private mInternetAvailable:Z

.field private final mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastUpdateTime:J

.field private final mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v8, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v4, Lcom/parrot/freeflight/location/CountryDetector$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/location/CountryDetector$1;-><init>(Lcom/parrot/freeflight/location/CountryDetector;)V

    iput-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    .line 72
    iput-object p1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mContext:Landroid/content/Context;

    .line 73
    iget-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mContext:Landroid/content/Context;

    const-string v5, "country_detector"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 74
    iget-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "LAST_LATITUDE_KEY"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 75
    .local v0, "latitude":D
    iget-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "LAST_LONGITUDE_KEY"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 76
    .local v2, "longitude":D
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 77
    iget-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "COUNTRY_CODE_KEY"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mCountryCode:Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "UPDATE_TIME_KEY"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastUpdateTime:J

    .line 79
    iget-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "GEOCODE_NEEDED_KEY"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeNeeded:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/location/CountryDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mInternetAvailable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/location/CountryDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mInternetAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/location/CountryDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/location/CountryDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/location/CountryDetector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/CountryDetector;->updateCountryCode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/location/CountryDetector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/location/CountryDetector;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/location/CountryDetector;->onCountryCodeReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onCountryCodeReady(Ljava/lang/String;)Z
    .locals 6
    .param p1, "countryCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "CountryDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country code Ready : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object p1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mCountryCode:Ljava/lang/String;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastUpdateTime:J

    .line 154
    iput-boolean v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeNeeded:Z

    .line 155
    iget-object v1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "COUNTRY_CODE_KEY"

    .line 156
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "UPDATE_TIME_KEY"

    iget-wide v4, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastUpdateTime:J

    .line 157
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "GEOCODE_NEEDED_KEY"

    .line 158
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :cond_0
    return v0
.end method

.method private updateCountryCode(I)V
    .locals 8
    .param p1, "delay"    # I

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastUpdateTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    const/4 v1, 0x1

    .line 126
    .local v1, "obsolete":Z
    :goto_0
    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeNeeded:Z

    if-eqz v3, :cond_2

    .line 127
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeHandle:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeHandle:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/location/CountryDetector;->updateCountryCodeFromTelephoneNetwork()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    :cond_2
    :goto_1
    return-void

    .end local v1    # "obsolete":Z
    :cond_3
    move v1, v2

    .line 124
    goto :goto_0

    .line 134
    .restart local v1    # "obsolete":Z
    :cond_4
    iget-boolean v2, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeNeeded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/parrot/freeflight/location/CountryDetector;->mInternetAvailable:Z

    if-eqz v2, :cond_2

    .line 135
    new-instance v0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;

    iget-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;-><init>(Lcom/parrot/freeflight/location/CountryDetector;Lcom/google/android/gms/maps/model/LatLng;Lcom/parrot/freeflight/location/CountryDetector$1;)V

    .line 136
    .local v0, "geoCodeTask":Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;
    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    int-to-long v4, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeHandle:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1
.end method

.method private updateCountryCodeFromTelephoneNetwork()Z
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 143
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/location/CountryDetector;->onCountryCodeReady(Ljava/lang/String;)Z

    move-result v1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/parrot/freeflight/location/CountryDetector;->updateCountryCodeFromTelephoneNetwork()Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/parrot/freeflight/BuildConfig;->COUNTRY_CODE:Ljava/lang/String;

    .line 120
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mCountryCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public onLocationAvailable(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 94
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 99
    .local v1, "newLatLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/flightplan/utils/MathForGoogleMap;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 100
    .local v0, "distance":F
    const v2, 0x453b8000    # 3000.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 101
    iput-object v1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mLastLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 102
    iput-boolean v6, p0, Lcom/parrot/freeflight/location/CountryDetector;->mGeoCodeNeeded:Z

    .line 103
    iget-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LAST_LATITUDE_KEY"

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LAST_LONGITUDE_KEY"

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "GEOCODE_NEEDED_KEY"

    .line 106
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/location/CountryDetector;->updateCountryCode(I)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mFirstTime:Z

    .line 84
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->registerListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/location/CountryDetector;->updateCountryCode(I)V

    .line 86
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getInternetStatusManager()Lcom/parrot/freeflight/network/InternetStatusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/location/CountryDetector;->mInternetStatusListener:Lcom/parrot/freeflight/network/InternetStatusManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/network/InternetStatusManager;->unregisterListener(Lcom/parrot/freeflight/network/InternetStatusManager$Listener;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/location/CountryDetector;->mInternetAvailable:Z

    .line 91
    return-void
.end method
