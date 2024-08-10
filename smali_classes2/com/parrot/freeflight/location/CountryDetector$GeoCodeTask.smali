.class Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;
.super Ljava/lang/Object;
.source "CountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeoCodeTask"
.end annotation


# instance fields
.field private final mLatLng:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/location/CountryDetector;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/location/CountryDetector;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/location/CountryDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/location/CountryDetector;Lcom/google/android/gms/maps/model/LatLng;Lcom/parrot/freeflight/location/CountryDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/location/CountryDetector;
    .param p2, "x1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "x2"    # Lcom/parrot/freeflight/location/CountryDetector$1;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;-><init>(Lcom/parrot/freeflight/location/CountryDetector;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 175
    iget-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-static {v2}, Lcom/parrot/freeflight/location/CountryDetector;->access$000(Lcom/parrot/freeflight/location/CountryDetector;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-static {v2}, Lcom/parrot/freeflight/location/CountryDetector;->access$400(Lcom/parrot/freeflight/location/CountryDetector;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 181
    .local v1, "geocoder":Landroid/location/Geocoder;
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;->mLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v3, p0, Lcom/parrot/freeflight/location/CountryDetector$GeoCodeTask;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/parrot/freeflight/location/CountryDetector;->access$500(Lcom/parrot/freeflight/location/CountryDetector;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v7

    .line 186
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
