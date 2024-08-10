.class Lcom/parrot/freeflight/map/PreloadMapManager$3;
.super Ljava/lang/Object;
.source "PreloadMapManager.java"

# interfaces
.implements Lcom/parrot/freeflight/map/ICameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/PreloadMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/PreloadMapManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/PreloadMapManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/PreloadMapManager;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$3;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$3;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$100(Lcom/parrot/freeflight/map/PreloadMapManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$3;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v0, v0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$3;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v0, v0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setOnCameraIdleListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/map/PreloadMapManager$3;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    iget-object v0, v0, Lcom/parrot/freeflight/map/PreloadMapManager;->mMap:Lcom/parrot/freeflight/map/IMap;

    iget-object v1, p0, Lcom/parrot/freeflight/map/PreloadMapManager$3;->this$0:Lcom/parrot/freeflight/map/PreloadMapManager;

    invoke-static {v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->access$700(Lcom/parrot/freeflight/map/PreloadMapManager;)Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/map/IMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 116
    :cond_0
    return-void
.end method
