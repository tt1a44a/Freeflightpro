.class public interface abstract Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickEventListener;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JoystickEventListener"
.end annotation


# virtual methods
.method public abstract onJoystickEvent(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;II)Z
    .param p1    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
