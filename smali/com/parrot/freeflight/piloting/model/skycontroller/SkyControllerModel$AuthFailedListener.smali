.class public interface abstract Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AuthFailedListener;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthFailedListener"
.end annotation


# virtual methods
.method public abstract onAuthFailed(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V
    .param p1    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
