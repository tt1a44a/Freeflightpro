.class public interface abstract Lcom/parrot/freeflight/location/SmartLocationManager$Listener;
.super Ljava/lang/Object;
.source "SmartLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/SmartLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onControllerLocationChanged(Landroid/location/Location;)V
.end method

.method public abstract onHomeLocationChanged(Landroid/location/Location;)V
.end method

.method public abstract onRotationChanged(F)V
.end method

.method public abstract onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method
