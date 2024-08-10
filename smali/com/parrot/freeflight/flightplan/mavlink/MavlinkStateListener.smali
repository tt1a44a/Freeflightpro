.class public interface abstract Lcom/parrot/freeflight/flightplan/mavlink/MavlinkStateListener;
.super Ljava/lang/Object;
.source "MavlinkStateListener.java"


# virtual methods
.method public abstract onCreateMavlinkFileToSend(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onMavlinkStateChanged(I)V
.end method
