.class public interface abstract Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$AppEventListener;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppEventListener"
.end annotation


# virtual methods
.method public abstract onAppEvent(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;)Z
    .param p1    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_BUTTON_ACTION_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
