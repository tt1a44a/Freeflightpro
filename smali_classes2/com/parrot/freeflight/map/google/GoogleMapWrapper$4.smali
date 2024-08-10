.class Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;
.super Ljava/util/ArrayList;
.source "GoogleMapWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->createOuterBounds()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/google/GoogleMapWrapper;)V
    .locals 12
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    .prologue
    const-wide v10, 0x40667fae20000000L    # 179.99000549316406

    const-wide v8, -0x3fa980a3e0000000L    # -89.98999786376953

    const-wide v6, 0x40567f5c20000000L    # 89.98999786376953

    const-wide/16 v4, 0x0

    const-wide v2, -0x3f998051e0000000L    # -179.99000549316406

    .line 293
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->this$0:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v8, v9, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v8, v9, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v6, v7, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$4;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method
