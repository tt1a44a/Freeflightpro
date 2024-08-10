.class Lcom/parrot/freeflight/map/google/GoogleMapView$1;
.super Ljava/lang/Object;
.source "GoogleMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/google/GoogleMapView;->getMapAsync(Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/google/GoogleMapView;

.field final synthetic val$callback:Lcom/parrot/freeflight/map/IOnMapReadyCallback;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/google/GoogleMapView;Lcom/parrot/freeflight/map/IOnMapReadyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/google/GoogleMapView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapView$1;->this$0:Lcom/parrot/freeflight/map/google/GoogleMapView;

    iput-object p2, p0, Lcom/parrot/freeflight/map/google/GoogleMapView$1;->val$callback:Lcom/parrot/freeflight/map/IOnMapReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView$1;->this$0:Lcom/parrot/freeflight/map/google/GoogleMapView;

    invoke-static {v0}, Lcom/parrot/freeflight/map/google/GoogleMapView;->access$000(Lcom/parrot/freeflight/map/google/GoogleMapView;)Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView$1;->this$0:Lcom/parrot/freeflight/map/google/GoogleMapView;

    new-instance v1, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/map/google/GoogleMapWrapper;-><init>(Lcom/google/android/gms/maps/GoogleMap;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/google/GoogleMapView;->access$002(Lcom/parrot/freeflight/map/google/GoogleMapView;Lcom/parrot/freeflight/map/google/GoogleMapWrapper;)Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapView$1;->val$callback:Lcom/parrot/freeflight/map/IOnMapReadyCallback;

    iget-object v1, p0, Lcom/parrot/freeflight/map/google/GoogleMapView$1;->this$0:Lcom/parrot/freeflight/map/google/GoogleMapView;

    invoke-static {v1}, Lcom/parrot/freeflight/map/google/GoogleMapView;->access$000(Lcom/parrot/freeflight/map/google/GoogleMapView;)Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IOnMapReadyCallback;->onMapReady(Lcom/parrot/freeflight/map/IMap;)V

    .line 77
    return-void
.end method
