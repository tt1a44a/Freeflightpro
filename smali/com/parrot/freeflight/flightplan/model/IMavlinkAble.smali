.class public interface abstract Lcom/parrot/freeflight/flightplan/model/IMavlinkAble;
.super Ljava/lang/Object;
.source "IMavlinkAble.java"


# virtual methods
.method public abstract createMissionItem()Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract initWithMissionItem(Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;)V
    .param p1    # Lcom/parrot/arsdk/armavlink/ARMavlinkMissionItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
