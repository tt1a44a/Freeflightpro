.class Lcom/parrot/freeflight/core/model/DroneModel$1;
.super Ljava/lang/Object;
.source "DroneModel.java"

# interfaces
.implements Lcom/parrot/freeflight/location/SmartLocationManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DroneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DroneModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DroneModel$1;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$1;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v0, v0, Lcom/parrot/freeflight/core/model/DroneModel;->mControllerLocation:Landroid/location/Location;

    if-eq v0, p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$1;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    iput-object p1, v0, Lcom/parrot/freeflight/core/model/DroneModel;->mControllerLocation:Landroid/location/Location;

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$1;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->userChangedUserGPSData()V

    .line 152
    :cond_0
    return-void
.end method

.method public onHomeLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 157
    return-void
.end method

.method public onRotationChanged(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 162
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 167
    return-void
.end method
