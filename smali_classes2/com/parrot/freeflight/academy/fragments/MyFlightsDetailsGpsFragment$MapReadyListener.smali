.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;
.super Ljava/lang/Object;
.source "MyFlightsDetailsGpsFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/map/IOnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapReadyListener"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;->mFragment:Ljava/lang/ref/WeakReference;

    .line 413
    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/parrot/freeflight/map/IMap;)V
    .locals 2
    .param p1, "map"    # Lcom/parrot/freeflight/map/IMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 418
    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$MapReadyListener;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .line 419
    .local v0, "fragment":Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    if-eqz v0, :cond_0

    .line 420
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->access$500(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;Lcom/parrot/freeflight/map/IMap;)V

    .line 422
    :cond_0
    return-void
.end method
