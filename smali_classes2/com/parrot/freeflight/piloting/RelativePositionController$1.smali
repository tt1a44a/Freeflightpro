.class Lcom/parrot/freeflight/piloting/RelativePositionController$1;
.super Ljava/lang/Object;
.source "RelativePositionController.java"

# interfaces
.implements Lcom/parrot/freeflight/location/SmartLocationManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/RelativePositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/RelativePositionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/RelativePositionController;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/RelativePositionController$1;->this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController$1;->this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->updateControllerLocation(Landroid/location/Location;)V

    .line 269
    return-void
.end method

.method public onHomeLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController$1;->this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->access$000(Lcom/parrot/freeflight/piloting/RelativePositionController;Landroid/location/Location;)V

    .line 274
    return-void
.end method

.method public onRotationChanged(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/RelativePositionController$1;->this$0:Lcom/parrot/freeflight/piloting/RelativePositionController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/RelativePositionController;->updateControllerRotation(F)V

    .line 279
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 284
    return-void
.end method
