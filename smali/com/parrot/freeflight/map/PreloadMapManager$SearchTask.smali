.class Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;
.super Landroid/os/AsyncTask;
.source "PreloadMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/PreloadMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/PreloadMapManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/map/PreloadMapManager;Lcom/parrot/freeflight/map/PreloadMapManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/map/PreloadMapManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/map/PreloadMapManager$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;-><init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V

    return-void
.end method

.method private stop(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$902(Lcom/parrot/freeflight/map/PreloadMapManager;Z)Z

    .line 384
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$1000(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$1000(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;->searchFinished(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 387
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 10
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 351
    aget-object v4, p1, v7

    .line 352
    .local v4, "search":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v6, v6, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v3, Landroid/location/Geocoder;

    iget-object v6, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v6}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$1100(Lcom/parrot/freeflight/map/PreloadMapManager;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v4, v6}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 362
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 363
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 364
    .local v0, "address":Landroid/location/Address;
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 367
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    :cond_0
    :goto_0
    return-object v5

    .line 357
    .restart local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v3    # "geocoder":Landroid/location/Geocoder;
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 339
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->doInBackground([Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->stop(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 374
    return-void
.end method

.method protected onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 379
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->stop(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 380
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$902(Lcom/parrot/freeflight/map/PreloadMapManager;Z)Z

    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$1000(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$SearchTask;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$1000(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;->isSearching()V

    .line 347
    :cond_0
    return-void
.end method
