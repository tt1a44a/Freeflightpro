.class public interface abstract Lcom/parrot/freeflight/home/WifiListAdapter$OnForgetDroneClickListener;
.super Ljava/lang/Object;
.source "WifiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/WifiListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnForgetDroneClickListener"
.end annotation


# virtual methods
.method public abstract onForgetDroneClick(Lcom/parrot/freeflight/wifi/DroneConnectionInfo;)V
    .param p1    # Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
