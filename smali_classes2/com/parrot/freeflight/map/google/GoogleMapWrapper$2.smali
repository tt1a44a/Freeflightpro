.class Lcom/parrot/freeflight/map/google/GoogleMapWrapper$2;
.super Ljava/lang/Object;
.source "GoogleMapWrapper.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/google/GoogleMapWrapper;->setOnCameraMoveListener(Lcom/parrot/freeflight/map/ICameraChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

.field final synthetic val$listener:Lcom/parrot/freeflight/map/ICameraChangeListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/google/GoogleMapWrapper;Lcom/parrot/freeflight/map/ICameraChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$2;->this$0:Lcom/parrot/freeflight/map/google/GoogleMapWrapper;

    iput-object p2, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$2;->val$listener:Lcom/parrot/freeflight/map/ICameraChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraMove()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/map/google/GoogleMapWrapper$2;->val$listener:Lcom/parrot/freeflight/map/ICameraChangeListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/map/ICameraChangeListener;->onCameraChanged()V

    .line 142
    return-void
.end method
