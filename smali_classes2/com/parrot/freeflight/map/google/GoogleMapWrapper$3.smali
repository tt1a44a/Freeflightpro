.class Lcom/parrot/freeflight/map/google/GoogleMapWrapper$3;
.super Ljava/lang/Object;
.source "GoogleMapWrapper.java"

# interfaces
.implements Lcom/parrot/freeflight/map/IProjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->getProjection()Lcom/parrot/freeflight/map/IProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

.field final synthetic val$proj:Lcom/google/android/gms/maps/Projection;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/google/GoogleMapWrapper;Lcom/google/android/gms/maps/Projection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$3;->this$0:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    iput-object p2, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$3;->val$proj:Lcom/google/android/gms/maps/Projection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$3;->val$proj:Lcom/google/android/gms/maps/Projection;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$3;->val$proj:Lcom/google/android/gms/maps/Projection;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
