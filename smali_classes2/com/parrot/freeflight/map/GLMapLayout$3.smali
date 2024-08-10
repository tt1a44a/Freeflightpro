.class Lcom/parrot/freeflight/map/GLMapLayout$3;
.super Ljava/lang/Object;
.source "GLMapLayout.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/GLMapLayout;->setIMap(Lcom/parrot/freeflight/map/IMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/GLMapLayout;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/GLMapLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/GLMapLayout;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLMapLayout$3;->this$0:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLMapLayout$3;->this$0:Lcom/parrot/freeflight/map/GLMapLayout;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/GLMapLayout;->notifyOnMapLongClickListeners(Lcom/google/android/gms/maps/model/LatLng;)Z

    .line 114
    return-void
.end method
