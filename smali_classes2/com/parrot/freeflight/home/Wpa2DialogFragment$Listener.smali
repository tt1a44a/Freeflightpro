.class interface abstract Lcom/parrot/freeflight/home/Wpa2DialogFragment$Listener;
.super Ljava/lang/Object;
.source "Wpa2DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/Wpa2DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onConnectToDrone(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;Ljava/lang/String;)V
    .param p1    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
