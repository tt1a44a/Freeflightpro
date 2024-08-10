.class Lcom/parrot/freeflight/tapmode/TapModeMapActionController$1;
.super Ljava/lang/Object;
.source "TapModeMapActionController.java"

# interfaces
.implements Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/tapmode/TapModeMapActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$1;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/tapmode/TapModeMapActionController$1;->this$0:Lcom/parrot/freeflight/tapmode/TapModeMapActionController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/tapmode/TapModeMapActionController;->access$000(Lcom/parrot/freeflight/tapmode/TapModeMapActionController;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    return v0
.end method
